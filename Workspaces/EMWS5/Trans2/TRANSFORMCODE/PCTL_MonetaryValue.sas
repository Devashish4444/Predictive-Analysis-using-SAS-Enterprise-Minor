label PCTL_MonetaryValue = 'Transformed MonetaryValue';
length PCTL_MonetaryValue $36;
if (MonetaryValue eq .) then PCTL_MonetaryValue="";
else
if (MonetaryValue < 44) then
PCTL_MonetaryValue = "01:low-44";
else
if (MonetaryValue >= 44 and MonetaryValue < 81.05) then
PCTL_MonetaryValue = "02:44-81.05";
else
if (MonetaryValue >= 81.05 and MonetaryValue < 134.03) then
PCTL_MonetaryValue = "03:81.05-134.03";
else
if (MonetaryValue >= 134.03) then
PCTL_MonetaryValue = "04:134.03-high";
