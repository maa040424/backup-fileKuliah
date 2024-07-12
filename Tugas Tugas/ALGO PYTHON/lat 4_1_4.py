print('+===============================+')
print('|Nama  : Muhammad Adam Alghifari|')
print('|Npm   : 2210010314             |')
print('|*******************************|')
print('|======Kalkulator Sederhana=====|')
print('+===============================+')
    
def tambah(a, b):
    return a + b

def kurang(a, b):
    return a - b

def kali(a, b):
    return a * b

def bagi(a, b):
    return a / b

def kalkulator():
    print("Pilihan operasi:")
    print("1. Penjumlahan")
    print("2. Pengurangan")
    print("3. Perkalian")
    print("4. Pembagian")

    pilihan = input("Masukkan pilihan (1/2/3/4): ")

    angka1 = float(input("Masukkan angka pertama: "))
    angka2 = float(input("Masukkan angka kedua: "))

    result = None

    match pilihan:
        case '1':
            result = tambah(angka1, angka2)
            print("Hasil penjumlahan:", result)
        case '2':
            result = kurang(angka1, angka2)
            print("Hasil pengurangan:", result)
        case '3':
            result = kali(angka1, angka2)
            print("Hasil perkalian:", result)
        case '4':
            result = bagi(angka1, angka2)
            print("Hasil pembagian:", result)
        case _:
            print("Pilihan tidak valid.")

kalkulator()

