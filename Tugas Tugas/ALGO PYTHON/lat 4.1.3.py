print("Program Menghitung Luas")
print('**********************\n')
print('\n')
print("Pilih Menu")
print('==========> 1. Luas Lingkaran')
print('            2. Luas Persegi')
print('            3. Luas Segitiga')
print('\n')
pilihan = int(input("Masukkan Pilihan ="))
print('\n')

match pilihan:
    case 1:
        print("Program Lingkaran")
        print("****************\n")

        jari = int(input("Masukan Jari Jari ="))
        luas = 3.14 * jari * jari
        print("Luas adalah :", luas)
    case 2:
        print("Program Persegi")
        print("**************\n")

        panjang = int(input("Masukkan Panjang ="))
        lebar = int(input("Masukkan Lebar ="))
        luas = panjang * lebar
        print("Luas adalah :", luas)
    case 3:
        print("Program Segitiga ")
        print("****************\n")

        a = int(input("Masukka Alas ="))
        t = int(input("Masukkan Tinggi ="))
        luas = 0.5 * a * t
        print("Luas adalah :", luas)
    case _:
        print("Pilihan menu tidak ada")
