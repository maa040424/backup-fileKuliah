#include <iostream>
#include <string.h>

using namespace std;
int main (){
	cout<<"Loket Pembayaran UNISKA"<<endl;
	cout<<"---------------------------\n";
	cout<<"Pilihan Token Listrik \n";
	cout<<" 1. Rp. 20000\n";
	cout<<" 2. Rp. 50000\n";
	cout<<" 3. Rp. 100000\n";
	cout<<" 4. Rp. 150000\n";
	cout<<" 5. Rp. 200000\n";
	cout<<"======================\n";
	int pilih, admin, fti, fkm, fh, fkip, uniska2023;
	string kodePelanggan,  kodePromo;
	
	fti = 1500;
	fkm = 1500;
	fh  = 1200;
	fkip = 1700;
	uniska2023 = 2000;
	admin = 2500;
	
	cout<<"pilih Token Listrik [1-5] :";
	cin>> pilih;
	cout<<"Input Kode Pelanggan :";
	cin>> kodePelanggan;
	cout<<"Input Kode Promo :";
	cin>> kodePromo;
	
	int total;
	if (pilih == 1 ){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		}
} else if (pilih == 2 ){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 50000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 50000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 50000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 50000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 50000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (pilih == 1 ){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (pilih == 3){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} (pilih == 4 ){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (pilih == 5 ){
		if (kodePromo == "UNISKAFTI"){
			total = (20000 + admin - fti);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKM"){
			total = (20000 + admin - fkm);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFH"){
			total = (20000 + admin - fh);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "UNISKAFKIP"){
			total = (20000 + admin - fkip);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else if (kodePromo == "2023UNISKA"){
			total = (20000 + admin - uniska2023);
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		} else {
			total = (20000 + admin );
			cout<<"No Pelanggan :"<<kodePelanggan<<endl;
			cout<<"Token Yang Dibeli : Rp. 20000\n";
			cout<<"Biaya Admin : Rp."<<admin<<endl;
			cout<<"Potongan : Rp."<<fti<<endl;
			cout<<"Total Pembayaran : Rp."<<total<<endl;
		}
	return 0;
}
		
	
	
	
	
	
	
	
	
	
	
	
	
	

