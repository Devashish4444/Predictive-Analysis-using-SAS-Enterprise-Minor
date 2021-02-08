label PCTL_GiftCntAll = 'Transformed: Gift Count All Months';
length PCTL_GiftCntAll $36;
if (GiftCntAll eq .) then PCTL_GiftCntAll="";
else
if (GiftCntAll < 4) then
PCTL_GiftCntAll = "01:low-4";
else
if (GiftCntAll >= 4 and GiftCntAll < 8) then
PCTL_GiftCntAll = "02:4-8";
else
if (GiftCntAll >= 8 and GiftCntAll < 15) then
PCTL_GiftCntAll = "03:8-15";
else
if (GiftCntAll >= 15) then
PCTL_GiftCntAll = "04:15-high";
