drop _temp_;
if (P_TargetBuy1 ge 0.77702702702702) then do;
b_TargetBuy = 1;
end;
else
if (P_TargetBuy1 ge 0.61377245508982) then do;
b_TargetBuy = 2;
end;
else
if (P_TargetBuy1 ge 0.45797101449275) then do;
b_TargetBuy = 3;
end;
else
if (P_TargetBuy1 ge 0.37900874635568) then do;
b_TargetBuy = 4;
end;
else
if (P_TargetBuy1 ge 0.34426229508196) then do;
b_TargetBuy = 5;
end;
else
if (P_TargetBuy1 ge 0.23166666666666) then do;
b_TargetBuy = 6;
end;
else
do;
_temp_ = dmran(1234);
b_TargetBuy = floor(7 + 14*_temp_);
end;
