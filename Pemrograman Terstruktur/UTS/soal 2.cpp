#include <iostream>
using namespace std;

int main() {
    const double PI = 3.14; 

    double jari;
    cout<<"Program Perhitungan Luas dan Keliling Bangun Lingkaran\n";
    cout<<"------------------------------------------------------"<<endl;
    cout << "Input nilai jari-jari : ";
    cin >> jari;
	cout<<"===========================================\n";

    double keliling = 2 * PI * jari; 
    double luas = PI * jari * jari;
	
	cout<< "Luas Lingkaran dengan jari-jari "<< jari << "adalah" << luas << "cm2" <<endl;
    cout << "Keliling lingkaran dengan jari-jari " << jari << " adalah " << keliling <<"cm2" <<endl;
	
    return 0;
}

