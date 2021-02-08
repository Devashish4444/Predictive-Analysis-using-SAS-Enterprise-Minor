proc univariate data=data.PVA97NK NORMAL PLOT;
VAR GIFTCNTALL PROMCNTALL; RUN;

DATA SUBSET; SET DATA.CATALOG2010;
IF PROMCNTALL> (65+1.5*(65-29))THEN DELETE;
IF PROMCNTALL < (29-1.5*(65-29))THEN DELETE;
IF GIFTCNTALL>(15+1.5*(15-4)) THEN DELETE;
IF GIFTCNTALL<(4-1.5*(15-4)) THEN DELETE;

RUN;
proc univariate data=SUBSET NORMAL PLOT;
VAR GIFTCNTALL PROMCNTALL; RUN;
