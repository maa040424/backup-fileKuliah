#include <iostream>
using namespace std;
int main (){
	int i = 1;
	
	do {
		cout<< "Perulangan ke : " << i << endl;
		i++;
	} while (i <= 5);
	return 0; 
	/* 
	dari yang saya pahami dengan perulangan do while loop ini adalah:
	akan menulis blok kode setidaknya sekali karena "do" didahulukan kodenya dari pada "while" 
	arti do : lakukan
	arti while : ketika 
	jadi do (lakukan {blok kode} ) terus dengan i++ increment nya itu akan ditambahkan sampai memenuhi persyaratan
	pada while (ketika i <= 5) nya akan  berhenti perulangannya jika sudah melebihi dengan ketentuan tersebut. 
	*/
}