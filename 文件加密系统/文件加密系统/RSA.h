#pragma once
#define BOOST_NO_CXX11_VARIADIC_TEMPLATES
#include <iostream>
#include <fstream>
#include <time.h>
#include <boost/multiprecision/cpp_int.hpp>//����
#include <boost/multiprecision/random.hpp>//���������
#include <boost/multiprecision/miller_rabin.hpp>//�������Լ��

using namespace std;

typedef boost::multiprecision::cpp_int DataType;
#define NUM 256

struct Key
{
	DataType m_EKey;
	DataType m_DKey;
	DataType m_NKey;
};

//1�����������������p��q
//2������n ����n = p * q
//3����n��ŷ������������f(n) = f(p) * f(q) = (p - 1)*(q - 1)
//4�����ȡe  1 < e < f(n) ��e �� f(n)����
//5������e����f(n)��ģ��Ԫ��d (d * e) % f(n) = 1
//6��������Կ(e, n) ˽Կ(d, n)

class RSA
{
public:
	RSA();
	//1�����������������p��q
	DataType getPrime();
	//�������Լ��
	bool isPrimeBigNum(DataType data);
	//2������n ����n = p * q
	DataType getNkey(DataType prime1, DataType prime2);
	//3����n��ŷ������������f(n) = f(p) * f(q) = (p - 1)*(q - 1)
	DataType getOrla(DataType prime1, DataType prime2);
	//4����EKey���ȡe  1 < e < f(n) ��e �� f(n)����
	DataType getEKey(DataType orla);
	//5����DKey����e����f(n)��ģ��Ԫ��d (d * e) % f(n) = 1
	DataType getDKey(DataType EKey, DataType orla);
	//���ܹ��̣�ģ������ ��a^b%c
	DataType encryption(DataType data, DataType EKey, DataType NKey);
	//���ܹ��̣�ģ������ ��a^b%c
	DataType decryption(DataType data, DataType DKey, DataType NKey);
	//�������������Լ��
	DataType getCommonDivisor(DataType data1, DataType data2);
	//��չŷ������㷨
	DataType getGcd(DataType a, DataType b, DataType& x, DataType& y);
	//�������е�key
	void getKeys();
	Key getKey();
	//�ļ�����
	void encryptionFile(const char* filename, const char* fileout);
	//�ļ�����
	void decryptionFile(const char* filename, const char* fileout);
private:
	Key m_Key;
};