// praktek 2
/* soal 2
Menghitung dan menampilkan jumlah bilangan genap dari 1 hingga 100 menggunakan for loop. 
*/

#include <iostream>
using namespace std;
int main (){
	int jumlahGenap = 0;
	for (int i = 1; i<=100; i++)
	if (i % 2 == 0){
	
		jumlahGenap += 1;
}
	cout<<"Jumlah Bilangan Genap dari 1 sampai 100  ada :"<< jumlahGenap <<endl;
	return 0;
}