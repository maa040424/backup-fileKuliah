print('Pembagian Harta Gonimah Perang')
print('==============================')
nama = type(input("Masukkan Nama Perang :"))
emas = int(input("Masukan Jumlah keping emas :"))
sahabat = int(input("Jumlah Sahabat :"))
gram = 4.25
pergram = 667000


nilai = emas * 4.25 * 667000
nabi = nilai * 0.2 
print("Nilai Harta Rampasan :", nilai )
print("Bagian Nabi :", nabi )
bagi = (nilai - nabi) / sahabat
print("Bagian Sahabat Nabi:", bagi )

