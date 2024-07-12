#include <iostream>
using namespace std;

int main() {
    int saldo = 120000;  

    char lanjut;

    do {
        cout << "\nATM UNISKA\n";
        cout << "------------------------\n";
        cout << "1. CEK SALDO\n";
        cout << "2. SETOR TUNAI\n";
        cout << "3. TARIK TUNAI\n";
        cout << "4. KELUAR\n";
		cout << "------------------------";
        int pilihan;
        cout << "\nPilih Menu [1-4]: ";
        cin >> pilihan;

        if (pilihan == 1) {
            cout << "\nMenu 1:\n";
            cout << "Saldo Anda: " << saldo << endl;
        } else if (pilihan == 2) {
            int setor_tunai;
            cout << "\nMenu 2:\nInput Setor Tunai: ";
            cin >> setor_tunai;
            saldo += setor_tunai;
            cout << "Saldo Anda Sekarang: " << saldo << endl;
        } else if (pilihan == 3) {
            int tarik_tunai;
            cout << "\nMenu 3:\nInput Tarik Tunai: ";
            cin >> tarik_tunai;
            if (tarik_tunai > saldo) {
                cout << "Saldo tidak mencukupi." << endl;
            } else {
                saldo -= tarik_tunai;
                cout << "Saldo Anda Sekarang: " << saldo << endl;
            }
        } else if (pilihan == 4) {
            cout << "\nMenu 4:\n";
            cout << "Terima kasih Menggunakan ATM UNISKA\n";
            break; 
        } else {
            cout << "Pilihan tidak valid. Silakan pilih antara 1-4." << endl;
        }

        cout << "\nTransaksi lagi? (Y/T): ";
        cin >> lanjut;

    } while (lanjut == 'Y' || lanjut == 'y');

    return 0;
}
