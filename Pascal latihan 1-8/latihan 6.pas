program tipe_integer;
uses crt;
var
        a:integer;
begin
        clrscr;
        a:=20;
        writeln('a: ',a);
        a:=15;
        writeln('a: ',a);
        a:=a + 10;
        writeln('a: ',a);
        a:=a - 20;
        writeln('a: ',a);
        a:=a * 10;
        writeln('a: ',a);
        a:=a * 100;
        writeln('a: ',a);
        readln;
end.