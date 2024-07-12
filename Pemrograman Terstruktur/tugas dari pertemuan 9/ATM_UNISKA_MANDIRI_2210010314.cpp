#include <iostream>
#include <cstdlib>
#include <chrono>
#include <thread>
using namespace std;

int main (){
	int saldo = 120000;
	string ulang ="Y" ;
	int pilih;
	
	
	
	while(ulang == "Y"|| ulang == "y"){
		system("cls");
		cout<<"ATM Uniska\n";
		cout<<"---------------------\n";
		cout<<"1. Cek Saldo \n";
		cout<<"2. Setor Tunai \n";
		cout<<"3. Tarik Tunai \n";
		cout<<"4. Keluar \n";
		cout<<"----------------------\n";
		cout<<"Pilih Menu [1-4] : ";
		cin>>pilih;
			if (pilih == 1){
				cout<<"Menu 1:\n";
				cout<<"Saldo Anda :"<<saldo<<"\n";
				cout<<"Lanjut Transaksi ? (Y/T)";
				cin>>ulang;
			} else if (pilih == 2){
				int setor;
				cout<<"Menu 2: \n";
				cout<<"Input Setor Tunai :";
				cin>>setor;
				saldo += setor;
				cout<<"Saldo Anda Sekarang :"<< saldo <<endl;
				cout<<"Lanjut Transaksi ? (Y/T)";
				cin>>ulang;
			} else if (pilih == 3){
				int tarik;
				cout<<"Menu 3:\n";
				cout<<"Input Tarik Tunai :";
				cin>>tarik;
				if (tarik -= saldo){
					cout<<"Saldo Anda Tidak Mencukupi ";
					cout<<"Lanjut Transaksi ? (Y/T)";
				cin>>ulang;
				}else {
					saldo -= tarik;
					cout<<"Saldo Anda Sekarang :"<<saldo<<endl;
					cout<<"Lanjut Transaksi ? (Y/T)";
					cin>>ulang;
				}
			} else if (pilih == 4){
				cout<<"Terima Kasih Telah Menggunakan ATM Uniska ";
				this_thread::sleep_for(chrono::seconds(3));
				break ;
			} else {
				cout<< "Menu Pilihan tidak tersedia input dari angak 1-4\n";
				cout<<"Lanjut Transaksi ? (Y/T)";
				cin>>ulang;
			}
	}
	return 0;
}
