#include <iostream>
#include <string.h>
using namespace std;

int main() {
    string namaLengkap, npm;
    int semester;
    double nilaiTugas, nilaiUTS, nilaiUAS, nilaiPresensi;

    cout << "Input Nama Lengkap: ";
    getline(cin, namaLengkap);

    cout << "Input Semester: ";
    cin >> semester;

    cout << "Input NPM: ";
    cin >> npm;

    cout << "Input Nilai Tugas: ";
    cin >> nilaiTugas;

    cout << "Input Nilai UTS: ";
    cin >> nilaiUTS;

    cout << "Input Nilai UAS: ";
    cin >> nilaiUAS;

    cout << "Input Nilai Presensi: ";
    cin >> nilaiPresensi;

    // Mengambil kode prodi dari NPM
    string kodeProdi = npm.substr(2, 4);
    string prodi;

    if (kodeProdi == "1001") {
        prodi = "TI";
    } else if (kodeProdi == "1002") {
        prodi = "SI";
    } else {
        prodi = "Prodi Tidak Dikenal";
    }

    // Menghitung nilai akhir
    double nilaiAkhir = (0.3 * nilaiTugas) + (0.25 * nilaiUTS) + (0.35 * nilaiUAS) + (0.1 * nilaiPresensi);

    // Menghitung grade berdasarkan nilai akhir
    char grade;
    if (nilaiAkhir >= 80) {
        grade = 'A';
    } else if (nilaiAkhir >= 75) {
        grade = 'B';
    } else if (nilaiAkhir >= 70) {
        grade = 'B';
    } else if (nilaiAkhir >= 65) {
        grade = 'C';
    } else if (nilaiAkhir >= 60) {
        grade = 'C';
    } else if (nilaiAkhir >= 50) {
        grade = 'D';
    } else {
        grade = 'E';
    }

    cout << "\nHASIL\n";
    cout << "-----------------------------\n";
    cout << "Berikut hasil pencapaian anda pada semester ini:\n";
    cout << "Nama: " << namaLengkap << endl;
    cout << "Semester: " << semester << endl;
    cout << "NPM: " << npm << endl;
    cout << "Kode Prodi :" <<kodeProdi <<endl;
    cout << "PRODI: " << prodi << endl;
    cout << "NILAI AKHIR: " << nilaiAkhir << endl;
    cout << "GRADE: " << grade << endl;

    return 0;
}