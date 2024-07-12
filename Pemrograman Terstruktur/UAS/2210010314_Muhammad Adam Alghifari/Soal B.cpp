#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

struct Mobil {
    string kode;
    string nama;
    int tahun;
    double hargaPerHari;
};

struct KodePromo {
    string kode;
    double potongan;
    double minimalTransaksi;
};

struct TransaksiTerakhir {
    string namaPenyewa;
    string tanggalSewa;
    string kodeMobil;
    string namaMobil;
    double biayaPerHari;
    int lamaSewa;
    double subtotal;
    double pajak;
    double totalSetelahPajak;
    string kodePromo;
    double potongan;
    double totalKeseluruhan;
};

void tampilkanMenuUtama(bool isOwner) {
    cout << "Menu Utama:\n";
    if (isOwner) {
        cout << "1. Cetak Transaksi Terakhir\n";
    } else {
        cout << "1. Input Transaksi\n";
        cout << "2. Cetak Transaksi Terakhir\n";
    }
    cout << "3. Keluar\n";
    cout << "Pilihan: ";
}

string inputTanggalSewa() {
    string tanggalSewa;
    cout << "Masukkan Tanggal Sewa (MM/DD/YYYY): ";
    cin >> tanggalSewa;
    return tanggalSewa;
}

double hitungPotongan(string kodePromo, double totalSetelahPajak) {
    if (kodePromo == "HEMAT01" && totalSetelahPajak >= 1100000) {
        return 0.1 * totalSetelahPajak;
    } else if (kodePromo == "HEMAT02" && totalSetelahPajak >= 1500000) {
        return 0.15 * totalSetelahPajak;
    } else if (kodePromo == "HEMAT03" && totalSetelahPajak >= 2500000) {
        return 0.2 * totalSetelahPajak;
    } else {
        return 0.0;
    }
}

void inputTransaksi(Mobil mobil[], KodePromo kodePromo[], TransaksiTerakhir &transaksi) {
	cout << "\nData Transaksi Pembayaran Rental di RENTAL FTI UNISKA\n";
    cout << "==========================================================\n";
    cout << "Masukkan Nama Penyewa: ";
    cin.ignore();
    getline(cin, transaksi.namaPenyewa);

    cout << "Masukkan Kode Mobil: ";
    cin >> transaksi.kodeMobil;

    for (int i = 0; i < 5; i++) {
        if (mobil[i].kode == transaksi.kodeMobil) {
            transaksi.namaMobil = mobil[i].nama;
            transaksi.biayaPerHari = mobil[i].hargaPerHari;
            break;
        }
    }

    cout << "Masukkan Lama Sewa (hari): ";
    cin >> transaksi.lamaSewa;
    transaksi.tanggalSewa = inputTanggalSewa();

    cout << "Masukkan Kode Promo (jika tidak ada, kosongkan): ";
    cin >> transaksi.kodePromo;

    transaksi.subtotal = transaksi.biayaPerHari * transaksi.lamaSewa;
    transaksi.pajak = 0.11 * transaksi.subtotal;
    transaksi.totalSetelahPajak = transaksi.subtotal + transaksi.pajak;
    transaksi.potongan = hitungPotongan(transaksi.kodePromo, transaksi.totalSetelahPajak);
    transaksi.totalKeseluruhan = transaksi.totalSetelahPajak - transaksi.potongan;
}

void cetakTransaksiTerakhir(TransaksiTerakhir transaksi) {
    if (transaksi.namaPenyewa.empty()) {
        cout << "Belum Ada Data Transaksi Pembayaran.\n";
    } else {
        cout << "\nData Transaksi Pembayaran Rental di RENTAL FTI UNISKA\n";
        cout << "==========================================================\n";
        cout << "Nama Penyewa\t\t:" << transaksi.namaPenyewa << endl;
        cout << "Tanggal Menyewa\t\t: " << transaksi.tanggalSewa << endl;
        cout << "Lama Menyewa\t\t:" << transaksi.lamaSewa << endl;
        cout << "Kode Mobil\t\t:" << transaksi.kodeMobil << endl;
        cout << "Nama Mobil\t\t:" << transaksi.namaMobil << endl;
        cout << "Biaya Per Hari\t\t:" << fixed << setprecision(2) << transaksi.biayaPerHari << endl;
        cout << "Subtotal\t\t:" << fixed << setprecision(2) << transaksi.subtotal << endl;
        cout << "Pajak 11%\t\t:" << fixed << setprecision(2) << transaksi.pajak << endl;
        cout << "Total Setelah Pajak\t:" << fixed << setprecision(2) << transaksi.totalSetelahPajak << endl;
        cout << "Kode Promo\t\t:" << transaksi.kodePromo << endl;
        cout << "Potongan\t\t:" << fixed << setprecision(2) << transaksi.potongan << endl;
        cout << "Total Keseluruhan\t:" << fixed << setprecision(2) << transaksi.totalKeseluruhan << endl;
    }
}

int main() {
    Mobil mobil[5] = {
        {"MPV-1", "Toyota Avanza 2015", 2015, 300000},
        {"MPV-2", "Daihatsu Xenia 2016", 2016, 320000},
        {"CTY-1", "Daihatsu Ayla 2017", 2017, 230000},
        {"CTY-2", "Honda Brio 2015", 2015, 250000},
        {"HMPV-1", "Toyota Alphard 2015", 2015, 1200000}
    };

    KodePromo kodePromo[3] = {
        {"HEMAT01", 0.1, 1100000},
        {"HEMAT02", 0.15, 1500000},
        {"HEMAT03", 0.2, 2500000}
    };

    TransaksiTerakhir transaksi;
    bool isOwner = false;
    string username, password;

    int kesalahan = 0;

    do {
    	cout << " PROGRAM TRANSAKSI RENTAL DI RENTAL FTI UNISKA\n ";
    	cout << "=================================================\n ";
        cout << "Masukkan username: ";
        cin >> username;
        cout << " Masukkan password: ";
        cin >> password;

        if ((username == "admin" && password == "admin123") || (username == "owner" && password == "owner123")) {
            isOwner = (username == "owner");
            break;
        } else {
            kesalahan++;
            cout << "Login gagal. Kesempatan login tersisa: " << 3 - kesalahan << endl;
        }
    } while (kesalahan < 3);

    int pilihan;

    do {
        tampilkanMenuUtama(isOwner);
        cin >> pilihan;

        switch (pilihan) {
            case 1:
                if (isOwner) {
                    cetakTransaksiTerakhir(transaksi);
                } else {
                    inputTransaksi(mobil, kodePromo, transaksi);
                    cetakTransaksiTerakhir(transaksi);
                }
                break;
            case 2:
                cetakTransaksiTerakhir(transaksi);
                break;
            case 3:
                cout << "Terima kasih. Program akan keluar.\n";
                break;
            default:
                cout << "Pilihan tidak valid. Silakan pilih 1-3.\n";
        }

        if (pilihan != 3) {
            char lanjut;
            cout << "Ulang lagi(y/t): ";
            cin >> lanjut;

            if (lanjut != 'y' && lanjut != 'Y') {
                break;
            }
        }

    } while (pilihan != 3);

    return 0;
}
