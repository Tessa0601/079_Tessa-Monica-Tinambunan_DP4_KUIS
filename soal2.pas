program DataPositif;
uses crt;

var
    angka, jumlah, total: integer;

begin
    clrscr;

    jumlah := 0;
    total := 0;

    write('Masukkan angka: ');
    readln(angka);

    while angka <> 0 do
    begin
        if angka > 0 then
        begin
            jumlah := jumlah + 1;
            total := total + angka;
        end;

        readln(angka);
    end;

    writeln('Banyak data positif: ', jumlah);
    writeln('Total: ', total);

    readln;
end.