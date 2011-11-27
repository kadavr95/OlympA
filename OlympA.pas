unit OlympA;

interface

implementation
var n, k, s, m: longint;
begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    read(n, k);
    s:=n*4-4;
    if k<s then
    m:=0
    else
    begin
      if k mod s =1 then
       m:=k div n
       else
       if k mod s=s-1 then
       m:=((k+1) div n)-1
       else
      m:=(k div 4) +((k mod 4) div (3))+1;
    end;
    writeln(m);
    close(input);
    close(output);
end.
