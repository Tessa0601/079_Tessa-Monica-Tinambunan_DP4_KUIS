program PolaSegitiga;
uses crt;
var
    i, j: integer;
begin
    clrscr;
    for i := 1 to 4 do
    begin
        for j := 1 to (2*i-1) do
            write('* ');
        writeln;
    end;

    for i := 3 downto 1 do
    begin
        for j := 1 to (2*i-1) do
            write('* ');
        writeln;
    end;
    readln;
end.
