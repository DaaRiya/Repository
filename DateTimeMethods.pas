unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  Result := false;
  if ((year mod 4 = 0)and (year mod 100<>0))or (year mod 400=0) then
    Result := True;  
end;

function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1,3,5,7,8,10,12:result:=31;
    2: if IsLeapYear(year) then
      result:=29 
      else
      result:=28;
    4,6,9,11:result:=30;
  end;
end;

function f(p:DateTime):DateTime:=new DateTime(1,p.Month,p.Day);

//function LaterInDay(p1, p2: DateTime): DateTime:=f(p1)>f(p2)?p1:p2;

function LaterInYear(p1, p2: DateTime): DateTime := f(p1)>f(p2)?p1:p2;

function DaysInYear(year: integer): integer := 0;

function DaysInYearRange(year1, year2: integer): integer := 0;

function SecondsInHours(hours: integer): integer := 0;

begin
   
end. 