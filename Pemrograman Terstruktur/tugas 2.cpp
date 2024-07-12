#include <iostream>
using namespace std;

int main() {
    // biodata
    cout << "+==============================+" << endl;
    cout << "| Nama : Muhammad Adam Alghifari|" << endl;
    cout << "| NPM  : 2210010314             |" << endl;
    cout << "+==============================+" << endl;

    // Harga satuan dan harga selusin pulpen
    int hargaSatuan = 10000;
    int hargaSelusin = 100000;

    // Variabel untuk jumlah pulpen yang dibeli
    int jumlahPulpen;

    cout << "Masukkan jumlah pulpen yang dibeli: ";
    cin >> jumlahPulpen;

    // Hitung jumlah pulpen selusin
    int pulpenSelusin = 12;

    int jumlahSelusin = jumlahPulpen / pulpenSelusin;
    int sisaPulpen = jumlahPulpen % pulpenSelusin;

    // Hitung total bayar
    int totalBayar = (jumlahSelusin * hargaSelusin) + (sisaPulpen * hargaSatuan);

    // Menampilkan informasi tentang pembelian
    cout << "Anda telah membeli " << jumlahPulpen << " pulpen." << endl;
    cout << "Jumlah selusin pulpen: " << jumlahSelusin << " selusin." << endl;
    cout << "Total yang harus dibayar: Rp " << totalBayar << endl;

    return 0;
}
