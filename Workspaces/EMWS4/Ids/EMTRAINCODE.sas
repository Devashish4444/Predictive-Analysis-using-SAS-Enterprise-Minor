*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS4 "\\apporto.com\dfs\UNCC\Users\skokse_uncc\Desktop\BIA-PROJECT\Predictive Analysis\Workspaces\EMWS4";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS4.Ids_DATA (label="")
/ view=EMWS4.Ids_DATA
;
set DATA.ORGANICS;
run;
