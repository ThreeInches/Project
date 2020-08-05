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
	//���ļ��ж�ȡ����
	static bool Read(const string& name, string* body);
	//���ļ���д������
	static bool Write(const string& name, const string& body);
};

class DataManager
{
public:
	DataManager(const string& filename);
	//������������
	bool Insert(const string& key, const string& value);
	//�����ļ�����ȡetag��Ϣ
	bool GetEtag(const string& key, string* value);
	//�־û��洢
	bool Storage();
	//��ʼ������ԭ������
	bool InitLoad();
private:
	string m_file_list; //�־û��洢�ļ�
	unordered_map<string, string> m_backup_list;//���ݵ��ļ���Ϣ
};
//Ŀ¼���ģ��
class CloudClient
{
public:
	CloudClient(const string& filename, const string& storage_file, const string& server_ip, uint16_t server_port);
	bool Start();
	//��ȡ��Ҫ���ݵ��ļ��б�
	bool GetBackUpFileList(vector<string>* list);
	//�����ļ���eatg��Ϣ
	static bool GetEtag(const string& pathname, string* etag);
private:
	string m_listen_dir;//��ص�Ŀ¼����
	string m_storage_file;
	string m_server_ip;
	uint16_t m_server_port;
};
