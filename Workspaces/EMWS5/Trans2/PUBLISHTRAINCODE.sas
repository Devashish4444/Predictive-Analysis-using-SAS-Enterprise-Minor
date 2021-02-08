*------------------------------------------------------------*;
* TRANSFORM: GiftCntAll , Quantile(4);
*------------------------------------------------------------*;
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
*------------------------------------------------------------*;
* TRANSFORM: MonetaryValue , Quantile(4);
*------------------------------------------------------------*;
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
*------------------------------------------------------------*;
* TRANSFORM: Rev_GiftTimeLast , Quantile(4);
*------------------------------------------------------------*;
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
