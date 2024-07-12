#include <iostream>
#include <iomanip>
#include <cmath>
#include <vector>

using namespace std;

struct Mobil {
    string kode;
    string nama;
    int hargaPerHari;
};

struct Promo {
    string kode;
    double potongan;
    double minimalTransaksi;
};

struct Transaksi {
    string kodeMobil;
    string namaPenyewa;
    int lamaMenyewa;
    string tanggalMenyewa;
    string metodePembayaran;
    double subtotal;
    double pajak;
    double totalSetelahPajak;
    double potongan;
    double totalKeseluruhan;
};

bool login();
void tampilkanMenuUtama(vector<Mobil>& mobilList, vector<Promo>& promoList, vector<Transaksi>& transaksiList);
void inputTransaksi(vector<Mobil>& mobilList, vector<Promo>& promoList, vector<Transaksi>& transaksiList);
void cetakTransaksiTerakhir(const vector<Mobil>& mobilList, const vector<Transaksi>& transaksiList);
double hitungSubtotal(const Mobil& mobil, int lamaMenyewa);
double hitungPajak(double subtotal);
double hitungTotalSetelahPajak(double subtotal, double pajak);
void tampilkanDaftarMobil(const vector<Mobil>& mobilList);
void tampilkanDaftarPromo(const vector<Promo>& promoList);
Mobil dapatkanDataMobil(const vector<Mobil>& mobilList, const string& kode);
Promo dapatkanDataPromo(const vector<Promo>& promoList, const string& kode);

int main() {
    vector<Mobil> mobilList = {
        {"MPV-1", "Toyota Avanza 2015", 300000},
        {"MPV-2", "Daihatsu Xenia 2016", 320000},
        {"CTY-1", "Daihatsu Ayla 2017", 230000},
        {"CTY-2", "Honda Brio 2015", 250000},
        {"HMPV-1", "Toyota Alphard 2015", 1200000}
    };

    vector<Promo> promoList = {
        {"HEMAT01", 0.1, 1100000},
        {"HEMAT02", 0.15, 1500000},
        {"HEMAT03", 0.2, 2500000}
    };

    vector<Transaksi> transaksiList;

    tampilkanMenuUtama(mobilList, promoList, transaksiList);

    return 0;
}

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

void tampilkanMenuUtama(vector<Mobil>& mobilList, vector<Promo>& promoList, vector<Transaksi>& transaksiList) {
    if (!login()) {
        return;
    }

    int pilihan;

    do {
        cout << "=== Menu Utama ===" << endl;
        cout << "1. Input Transaksi" << endl;
        cout << "2. Cetak Transaksi Terakhir" << endl;
        cout << "3. Keluar" << endl;
        cout << "Pilih menu (1-3): ";
        cin >> pilihan;

        switch (pilihan) {
            case 1:
                inputTransaksi(mobilList, promoList, transaksiList);
                break;
            case 2:
                cetakTransaksiTerakhir(mobilList, transaksiList);
                break;
            case 3:
                cout << "Program berakhir. Terima kasih!" << endl;
                break;
            default:
                cout << "Pilihan tidak valid. Silakan pilih lagi." << endl;
        }
    } while (pilihan != 3);
}


void inputTransaksi(vector<Mobil>& mobilList, vector<Promo>& promoList, vector<Transaksi>& transaksiList) {
    Mobil dataMobil;
    Promo dataPromo;
    Transaksi transaksi;

    tampilkanDaftarMobil(mobilList);
    tampilkanDaftarPromo(promoList);

    cout << "Masukkan Kode Mobil: ";
    cin >> transaksi.kodeMobil;

    dataMobil = dapatkanDataMobil(mobilList, transaksi.kodeMobil);

    cout << "Masukkan Nama Penyewa: ";
    cin.ignore();
    getline(cin, transaksi.namaPenyewa);

    cout << "Masukkan Lama Menyewa (hari): ";
    cin >> transaksi.lamaMenyewa;

    cout << "Masukkan Tanggal Menyewa: ";
    cin >> transaksi.tanggalMenyewa;

    cout << "Masukkan Metode Pembayaran: ";
    cin >> transaksi.metodePembayaran;

    transaksi.subtotal = hitungSubtotal(dataMobil, transaksi.lamaMenyewa);
    transaksi.pajak = hitungPajak(transaksi.subtotal);
    transaksi.totalSetelahPajak = hitungTotalSetelahPajak(transaksi.subtotal, transaksi.pajak);

    cout << "Masukkan Kode Promo (jika ada, jika tidak ketik '-'): ";
    string kodePromo;
    cin >> kodePromo;

    if (kodePromo != "-") {
        dataPromo = dapatkanDataPromo(promoList, kodePromo);
        transaksi.potongan = dataPromo.potongan;
    } else {
        transaksi.potongan = 0.0;
    }

    transaksi.totalKeseluruhan = transaksi.totalSetelahPajak - transaksi.potongan;

    cout << "\n=== Output Transaksi ===" << endl;
    cout << "Kode Mobil: " << transaksi.kodeMobil << endl;
    cout << "Nama Penyewa: " << transaksi.namaPenyewa << endl;
    cout << "Lama Menyewa: " << transaksi.lamaMenyewa << " hari" << endl;
    cout << "Tanggal Menyewa: " << transaksi.tanggalMenyewa << endl;
    cout << "Metode Pembayaran: " << transaksi.metodePembayaran << endl;
    cout << "Nama Mobil: " << dataMobil.nama << endl;
    cout << "Harga Per Hari: " << dataMobil.hargaPerHari << endl;
    cout << "Subtotal: " << transaksi.subtotal << endl;
    cout << "Pajak: " << transaksi.pajak << endl;
    cout << "Total Setelah Pajak: " << transaksi.totalSetelahPajak << endl;
    cout << "Potongan: " << transaksi.potongan << endl;
    cout << "Total Keseluruhan: " << transaksi.totalKeseluruhan << endl;

    char lanjut;
    cout << "\nLanjutkan? (y/n): ";
    cin >> lanjut;

    if (lanjut == 'y' || lanjut == 'Y') {
        tampilkanMenuUtama();
    }
}

