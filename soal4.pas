program DataAngka;
uses crt;

var
    a: array[1..100] of integer;
    n, i, maks, min: integer;
    total: integer;
    rata: real;

begin
    clrscr;

    write('Masukkan jumlah data: ');
    readln(n);

    total := 0;

    for i := 1 to n do
    begin
        read(a[i]);
        total := total + a[i];
    end;

    maks := a[1];
    min := a[1];

    for i := 1 to n do
    begin
        if a[i] > maks then
            maks := a[i];

        if a[i] < min then
            min := a[i];
    end;

    rata := total / n;

    writeln;
    writeln('Maksimum  : ', maks);
    writeln('Minimum   : ', min);
    writeln('Rata-rata : ', rata:0:2);

    write('Terbalik  : ');
    for i := n downto 1 do
        write(a[i], ' ');

    readln;
end.

