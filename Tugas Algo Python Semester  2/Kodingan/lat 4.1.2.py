print("program jual disk")
print('****************\n')
beli = int(input("Total pembelian ="))

match beli:
    case beli if 0 <= beli <= 1000:disc = 100
    case beli if 1001 <= beli <= 10000:disc = 500
    case beli if 10001 <= beli <= 30000:disc = 2000
    case _:
        print("persediaan tidak mencukupi ")

print("\n")
print("Jumlah Pembelian = Rp.", beli)
print("discount = Rp. ", disc)
print("")
print("Jumlah yang dbayar : Rp.", beli - disc)
