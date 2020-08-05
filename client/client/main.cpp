#include "cloud_backup.hpp"

int main()
{
	CloudClient client(LISTEN_DIR, STORAGE_FILE, SERVER_IP, SERVER_PORT);
	client.Start();
	system("pause");
	return 0;
}
