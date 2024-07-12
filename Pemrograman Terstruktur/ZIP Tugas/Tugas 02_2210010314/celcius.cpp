#include <iostream>
using namespace std;

int main() {
	cout<< "+==============================+"<<endl;
	cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
	cout<< "|Npm  : 2210010314             |"<<endl;
	cout<< "+==============================+"<<endl;
    double suhuCelcius, suhuFahrenheit;

    // Meminta pengguna untuk memasukkan suhu dalam Celcius
    cout << "Masukkan suhu dalam Celcius: ";
    cin >> suhuCelcius;

    // Mengonversi suhu dari Celcius ke Fahrenheit
    suhuFahrenheit = (suhuCelcius * 9/5) + 32;

    // Menampilkan hasil konversi
    cout << "Suhu dalam Fahrenheit: " << suhuFahrenheit << " derajat Fahrenheit" << endl;

    return 0;
}
