#include <iostream>
using namespace std ;

int main(){
	string promo, pelanggan, ulang = "Y";
	int token;
	float hargatoken, admin, potongan, pembayaran;
	do {
	

	cout << "LOKET PEMBAYARAN UNISKA" << endl;
	cout << "=======================" << endl;
	cout << "Pilih TOken Listrik	" << endl;
	cout << "1. Rp. 20000" << endl;
	cout << "2. Rp. 50000" << endl;
	cout << "3. Rp. 100000" << endl;
	cout << "4. Rp. 150000" << endl;
	cout << "5. Rp. 200000" << endl;
	cout << "=======================" << endl;
	cout << "Pilih Token Listrik [1-5]: "; cin >> token ;
	if (token == 1){
		hargatoken = 20000 ;
	}else if (token == 2){
		hargatoken = 50000;
	}else if (token == 3){
		hargatoken = 100000;
	}else if (token == 4){
		hargatoken = 150000;
	}else if (token == 5){
		hargatoken = 200000;
	}else {
		cout << "Nomor Token yang di pilih tidak tersedia" <<endl;
		return 0;
	}
	
	cout << "Input No Pelanggan : "; cin >> pelanggan;
	cout << "Input Kode Promo : "; cin >> promo;
	if (promo == "UNISKAFTI"){
		potongan = 1500;
	} else if (promo == "UNISKAFKM"){
		potongan = 1500;
	}else if (promo == "UNISKAFH"){
		potongan = 1200;
	}else if (promo == "UNISKAFKIP"){
		potongan = 1700;
	}else if (promo == "2023UNISKA"){
		potongan = 2000;
	}else{
		potongan = 0 ;
	}
	admin = 2500 ;
	
	pembayaran = hargatoken + admin - potongan;
	
	cout << "========================" << endl;
	cout << "No Pelanggan : Rp." << pelanggan << endl;
	cout << "Token Yang Dibeli: Rp." << hargatoken << endl;
	cout << "Biaya Admin: Rp." << admin << endl;
	cout << "Kode Promo: " << promo << endl;
	cout << "Potongan : Rp." << potongan << endl;
	cout << "Total Pembayaran : Rp." << pembayaran << endl;
	
	cout<< "Jika Kaisar Bapak ingin mengulangi ketik (Y/y) :";
	cin>>ulang;
	
}while (ulang == "Y" || ulang =="y");
	return 0; 
	
}
