### 
// PascalABC.NET 3.7+
// by <T>
// inp: 5 84
// out: 1 5 4 2 3
var (n,k):=RI2;
var fact:=SeqGen(n,x->round(SeqGen(x,y->y,1).Product()),1).Rev.ToA;
var kf:=SeqGen(n,y->y,0).sel(x->begin result := k div fact[x]; k := k mod fact[x]; end).ToA;
var out:=|0|*n;
for var i:=n downto 2 do
begin
  var cnt:=kf[n-i+1];
  for var j:=0 to n-1 do
    if out[j] = 0 then
    begin
      dec(cnt);
      if cnt < 0 then out[j]:=i;
      if cnt < 0 then break;
    end;
end;
for var i:=0 to n-1 do
  if out[i] = 0 then
    out[i] := 1;
out.Rev.Pr;