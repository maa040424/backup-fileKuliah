#include <iostream>
#include <string>
using namespace std;

int add(int a, int b);

int names(string names);

void printName(string name);

int main (){
	int result = add(5, 3);
	string myName = printName("Muhammad Adam Alghifari");
	int  namaLength = names("Muhammad Adam Alghifari");
	cout << "Nama Saya Adalah : " << myName << endl;
	cout << "Panjang Nama Saya Adalah : " << namaLength << endl;
	cout << "Sum :  " << result << endl;
	return 0;
}

int add (int a, int b){
	return a + b;
}

int names (string names){
	return names.length();
}

void printName(string name){
	return name;
}
