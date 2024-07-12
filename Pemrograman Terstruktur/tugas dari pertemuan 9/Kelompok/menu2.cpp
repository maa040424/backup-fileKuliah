#include <iostream>

using namespace std;

bool login() {
    int attempts = 0;
    const int max_attempts = 3;
    string user = "admin";
    string pass = "admin";

    while (attempts < max_attempts) {
        string username, password;

        cout << "Masukkan username: ";
        cin >> username;
        cout << "Masukkan password: ";
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
    cout << "+=======================+" << endl;
    cout << "| Pilih Menu            |" << endl;
    cout << "|=======================|" << endl;
    cout << "| 1. Penjumlahan        |" << endl;
    cout << "| 2. Menu Lain          |" << endl;
    cout << "| 3. Menu Lain          |" << endl;
    cout << "| 4. Menu Lain          |" << endl;
    cout << "| 5. Menu Lain          |" << endl;
    cout << "+=======================+" << endl;
}

int main() {
    if (!login()) {
        return 0;
    }

    int pilih;
    do {
        showMenu();
        cout << "Pilih Menu: ";
        cin >> pilih;

        if (pilih == 1) {
            int input_pertama, input_kedua;
            cout << "Masukkan nilai pertama: ";
            cin >> input_pertama;
            cout << "Masukkan nilai kedua: ";
            cin >> input_kedua;

            int hasil = input_pertama + input_kedua;
            cout << "Hasil Dari Penjumlahan : " << hasil << endl;
        } else if (pilih == 2) {
            // Tambahkan implementasi untuk menu 2 di sini
        } else if (pilih == 3) {
            // Tambahkan implementasi untuk menu 3 di sini
        } else if (pilih == 4) {
            // Tambahkan implementasi untuk menu 4 di sini
        } else if (pilih == 5) {
            // Tambahkan implementasi untuk menu 5 di sini
        } else {
            cout << "Pilihan tidak valid." << endl;
        }

        // Meminta konfirmasi untuk melanjutkan atau tidak
        cout << "Lanjutkan menggunakan program? (1/0): ";
        cin >> pilih;

    } while (pilih == 1);

    cout << "Program berhenti." << endl;

    return 0;
}
