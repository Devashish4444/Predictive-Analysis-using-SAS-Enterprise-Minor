
if NAME="PCTL_GiftCntAll" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="GiftCntAll" then delete;

if NAME="PCTL_MonetaryValue" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="MonetaryValue" then delete;

if NAME="PCTL_Rev_GiftTimeLast" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="Rev_GiftTimeLast" then delete;
