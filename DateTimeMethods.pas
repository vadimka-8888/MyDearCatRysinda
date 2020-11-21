﻿unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  Result := False;
  If year mod 4 = 0 then
    Result := True;
end;
function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1, 3, 5, 7, 8, 10, 12 : Result := 31;
    2 : Result := 28;
    4, 6, 9, 11 : Result := 30;
    else Result := 0;
  end;
end;
function LaterInDay(p1, p2: DateTime): DateTime := p1;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer;
begin
  If IsLeapYear(year) then
    Result := 366
  else Result := 365;
end;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin

end.
