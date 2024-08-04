#include <iostream>
using namespace std;
int main (){
	int day = 1; //deklarasi dan inisialisasi variabel
	
	switch (day) { // masukan variablenya didalam kurung setelah switch
	case 1 :
		cout << "Senin" << endl;
		break;
	case 2 :
		cout << "Selasa" << endl;
		break;
	case 3 : 
		cout << "Rabu" << endl;
		break;
	default :
		cout << "Invalid Day" << endl;
	} // ingat dalam switch itu setiap casenya dikasih "break;" agar tidak menampilkan hasil selanjutnya lagi 
	return 0;
}