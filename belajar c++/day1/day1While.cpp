#include <iostream>
using namespace std;

int main (){
	int i = 1;
	
	while (i <= 5){
		cout<< "Perulangan int ke : " << i <<endl;
		i++;
	}
	
	/*while (float o = 1; o <= 5; o++){
		cout<< "Perulangan float ke :" << o <<endl;
	}*/
	return 0;
	
	/* 
	penjelasan untuk perulangan while ini yang saya pahami adalah :
	deklarasi var dan inisialisasi nya berada diluar dari while 
	terus untuk operator perulangannya seperti i <= 5 itu didalam while
	dan incrementnya berada dibawah pada kode endl; 
	*/
}