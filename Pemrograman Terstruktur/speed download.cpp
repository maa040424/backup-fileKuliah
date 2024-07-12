#include <iostream>
using namespace std;

int main() {
    double fileSizeInGB, downloadSpeedInMBps;

    // Meminta pengguna untuk memasukkan ukuran file (dalam GB) dan kecepatan unduh (dalam MB/s)
    cout << "Masukkan ukuran file yang akan diunduh (dalam GB): ";
    cin >> fileSizeInGB;

    cout << "Masukkan kecepatan unduh (dalam MB/s): ";
    cin >> downloadSpeedInMBps;

    // Konversi ukuran file dari GB ke MB
    double fileSizeInMB = fileSizeInGB * 1024;

    // Menghitung waktu perkiraan download dalam detik
    double downloadTimeInSeconds = fileSizeInMB / downloadSpeedInMBps;

    // Menghitung jam, menit, dan detik
    int hours = downloadTimeInSeconds / 3600;
    int minutes = (downloadTimeInSeconds - (hours * 3600)) / 60;
    int seconds = downloadTimeInSeconds - (hours * 3600) - (minutes * 60);

    cout << "Perkiraan waktu download: " << hours << " jam, " << minutes << " menit, " << seconds << " detik." << endl;

    return 0;
}
