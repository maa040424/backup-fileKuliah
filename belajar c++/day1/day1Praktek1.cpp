// tugas praktek 1 
/* soal 
 Meminta pengguna memasukkan umur dan menampilkan apakah mereka dewasa atau minor.
*/

#include <iostream>
using namespace std; 

int main (){
	int usia = 20;
	if (usia >= 18){
		cout << "Anda Dewasa" << endl;
	} else {
		cout << "Anda Minor" << endl;
	}
	return 0;
}