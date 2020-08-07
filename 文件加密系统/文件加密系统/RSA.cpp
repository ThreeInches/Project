#include "RSA.h"

RSA::RSA()
{
	getKeys();
}

//1�����������������p��q
DataType RSA::getPrime()
{
	boost::random::mt19937 gen(time(nullptr));
	boost::random::uniform_int_distribution<DataType> dist(0, DataType(1) << 256);

	DataType prime;
	while (1)
	{
		prime = dist(gen);
		if (isPrimeBigNum(prime))
		{
			break;
		}
	}

	return prime;
}

//�������Լ��
bool RSA::isPrimeBigNum(DataType data)
{
	boost::random::mt19937 gen(time(nullptr));

	if (miller_rabin_test(data, 25, gen))
	{
		if (miller_rabin_test((data - 1) / 2, 25, gen))
		{
			return true;
		}
	}

	return false;
}

//2������n ����n = p * q
DataType RSA::getNkey(DataType prime1, DataType prime2)
{
	return  prime1 * prime2;
}

//3����n��ŷ������������f(n) = f(p) * f(q) = (p - 1)*(q - 1)
DataType RSA::getOrla(DataType prime1, DataType prime2)
{
	return (prime1 - 1) * (prime2 - 1);
}

//4����EKey���ȡe  1 < e < f(n) ��e �� f(n)����
DataType RSA::getEKey(DataType orla)
{
	boost::random::mt19937 gen(time(nullptr));
	boost::random::uniform_int_distribution<DataType> dist(2, orla);

	DataType EKey;
	while (1)
	{
		EKey = dist(gen);
		if (getCommonDivisor(EKey, orla) == 1)
		{
			return EKey;
		}
	}
}

//5����DKey����e����f(n)��ģ��Ԫ��d (d * e) % f(n) = 1
DataType RSA::getDKey(DataType EKey, DataType orla)
{
	DataType x = 0;
	DataType y = 0;
	getGcd(EKey, orla, x, y);
	return (x%orla + orla) % orla;
}

//���ܹ��̣�ģ������ ��a^b%c
DataType RSA::encryption(DataType data, DataType EKey, DataType NKey)
{
	DataType Ai = data;
	DataType msgE = 1;

	while (EKey)
	{
		if (EKey & 1)
		{
			msgE = (msgE * Ai) % NKey;
		}
		EKey >>= 1;
		Ai = (Ai * Ai) % NKey;
	}

	return msgE;
}

//���ܹ��̣�ģ������ ��a^b%c
DataType RSA::decryption(DataType data, DataType DKey, DataType NKey)
{
	DataType Ai = data;
	DataType msgE = 1;

	while (DKey)
	{
		if (DKey & 1)
		{
			msgE = (msgE * Ai) % NKey;
		}
		DKey >>= 1;
		Ai = (Ai * Ai) % NKey;
	}

	return msgE;
}

//�������������Լ��
DataType RSA::getCommonDivisor(DataType data1, DataType data2)
{
	DataType res = data1%data2;

	while (res)
	{
		data1 = data2;
		data2 = res;
		res = data1%data2;
	}

	return data2;
}

//��չŷ������㷨
DataType RSA::getGcd(DataType a, DataType b, DataType& x, DataType& y)
{
	if (b == 0)
	{
		x = 1;
		y = 0;

		return a;
	}

	DataType gcd = getGcd(b, a%b, x, y);
	DataType x1 = x;
	DataType y1 = y;

	x = y1;
	y = x1 - (a / b) * y1;

	return gcd;
}

//�������е�key
void RSA::getKeys()
{
	DataType prime1 = getPrime();
	DataType prime2 = getPrime();

	while (prime1 == prime2)
	{
		prime2 = getPrime();
	}

	DataType orla = getOrla(prime1, prime2);
	m_Key.m_NKey = getNkey(prime1, prime2);
	m_Key.m_EKey = getEKey(orla);
	m_Key.m_DKey = getDKey(m_Key.m_EKey, orla);
}

Key RSA::getKey()
{
	return m_Key;
}

//�ļ�����
void RSA::encryptionFile(const char* filename, const char* fileout)
{
	ifstream fin(filename, ifstream::binary);
	ofstream fout(fileout, ifstream::binary);

	if (!fin.is_open())
	{
		perror("input file open failed!");
		return;
	}

	char* buffer = new char[NUM];
	DataType* bufferOut = new DataType[NUM];

	while (!fin.eof())
	{
		fin.read(buffer, NUM);
		//gcount�������һ�ζ�ȡ���ֽ���
		int curBytes = fin.gcount();

		for (int i = 0; i < curBytes; i++)
		{
			bufferOut[i] = encryption((DataType)buffer[i], m_Key.m_EKey, m_Key.m_NKey);
		}

		fout.write((char*)bufferOut, curBytes*sizeof(DataType));
	}

	delete[] buffer;
	delete[] bufferOut;

	fin.close();
	fout.close();
}

//�ļ�����
void RSA::decryptionFile(const char* filename, const char* fileout)
{
	ifstream fin(filename, ifstream::binary);
	ofstream fout(fileout, ofstream::binary);

	if (!fin.is_open())
	{
		perror("input file open failed!");
		return;
	}

	DataType* buffer = new DataType[NUM];
	char* bufferOut = new char[NUM];

	while (!fin.eof())
	{
		fin.read((char*)buffer, NUM * sizeof(DataType));
		int num = fin.gcount();
		num /= sizeof(DataType);

		for (int i = 0; i < num; i++)
		{
			bufferOut[i] = (char)decryption(buffer[i], m_Key.m_DKey, m_Key.m_NKey);
		}

		fout.write(bufferOut, num);
	}

	delete[] buffer;
	delete[] bufferOut;

	fin.close();
	fout.close();

}
