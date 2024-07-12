//belajar mandiri
#include <iostream>
#include <string.h>

using namespace std;

int main (){
	// variabel
	string namaLengkap, npm;
	int semester;
	double tugas, uts, uas, presensi;
	//variabel
	cout<<"+===================================+\n";
	cout<<"Input Nama Lengkap :";
	getline(cin, namaLengkap);
	cout<<"Input Semester";
	cin>> semester;
	cout<<"Input Nilai Tugas :";
	cin>> tugas;
	cout<<"Input Nilai UTS :";
	cin>> uts;
	cout<<"Input Nilai UAS :";
	cin>> uas;
	cout<<"Input Nilai Presensi :";
	cin>> presensi;
	//variabel
	string kodeProdi = npm.substr(2,4);
	string prodi ;
	
	if (kodeProdi == '1001') {
		prodi="Teknik Informatika";
	} else if (kodeProdi == '1002'){
		prodi="Sistem Informasi";
	} else {
		prodi = "Kode Prodi Tidak Dikenal";
	}
	
	double nilaiAkhir = (0.3 * tugas)+(0.25 * uts )+(0.35 * uas)+(0.1 presensi)	
	char grade;
	if (nilaiAkhir >= 80 ){
		grade = "A";
	} else if (nilaiAkhir )
	




	return 0;
}
