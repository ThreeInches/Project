#include "cloud_backup.hpp"
#include "httplib.h"

//从文件中读取数据
static bool Read(const string& name, string* body)
{
	ifstream fs(name, ios::binary);
	if (fs.is_open() == false)
	{
		cout << "open file " << name << " failed" << endl;
		return false;
	}
	//获取文件大小
	int64_t fsize = boost::filesystem::file_size(name);
	body->resize(fsize);
	fs.read(&(*body)[0], fsize);
	if (fs.good() == false)
	{
		cout << "file " << name << " read data failed!" << endl;
		return false;
	}
	fs.close();
	return true;
}

//向文件中写入数据
static bool Write(const string& name, const string& body)
{
	ofstream ofs(name, ios::binary);
	if (ofs.is_open() == false)
	{
		cout << "open file " << name << " failed!" << endl;
		return false;
	}
	ofs.write(&body[0], body.size());
	if (ofs.good() == false)
	{
		cout << "file " << name << " write data failed!" << endl;
		return false;
	}
	ofs.close();
	return true;
}

DataManager::DataManager(const string& filename)
	:m_file_list(filename)
{

}

//插入或更新数据
bool DataManager::Insert(const string& key, const string& value)
{
	m_backup_list[key] = value;
	Storage();
	return true;
}

//根据文件名获取etag信息
bool DataManager::GetEtag(const string& key, string* value)
{
	auto it = m_backup_list.find(key);
	if (it == m_backup_list.end())
	{
		return false;
	}
	*value = it->second;
	return true;
}

//持久化存储
bool DataManager::Storage()
{
	//数据对象的序列化存储
	stringstream tmp;
	for (auto it = m_backup_list.begin(); it != m_backup_list.end(); it++)
	{
		tmp << it->first << " " << it->second << "\r\n";
	}
	FileUtil::Write(m_file_list, tmp.str());
	return true;
}
 
//初始化加载原有数据
bool DataManager::InitLoad()
{
	string body;
	if (FileUtil::Read(m_file_list, &body) == false)
	{
		return false;
	}

	vector<string> list;
	boost::split(list, body, boost::is_any_of("\r\n"), boost::token_compress_off);
	for (auto& i : list)
	{
		size_t pos = i.find(" ");
		if (pos == string::npos)
		{
			continue;
		}
		string key = i.substr(0, pos);
		string value = i.substr(pos + 1);
		Insert(key, value);
	}
	return true;
}

DataManager data_manager(STORAGE_FILE);

CloudClient::CloudClient(const string& filename, const string& stroage_file, const string& server_ip, uint16_t server_port)
	:m_listen_dir(filename)
	, m_storage_file(stroage_file)
	, m_server_ip(server_ip)
	, m_server_port(server_port)
{

}

bool CloudClient::Start()
{
	data_manager.InitLoad();
	while (1)
	{
		vector<string> list;
		GetBackUpFileList(&list);
		for (int i = 0; i < list.size(); i++)
		{
			string name = list[i];
			string pathname = m_listen_dir + name;
			string body;
			cout << pathname << "is need to backup" << endl;
			FileUtil::Read(pathname, &body);
			httplib::Client client(m_server_ip, m_server_port);
			string req_path = "/" + name;
			auto rsp = client.Put(req_path.c_str(), body, "application/octet-stream");
			if (rsp == NULL || (rsp == NULL && rsp->status != 200))
			{
				cout << pathname << "backup failed" << endl;
				continue;
			}
			string etag;
			GetEtag(pathname, &etag);
			data_manager.Insert(name, etag);

			cout << pathname << "backup success" << endl;
		}
		Sleep(1000);
	}
}

//获取需要备份的文件列表
bool CloudClient::GetBackUpFileList(vector<string>* list)
{
	//若目录不存在则创建目录
	if (boost::filesystem::exists(m_listen_dir) == false)
	{
		boost::filesystem::create_directories(m_listen_dir);
	}
	//进行目录监控，获取指定目录下的所有文件名称
	boost::filesystem::directory_iterator begin(m_listen_dir);
	boost::filesystem::directory_iterator end;
	for (; begin != end; ++begin)
	{
		if (boost::filesystem::is_directory(begin->status()))
		{
			//目录不需要进行备份
			//遇到目录直接跳过，（无层级目录）
			continue;
		}
		string pathname = begin->path().string();
		string name = begin->path().filename().string();
		string cur_etag;
		string old_etag;
		//获取当前etag
		GetEtag(pathname, &cur_etag);
		//获取原有etag
		data_manager.GetEtag(name, &old_etag);
		//当前etag和原有etag不相等，则文件需要备份
		if (cur_etag != old_etag)
		{
			list->push_back(name);
		}
	}
}

//计算文件的eatg信息
static bool GetEtag(const string& pathname, string* etag)
{
	//etag文件大小-文件最后一次修改时间
	int64_t fsize = boost::filesystem::file_size(pathname);
	time_t mtime = boost::filesystem::last_write_time(pathname);
	*etag = to_string(fsize) + "-" + to_string(mtime);
	return true;
}
