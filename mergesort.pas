program mergesort;
const
  size = 10001;

type
  arr = array[1..size] of integer;

procedure merge(var a:arr; L , mid , R: integer);
 var
    i ,  p  , q , k ,  n1: integer; 
    n2: integer;
    left: arr;
    right: arr;
  
begin
 
  n1 := mid - L + 1;
  n2 := R - mid;

  for i:= 1 to n1 do
    left[i] := a[i + L - 1];

  for i:= 1 to n2 do
    right[i] := a[i + mid];
  
  p := 1; q := 1; k := L;
  while( p <= n1) and (q <= n2) do
    begin
      if(left[p] <= right[q]) then
        begin
          a[k] := left[p];
          k += 1;
          p += 1;
        end
      else
        begin
          a[k] := right[q];
          k += 1;
          q += 1;
        end;
    end;
  
  while(p <= n1) do
    begin
      a[k] := left[p];
      k += 1;
      p += 1;
    end;

  while(q <= n2) do
    begin
      a[k] := right[q];
      k += 1;
      q += 1;
    end;

  
end;


procedure mergesort(var a:arr; L , R: integer);
var
  mid: integer;
begin
  if( L < R ) then
    begin
      mid := ( L + R )>>1;
      mergesort(a , L , mid);
      mergesort(a , mid + 1, R);
      merge(a , L , mid , R);
    end;
end;


var
  i , test , n ,   x: integer; a: arr;
  begin
  read(test);
  while(test > 0) do
    begin
      read(n);
      for i:= 1 to n do
        begin
          read(x);
          a[i] := x;
        end;
      mergesort(a , 1 , n);
      writeln('merge sort');
      for i:= 1 to n do
        write(a[i] , ' ');
      writeln();
      test -= 1;
    end; 
  end.
