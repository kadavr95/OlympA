unit OlympC;
interface

implementation
 var a,x,n: longint;
 i,j:integer;
 s:string;

begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    for i := 1 to 10 do
    begin
    read(n);
    insert(inttostr(n),s,length(s));
    end;
    for i := 1 to 10 do
    for j := 1 to 10 do
    begin
      x:=copy(s,i,1)-copy(s,j,1);
      if x>a then
      a:=x;
    end;
    writeln(a);
    close(input);
    close(output);
end.

