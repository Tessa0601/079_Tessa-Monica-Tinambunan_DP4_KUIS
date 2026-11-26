program bintangBintang;
uses crt;
var
    i, j, n: integer;
begin
    clrscr;
    write('Masukkan jumlah baris: ');
    readln(n);
    for i := 1 to n do
    begin
        for j := 1 to n-i do
            write(' ');
        for j := 1 to 2*i-1 do
            write('*');
        writeln;
    end;
    readln;
end.
