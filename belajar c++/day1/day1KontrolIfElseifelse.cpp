#include <iostream>
using namespace std;

int main (){
	int nilai;
	nilai = 50;
	//percabangan dengan if, else if, else
	if (nilai >= 80){
		cout<< "Grade Nilai Kamu A" << endl;
	} else if (nilai >= 70){
		cout<< "Grade Nilai Kamu B+" << endl;
	} else if (nilai >= 60){
		cout<< "Grade Nilai Kamu B" << endl;
	} else {
		cout << "Nilai kamu sangat rendah Belajar lebih giat lagi ya !!!" << endl;
	}
	return 0;
}