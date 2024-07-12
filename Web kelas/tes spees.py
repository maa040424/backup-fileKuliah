def hitung_waktu_download(kecepatan_internet, ukuran_file):
    # Konversi ukuran file dari MB ke byte
    ukuran_file_byte = ukuran_file * 1024 * 1024

    # Hitung waktu download dalam detik
    waktu_download_detik = ukuran_file_byte / kecepatan_internet

    # Konversi waktu download dari detik ke jam, menit, dan detik
    jam = int(waktu_download_detik / 3600)
    sisa_detik = waktu_download_detik % 3600
    menit = int(sisa_detik / 60)
    detik = int(sisa_detik % 60)

    return jam, menit, detik

def main():
    kecepatan_internet = 1  # Kecepatan internet dalam MB/s
    ukuran_file = 2.5  # Ukuran file dalam GB

    jam, menit, detik = hitung_waktu_download(kecepatan_internet, ukuran_file)

    print(f"Waktu estimasi selesai download: {jam} jam {menit} menit {detik} detik")

if __name__ == "__main__":
    main()
