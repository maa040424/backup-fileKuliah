print('Nama : Muhammad Adam Alghifari')
print('Npm  : 2210010314')
print('\n')
print("Program Toko Alat Tulis")
print('*'*20)

pensil = 45000
pulpen = 30000
penghapus = 28000
penggaris = 20000
spidol = 40000

pilih = int(input(f''' Pilih Barang 
                  ==================> 1. Pensil 
                                      2. Pulpen
                                      3. Penghapus
                                      4. Penggaris
                                      5. Spidol
                Pilih Barang Yang Ingin Di Beli = '''))

if pilih == 1:
    print(f'Harga Pensil Perkotak = {pensil:,.0f}' )
    masuk = int(input('Masukan Berapa Kotak Yang ingin dibeli = '))
    if masuk > 10:
        pensil *= 0.95  # Diskon 5%
        diskon = 5
    else:
        diskon = 0
    if masuk > 30:
        masuk += 1  # Bonus 1 kotak penghapus
    total = pensil * masuk
    potong = pensil - total
    print(f"Selamat! Anda mendapatkan diskon {diskon}%.")
    print(f"Harga Potongan: {potong:,.0f}")
    print(f"Total Harga Setelah Dipotong: {total:,.0f}")

elif pilih == 2:
    print(f'Harga Pulpen Perkotak = {pulpen:,.0f}')
    masuk = int(input('Masukan Berapa Kotak Yang ingin dibeli = '))
    if masuk > 10:
        pulpen *= 0.92  # Diskon 8%
        diskon = 8
    else:
        diskon = 0
    if masuk > 25:
        masuk += 1  # Bonus 1 kotak penghapus
        total *= 0.95  # Potongan 5%
    total = pulpen * masuk
    potong = pulpen - total
    print(f"Selamat! Anda mendapatkan diskon {diskon}%.")
    print(f"Harga Potongan: {potong:,.0f}")
    print(f"Total Harga Setelah Dipotong: {total:,.0f}")

elif pilih == 3:
    print(f'Harga Penghapus Perkotak = {penghapus:,.0f}')
    masuk = int(input('Masukan Berapa Kotak Yang ingin dibeli = '))
    if masuk > 10:
        penghapus *= 0.97  # Diskon 3%
        diskon = 3
    else:
        diskon = 0
    if masuk > 25:
        total = penghapus * masuk
    potong = total * 0.05
    print(f"Selamat! Anda mendapatkan diskon {diskon}%.")
    print(f"Harga Potongan: {potong:,.0f}")
    print(f"Total Harga Setelah Dipotong: {total:,.0f}")

elif pilih == 4:
    print(f'Harga Penggaris Perkotak = {penggaris:,.0f}')
    masuk = int(input('Masukan Berapa Kotak Yang ingin dibeli = '))
    if masuk > 10:
        penggaris *= 0.97  # Diskon 3%
        diskon = 3
    else:
        diskon = 0
    if masuk > 25:
        total *= 0.95  # Potongan 5%
    total = penggaris * masuk
    potong = penggaris - total
    print(f"Selamat! Anda mendapatkan diskon {diskon}%.")
    print(f"Harga Potongan: {potong:,.0f}")
    print(f"Total Harga Setelah Dipotong: {total:,.0f}")

elif pilih == 5:
    print(f'Harga Spidol Perkotak = {spidol:,.0f}')
    masuk = int(input('Masukan Berapa Kotak Yang ingin dibeli = '))
    if masuk > 10:
        spidol *= 0.9  # Diskon 10%
        diskon = 10
    else:
        diskon = 0
    if masuk > 20:
        masuk += 1  # Bonus 1 buah penghapus papan tulis
        total *= 1.03  # Potongan 3%
    total = spidol * masuk
    potong = spidol - total
    print(f"Selamat! Anda mendapatkan diskon {diskon}%.")
    print(f"Harga Potongan: {potong:,.0f}")
    print(f"Total Harga Setelah Dipotong: {total:,.0f}")

else:
    print('Pilihan barang tidak valid.')

