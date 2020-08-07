#pragma once
#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <string>
#include <unordered_map>
#include <boost/filesystem.hpp>
#include <boost/algorithm/string.hpp>

using namespace std;

#define LISTEN_DIR "./backup/"
#define STORAGE_FILE "./list.backup"
#define SERVER_IP "192.168.30.141"
#define SERVER_PORT 9000


class FileUtil
{
public:
	//从文件中读取内容
	static bool Read(const string& name, string* body);
	//向文件中写入数据
	static bool Write(const string& name, const string& body);
};

class DataManager
{
public:
	DataManager(const string& filename);
	//插入或更新数据
	bool Insert(const string& key, const string& value);
	//根据文件名获取etag信息
	bool GetEtag(const string& key, string* value);
	//持久化存储
	bool Storage();
	//初始化加载原有数据
	bool InitLoad();
private:
	string m_file_list; //持久化存储文件
	unordered_map<string, string> m_backup_list;//备份的文件信息
};
//目录监控模块
class CloudClient
{
public:
	CloudClient(const string& filename, const string& storage_file, const string& server_ip, uint16_t server_port);
	bool Start();
	//获取需要备份的文件列表
	bool GetBackUpFileList(vector<string>* list);
	//计算文件的eatg信息
	static bool GetEtag(const string& pathname, string* etag);
private:
	string m_listen_dir;//监控的目录名称
	string m_storage_file;
	string m_server_ip;
	uint16_t m_server_port;
};
