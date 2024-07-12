#include <iostream>
#include <cmath>

using namespace std;

bool login() {
    int attempts = 0;
    const int max_attempts = 3;
    string user = "admin";
    string pass = "admin";

    while (attempts < max_attempts) {
        string username, password;
        
		
        cout << "Masukkan Username: ";
        cin >> username;
        cout << "Masukkan Password: ";
        cin >> password;

        if (username == user && password == pass) {
            return true;
        } else {
            attempts++;
            cout << "Username atau password salah. Kesempatan tersisa: " << max_attempts - attempts << endl;
        }
    }

    cout << "Batas percobaan login tercapai. Program berhenti." << endl;
    return false;
}

void showMenu() {
    cout << "+====================================+" << endl;
    cout << "|            Pilih Menu              |" << endl;
    cout << "|====================================|" << endl;
    cout << "| 1. Penjumlahan                     |" << endl;
    cout << "| 2. Lingkaran                       |" << endl;
    cout << "| 3. Konversi Celcius                |" << endl;
    cout << "| 4. Persegi Panjang                 |" << endl;
    cout << "| 5. Konversi Satuan Berat (Kg ke G) |" << endl;
    cout << "| 6. Konversi Satuan Panjang (M ke KM) |" << endl;
    cout << "+====================================+" << endl;
}

int main() {
    if (!login()) {
        return 0;
    }

    int pilih;
    char lanjut;
    do {
    	
        showMenu();
        cout << "Pilih Menu: ";
        cin >> pilih;

        if (pilih == 1) {
   			 double input_pertama, input_kedua;  
   			 cout << "Masukkan nilai pertama: ";
    		 cin >> input_pertama;
    		 cout << "Masukkan nilai kedua: ";
    		 cin >> input_kedua;
    		 double hasil = input_pertama + input_kedua;
    		 cout << "Hasil Dari Penjumlahan : " << hasil << endl;
    		 
		} else if (pilih == 2) {
            const double PI = 3.14; 
            double jariJari;
            double lL, kL;
            cout << "Masukkan jari-jari lingkaran: ";
            cin >> jariJari;
            lL = PI * pow(jariJari, 2);
            kL = 2 * PI * jariJari;
            cout << "Luas lingkaran: " << lL << endl;
            cout << "Keliling lingkaran: " << kL << endl;

        } else if (pilih == 3) {
            double celcius, fahrenheit, reamur, kelvin;
            cout << "Masukkan suhu dalam Celcius: ";
            cin >> celcius;

            fahrenheit = (celcius * 9/5) + 32;
            reamur = celcius * 4/5;
            kelvin = celcius + 273.15;

            cout << "Konversi suhu:" << endl;
            cout << "Fahrenheit: " << fahrenheit << endl;
            cout << "Reamur: " << reamur << endl;
            cout << "Kelvin: " << kelvin << endl;

        } else if (pilih == 4) {
            
            double panjang, lebar, luasPP, kelilingPP;
            cout << "Masukkan panjang persegi panjang: ";
            cin >> panjang;
            cout << "Masukkan lebar persegi panjang: ";
            cin >> lebar;

            luasPP = panjang * lebar;
            kelilingPP = 2 * (panjang + lebar);

            cout << "Luas persegi panjang: " << luasPP << endl;
            cout << "Keliling persegi panjang: " << kelilingPP << endl;

        } else if (pilih == 5) {
            
            double kg, gram;
            cout << "Masukkan berat dalam kilogram: ";
            cin >> kg;

            gram = kg * 1000;

            cout << "Konversi berat ke gram: " << gram << " gram" << endl;

        }  else if (pilih == 6) {
            
            double km, m;
            cout << "Masukkan Satuan Panjang Meter Ke Kilo Meter: ";
            cin >> m;

            km = m / 1000;

            cout << "Konversi Panjang Kilo Meter : " << km << " Km" << endl;
        } else {
            cout << "Pilihan tidak valid." << endl;
		}
        
        cout << "Lanjutkan menggunakan program? (Y/T): ";
        cin >> lanjut;

    } while (lanjut == 'Y' || lanjut == 'y');

    cout << "Program berhenti." << endl;

    return 0;
}

