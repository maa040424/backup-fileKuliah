#include <iostream>

using namespace std;

int main() {
cout<< "+==============================+"<<endl;
cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
cout<< "|Npm  : 2210010314             |"<<endl;
cout<< "+==============================+"<<endl;
	
    int a = 10, b = 5;
    bool hasil;

    cout << "Isi Variabel a: " << a << endl;
    cout << "Isi Variabel b: " << b << endl;

    hasil = a == b;
    cout << "Apakah a == b ? " << hasil << endl;

    hasil = a != b;
    cout << "Apakah a != b ? " << hasil << endl;

    hasil = a > b;
    cout << "Apakah a > b ? " << hasil << endl;

    hasil = a < b;
    cout << "Apakah a < b? " << hasil << endl;

    hasil = a >= b;
    cout << "Apakah a >= b ? " << hasil << endl;

    hasil = a <= b;
    cout << "Apakah a <= b ? " << hasil << endl;

    return 0;
}