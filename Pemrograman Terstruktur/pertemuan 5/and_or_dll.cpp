#include <iostream>
using namespace std;

int main (){
	int a, b, c, d, e;
	int angkaDesimal;
    cout << "Masukkan angka desimal: ";
    cin >> angkaDesimal;

    int sisa;
    int hasil = 0;
    int pangkatDua = 1;

    while (angkaDesimal > 0) {
        sisa = angkaDesimal % 2;
        angkaDesimal /= 2;
        hasil += sisa * pangkatDua;
        pangkatDua *= 10;
    }

    cout << "Bilangan biner: " << hasil << endl;
	
	
	
	
	
	a = 180 & 165 ;//164
	cout<<"a ="<<a<<endl;
	b = 23 ^ 18;//5
	cout<<"b = "<<b<<endl;
	c = 16 >> 2;
	cout <<"c ="<< c <<endl;
	d = 18 << 2;
	cout <<"d = "<<d<<endl;
	e = 23 & 18;
	cout<< "e = " << e<<endl;
	return 0;
}
