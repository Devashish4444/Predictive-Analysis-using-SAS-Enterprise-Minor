*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS7 "\\apporto.com\dfs\UNCC\Users\skokse_uncc\Desktop\BIA-PROJECT\Predictive Analysis\Workspaces\EMWS7";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS7.Ids_DATA (label="")
/ view=EMWS7.Ids_DATA
;
set DATA.CATALOG2010;
run;
