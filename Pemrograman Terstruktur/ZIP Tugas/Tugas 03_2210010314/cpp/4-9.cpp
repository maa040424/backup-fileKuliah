#include <iostream>

using namespace std;

int main() {
cout<< "+==============================+"<<endl;
cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
cout<< "|Npm  : 2210010314             |"<<endl;
cout<< "+==============================+"<<endl;	
	
    int a = 181;
    int b = 108;
    int hasil;

    hasil = a & b;
    cout << "Hasil dari a & b : " << hasil << endl;

    hasil = a | b;
    cout << "Hasil dari a | b : " << hasil << endl;

    hasil = a ^ b;
    cout << "Hasil dari a ^ b: " << hasil << endl;

    hasil = ~a;
    cout << "Hasil dari ~a : " << hasil << endl;

    hasil = a >> 1;
    cout << "Hasil dari a >> 1 : " << hasil << endl;

    hasil = b << 2;
    cout << "Hasil dari b << 2 : " << hasil << endl;

    return 0;
}