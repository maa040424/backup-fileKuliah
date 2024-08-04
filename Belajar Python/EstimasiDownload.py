from rich.console import Console
from rich.table import Table

def download_time(speed, speed_unit, file_size_gb):
    # Konversi kecepatan ke byte per detik (B/s)
    if speed_unit.lower() == 'b':
        speed_bps = speed
    elif speed_unit.lower() == 'kb':
        speed_bps = speed * 1024
    elif speed_unit.lower() == 'mb':
        speed_bps = speed * 1024 * 1024
    elif speed_unit.lower() == 'gb':
        speed_bps = speed * 1024 * 1024 * 1024
    else:
        raise ValueError("Unit kecepatan tidak valid. Pilih satuan: B, KB, MB, GB")

    # Konversi ukuran file dari GB ke byte
    file_size_bytes = file_size_gb * 1024 * 1024 * 1024

    # Hitung waktu unduh dalam detik
    time_seconds = file_size_bytes / speed_bps

    # Konversi waktu ke detik, menit, dan jam
    time_hours = int(time_seconds / 3600)
    time_minutes = int((time_seconds % 3600) / 60)
    time_seconds = int(time_seconds % 60)

    return time_hours, time_minutes, time_seconds

# Input dari pengguna
console = Console()

speed = float(input("Masukkan kecepatan download: "))
speed_unit = input("Masukkan satuan kecepatan (B, KB, MB, GB /s): ")
file_size_gb = float(input("Masukkan ukuran file dalam GB: ").replace(',', '.'))

# Hitung waktu download
hours, minutes, seconds = download_time(speed, speed_unit, file_size_gb)

# Tampilkan hasil dalam bentuk tabel
table = Table(title="Estimasi Waktu Download")

table.add_column("Ukuran File (GB)", justify="right", style="cyan", no_wrap=True)
table.add_column("Kecepatan Download", justify="right", style="magenta")
table.add_column("Waktu Download", justify="right", style="green")

table.add_row(
    f"{file_size_gb} GB",
    f"{speed} {speed_unit}/s",
    f"{hours} jam, {minutes} menit, {seconds} detik"
)

console.print(table)
