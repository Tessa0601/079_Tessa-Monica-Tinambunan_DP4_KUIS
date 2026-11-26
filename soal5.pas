program DataMahasiswa;
uses crt;

type
    Mahasiswa = record
        nama: string;
        nim: integer;
        uts, uas, na: real;
        indeks: char;
    end;

var
    m: array[1..3] of Mahasiswa;
    i, tertinggi: integer;

function HitungNA(uts, uas: real): real;
begin
    HitungNA := (0.4 * uts) + (0.6 * uas);
end;

function HitungIndeks(na: real): char;
begin
    case na of
        80..100: HitungIndeks := 'A';
        71..79: HitungIndeks := 'B';
        51..70: HitungIndeks := 'C';
        31..50: HitungIndeks := 'D';
    else
        HitungIndeks := 'E';
    end;
end;

begin
    clrscr;

    for i := 1 to 3 do
    begin
        writeln('Mahasiswa ke-', i);

        with m[i] do
        begin
            readln(nama);
            readln(nim);
            readln(uts);
            readln(uas);

            na := HitungNA(uts, uas);
            indeks := HitungIndeks(na);
        end;
    end;

    tertinggi := 1;

    for i := 2 to 3 do
    begin
        if m[i].na > m[tertinggi].na then
            tertinggi := i;
    end;

    writeln;
    writeln('Nama    Nilai Akhir   Indeks');

    for i := 1 to 3 do
    begin
        writeln(m[i].nama, '      ', m[i].na:0:2, '          ', m[i].indeks);
    end;

    writeln;
    writeln('Nilai tertinggi: ', m[tertinggi].nama);

    readln;
end.