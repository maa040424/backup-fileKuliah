print("Nama : Muhammad Adam Alghifari")
print("NPM  : 2210010314")
print("Program Menentukan Bilangan yang terbesar")
print('****************************************\n')
a = int(input("Masukkan bilangan ke 1 ="))
b = int(input("Masukkan bilangan ke 2 ="))
c = int(input("Masukkan bilangan ke 3 ="))

print('\n')

if(a > b ) and (a > c):
    print("bilangan ke 1 paliing besar")
elif(b > a) and (b > c ):
    print("bilangan ke 2 paling besar")
elif(c > a ) and (c > b):
    print("bilangan ke 3 paling besar")
else:
    print("ada dua atau tiga masukkan memiliki nilai yang sama")
    



