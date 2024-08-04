// praktek 3 
/* soal 3 
Meminta pengguna memasukkan nilai ujian dan menampilkan grade menggunakan if-else atau switch.
*/

#include <iostream>
#include <string>
using namespace std;
int main(){
	int nilai = 88;
	string grade; 
	if (nilai >= 90){
		grade = 'A';
		cout<< "Grade Anda : "<< grade << endl;
	} else if (nilai >= 80){
		grade = "B+";
		cout<< "Grade Anda :  "<< grade << endl;
	}else {
		grade = 'B';
		cout<< "Grade Anda : " << grade << endl;
	}
	return 0;
}