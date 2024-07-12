while True:
    print("Perhitungan Zakat")
    print("=================")
    print("\n")
    print("Jenis-jenis Zakat :")
    print("1. Zakat Uang")
    print("2. Zakat Hasil Tani")
    print("3. Zakat Fitrah")
    print("4. Keluar")
    print("\n")

    pilihan = int(input("Pilih Jenis Zakat (1-4): "))

    if pilihan == 1:
        print("Zakat Uang")
        print("Nisab : 85 gram emas")
        print("Haul  : 1 tahun")
        print("Kadar : 2.5%")
        jmlharta = int(input("Jumlah Harta :"))

        if jmlharta >= 85:
            jmlzakat = 0.025 * jmlharta
            print("Jumlah Zakat :", jmlzakat, "gram")
        else:
            print("Jumlah Zakat : 0")

    elif pilihan == 2:
        print("Zakat Hasil Tani")
        print("Nisab : 653 kg")
        print("Haul  : Tiap panen")
        print("Kadar : 5%")
        jmlharta = int(input("Jumlah Harta :"))

        if jmlharta >= 653:
            jmlzakat = 0.05 * jmlharta
            print("Jumlah Zakat :", jmlzakat, "Kg")
        else:
            print("Jumlah Zakat : 0")

    elif pilihan == 3:
        print("Zakat Fitrah")
        print("Nisab : Hidup malam Fitrah")
        print("Haul  : 1 tahun")
        print("Kadar : 3.5 kg")
        jmlorang = int(input("Jumlah Orang :"))

        jmlzakat = 3.5 * jmlorang

        print("Jumlah Zakat :", jmlzakat, "Kg")

    elif pilihan == 4:
        print("Terima kasih telah menggunakan program perhitungan zakat.")
        break

    else:
        print("Pilihan tidak tersedia")