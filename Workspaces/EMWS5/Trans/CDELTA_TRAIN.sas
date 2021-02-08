*------------------------------------------------------------*;
* Formula Code;
*------------------------------------------------------------*;

if NAME="Rev_GiftTimeLast" then do;
ROLE ="INPUT";
REPORT ="N";
LEVEL ="INTERVAL";
end;
if NAME="GiftTimeLast" then delete;

if NAME="MonetaryValue" then do;
ROLE ="INPUT";
REPORT ="N";
LEVEL ="INTERVAL";
end;
