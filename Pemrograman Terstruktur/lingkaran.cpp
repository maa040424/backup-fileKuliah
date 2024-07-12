#include <iostream>
#include <cmath> // Untuk menggunakan nilai PI

using namespace std;

int main() {
	cout<< "+==============================+"<<endl;
	cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
	cout<< "|Npm  : 2210010314             |"<<endl;
	cout<< "+==============================+"<<endl;
    const double PI = 3.14; // Nilai konstanta PI

    double jariJari;
    double luasLingkaran, kelilingLingkaran;

    // Meminta pengguna untuk memasukkan jari-jari lingkaran
    cout << "Masukkan jari-jari lingkaran: ";
    cin >> jariJari;

    // Menghitung luas lingkaran
    luasLingkaran = PI * pow(jariJari, 2);

    // Menghitung keliling lingkaran
    kelilingLingkaran = 2 * PI * jariJari;

    // Menampilkan hasil perhitungan
    cout << "Luas lingkaran: " << luasLingkaran << endl;
    cout << "Keliling lingkaran: " << kelilingLingkaran << endl;

    return 0;
}