void cetakTransaksiTerakhir(const vector<Mobil>& mobilList, const vector<Transaksi>& transaksiList) {
    if (transaksiList.empty()) {
        cout << "Belum Ada Data Transaksi Pembayaran." << endl;
    } else {
        cout << "\n=== Transaksi Terakhir ===" << endl;
        const Transaksi& transaksiTerakhir = transaksiList.back();
        cout << "Kode Mobil: " << transaksiTerakhir.kodeMobil << endl;
        cout << "Nama Penyewa: " << transaksiTerakhir.namaPenyewa << endl;
        cout << "Lama Menyewa: " << transaksiTerakhir.lamaMenyewa << " hari" << endl;
        cout << "Tanggal Menyewa: " << transaksiTerakhir.tanggalMenyewa << endl;
        cout << "Metode Pembayaran: " << transaksiTerakhir.metodePembayaran << endl;

        const Mobil& mobil = dapatkanDataMobil(mobilList, transaksiTerakhir.kodeMobil);
        cout << "Nama Mobil: " << mobil.nama << endl;
        cout << "Harga Per Hari: " << mobil.hargaPerHari << endl;

        cout << "Subtotal: " << transaksiTerakhir.subtotal << endl;
        cout << "Pajak: " << transaksiTerakhir.pajak << endl;
        cout << "Total Setelah Pajak: " << transaksiTerakhir.totalSetelahPajak << endl;
        cout << "Potongan: " << transaksiTerakhir.potongan << endl;
        cout << "Total Keseluruhan: " << transaksiTerakhir.totalKeseluruhan << endl;
    }

    char lanjut;
    cout << "\nLanjutkan? (y/n): ";
    cin >> lanjut;

    if (lanjut == 'y' || lanjut == 'Y') {
        tampilkanMenuUtama();
    }
}

double hitungSubtotal(const Mobil& mobil, int lamaMenyewa) {
    return mobil.hargaPerHari * lamaMenyewa;
}

double hitungPajak(double subtotal) {
    return 0.11 * subtotal;
}

double hitungTotalSetelahPajak(double subtotal, double pajak) {
    return subtotal + pajak;
}

void tampilkanDaftarMobil(const vector<Mobil>& mobilList) {
    cout << "\n=== Daftar Mobil ===" << endl;
    for (const Mobil& mobil : mobilList) {
        cout << "| Kode: " << setw(7) << left << mobil.kode
             << "| Nama: " << setw(25) << left << mobil.nama
             << "| Harga: " << setw(10) << left << mobil.hargaPerHari
             << "|" << endl;
    }
}

void tampilkanDaftarPromo(const vector<Promo>& promoList) {
    cout << "\n=== Daftar Promo ===" << endl;
    for (const Promo& promo : promoList) {
        cout << "| Kode: " << setw(8) << left << promo.kode
             << "| Potongan: " << setw(5) << left << (promo.potongan * 100) << "%"
             << "| Minimal Transaksi: " << setw(15) << left << promo.minimalTransaksi
             << "|" << endl;
    }
}

Mobil dapatkanDataMobil(const vector<Mobil>& mobilList, const string& kode) {
    for (const Mobil& mobil : mobilList) {
        if (mobil.kode == kode) {
            return mobil;
        }
    }

    return {"", "", 0};
}

Promo dapatkanDataPromo(const vector<Promo>& promoList, const string& kode) {
    for (const Promo& promo : promoList) {
        if (promo.kode == kode) {
            return promo;
        }
    }

    return {"", 0.0, 0.0};
}
