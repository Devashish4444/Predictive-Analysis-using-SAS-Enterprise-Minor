*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS3 "\\apporto.com\dfs\UNCC\Users\skokse_uncc\Desktop\BIA-PROJECT\Predictive Analysis\Workspaces\EMWS3";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS3.Ids_DATA (label="")
/ view=EMWS3.Ids_DATA
;
set DATA.CATALOG2010;
run;
