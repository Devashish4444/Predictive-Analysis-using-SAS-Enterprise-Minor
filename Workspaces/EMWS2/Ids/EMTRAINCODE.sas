*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\apporto.com\dfs\UNCC\Users\skokse_uncc\Desktop\BIA-PROJECT\Predictive Analysis\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids_DATA (label="")
/ view=EMWS2.Ids_DATA
;
set DATA.CATALOG2010;
run;
