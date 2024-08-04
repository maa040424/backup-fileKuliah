#include <iostream>
#include <string>
using namespace std;

int main (){
	int age = 20; //bila ingin variablenya langsung di inisialisasi harus seperti ini ya 
	float salary = 3500.50; //float harus pakai titik (.) bukan koma (,)
	double pi = 3.1415926535; // sama juga bilangan pecahan itu pakai titik untuk memisahkannya 
	char grade = 'A'; 
	bool isStudent = true; // boolean itu  bersifat true dan false atau 1 dan 0. kalo tidak true berarti false
	string name = "Muhammad Adam Alghifari"; //string itu bisa pakai petik dua("___") bisa juga petik satu ('---')
	// nah saatnya bagian output 
	
	cout << "Nama :" << name << endl;
	cout << "Usia :" << age << endl;
	cout << "Salary :" << salary << endl;
	cout << "Phi/Pi :" << pi << endl;
	cout << "Grade :" << grade << endl;
	cout << "Is Student :" << (isStudent ? "Yes" : "No") << endl; //pada bagian output boolean itu pakai kek gini ya 
	
	
	 
}