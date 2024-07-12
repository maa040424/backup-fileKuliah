print("Nama : Muhammad Adam Alghifari")
print("NPM  : 2210010314")
print("Program Menghitung luas")
print('***********************\n')
print('\n')
print('=======> 1. Luas Lingkaran ')
print('         2. Luas Persegi')
print('         3. Luas Segitiga')
print('\n')
pilihan = int(input("Masukan pilihan :"))
print('\n')

if pilihan  == 1:
    print("Program Lingkaran")
    print('******************\n')
    print('\n')
    jari = int(input("Masukan jari-jari:"))
    luas = 3.14 * jari * jari
    print("Luas adalah :", luas)
elif pilihan == 2:
    print("Program persegi panjang")
    print('=======================\n')
    print('\n')
    panjang = int(input("Masukan Panjang :"))
    lebar = int(input("Masukan Lebar :"))
    luas = panjang * lebar
    print("Luas adalah :", luas)
elif pilihan == 3:
    print("Program Segitiga")
    print('===============\n')
    print('\n')
    a = int(input("Masukan alas :"))
    t = int(input("Masukan tinggi :"))
    luas = 0.5 * a * t
    print("luas adalah: ", luas)
else:
    print("pilihan menu tidak ada")
               
      
            
