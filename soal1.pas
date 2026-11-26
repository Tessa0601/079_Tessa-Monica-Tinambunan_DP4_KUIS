program KonversiDetikk;
uses crt;
var
    detik, jam, menit, sisa: integer;

begin
    clrscr;

    write('Masukkan jumlah detik: ');
    readln(detik);

    jam := detik div 3600;
    sisa := detik mod 3600;

    menit := sisa div 60;
    sisa := sisa mod 60;

    writeln(jam, ' jam ', menit, ' menit ', sisa, ' detik');

    readln;
end.