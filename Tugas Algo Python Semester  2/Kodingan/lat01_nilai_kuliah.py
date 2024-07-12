print("Nama : Muhammad Adam Alghifari")
print("NPM  : 2210010314")
# inputan
nilaiHarian = int(input("Masukkan Nilai Harian:"))
nilaiTugas = int(input("Masukkan Nilai Tugas:"))
nilaiUTS = int(input("Masukkan Nilai UTS:" ))
nilaiUAS = int(input("Masukkan Nilai UAS:"))

#menghitung nilai akhir
nilaiAkhir = (nilaiHarian * 0.1) + (nilaiTugas * 0.2) + (nilaiUTS * 0.3) + (nilaiUAS * 0.4)

# Menampilkan hasil akhir
print(" Hasil Akhir: ", nilaiAkhir)
