label PCTL_Rev_GiftTimeLast = 'Transformed Rev_GiftTimeLast';
length PCTL_Rev_GiftTimeLast $36;
if (Rev_GiftTimeLast eq .) then PCTL_Rev_GiftTimeLast="";
else
if (Rev_GiftTimeLast < 16) then
PCTL_Rev_GiftTimeLast = "01:low-16";
else
if (Rev_GiftTimeLast >= 16 and Rev_GiftTimeLast < 18) then
PCTL_Rev_GiftTimeLast = "02:16-18";
else
if (Rev_GiftTimeLast >= 18 and Rev_GiftTimeLast < 20) then
PCTL_Rev_GiftTimeLast = "03:18-20";
else
if (Rev_GiftTimeLast >= 20) then
PCTL_Rev_GiftTimeLast = "04:20-high";
