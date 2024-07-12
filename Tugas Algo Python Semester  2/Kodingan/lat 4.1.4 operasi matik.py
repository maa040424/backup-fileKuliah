print('+===============================+')
print('|Nama  : Muhammad Adam Alghifari|')
print('|Npm   : 2210010314             |')
print('|*******************************|')
print('|======Kalkulator Sederhana=====|')
print('+===============================+')
print('/n')

print("Selamat datang di Program Kalkulator Sederhana")
print("Silakan pilih operasi yang diinginkan:")
print("1. Penjumlahan")
print("2. Pengurangan")
print("3. Perkalian")
print("4. Pembagian")

# Meminta input operasi dari pengguna
pilihan = int(input("Masukkan pilihan operasi (1/2/3/4): "))



# Menentukan operasi yang dipilih oleh pengguna
 
match pilihan:
    case 1:
        print("kalkulator penjumlahan")
       
        
        nilai1 = int(input("Masukkan angka ke 1 :"))
        nilai2 = int(input("Masukkan angka ke 2 :"))

        tambah = nilai1 + nilai2

        print("\n")
        print("Hasil pertambahan : ", tambah)
    case 2:
        print("Kalkulator pengurangan")
        

        nilai1 = int(input("Masukkan angka ke 1 :"))
        nilai2 = int(input("Masukkan angka ke 2 :"))

        kurang = nilai1 - nilai2

        print("\n")
        print("Hasil pengurangan :", kurang)
    case 3:
        print("Kalkulator Perkalian")
       
        
        nilai1 = int(input("Masukkan angka ke 1 :"))
        nilai2 = int(input("Masukkan angka ke 2 :"))

        kali = nilai1 * nilai2

        print("Hasil perkalian :", kali)
    case 4:
        print("Kalkulator Pembagian")
       

        nilai1 = int(input("Masukkan angka ke 1 :"))
        nilai2 = int(input("Masukkan angka ke 2 :"))

        bagi = nilai1 / nilai2

        print("Hasil pembagian :", bagi)
    case _:
        print("Menu yang anda pilih salah!!")
