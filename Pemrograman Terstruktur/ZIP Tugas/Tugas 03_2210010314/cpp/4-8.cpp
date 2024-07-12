#include <iostream>

using namespace std;

int main() {
cout<< "+==============================+"<<endl;
cout<< "|Nama : Muhammad Adam Alghifari|"<<endl;
cout<< "|Npm  : 2210010314             |"<<endl;
cout<< "+==============================+"<<endl;

    bool hasil;

    hasil = (false && true) || (true || false);
    cout << "Hasil: " << hasil << endl;

    hasil = false || (false | true);
    cout << "Hasil: " << hasil << endl;

    hasil = ((true && true) || (true || false)) || true;
    cout << "Hasil: " << hasil << endl;

    return 0;
}