#include <iostream>
using namespace std;

int main() {
	cout<< "+==============================+"<<endl;
	cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
	cout<< "|Npm  : 2210010314             |"<<endl;
	cout<< "+==============================+"<<endl;

    float input_pertama, input_kedua;
    cout << "Masukkan nilai pertama: ";
    cin >> input_pertama;
    cout << "Masukkan nilai kedua: ";
    cin >> input_kedua;

    float hasil_jumlah = input_pertama + input_kedua;
    float hasil_kurang = input_pertama - input_kedua;
    float hasil_kali = input_pertama * input_kedua;

    if (input_kedua != 0) {
        float hasil_bagi = input_pertama / input_kedua;
        cout << "Hasil Bagi: " << hasil_bagi << endl;
    } else {
        cout << "Tidak dapat melakukan pembagian dengan nol." << endl;
    }

    cout << "Hasil Jumlah: " << hasil_jumlah << endl;
    cout << "Hasil Kurang: " << hasil_kurang << endl;
    cout << "Hasil Kali: " << hasil_kali << endl;

    return 0;
}