*------------------------------------------------------------*;
* Variable Macros;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* General Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_VARS = 93;
   %macro EM_VARS;
    ACTBUY BOTHPAYM BUYPROP CATALOGCNT CCPAYM CUST_ID DAYLAST DEPT01 DEPT02 DEPT03
   DEPT04 DEPT05 DEPT06 DEPT07 DEPT08 DEPT09 DEPT10 DEPT11 DEPT12 DEPT13 DEPT14
   DEPT15 DEPT16 DEPT17 DEPT18 DEPT19 DEPT20 DEPT21 DEPT22 DEPT23 DEPT24 DEPT25
   DEPT26 DEPT27 DOLINDEA DOLINDET DOLL24 DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04
   DOLLARQ05 DOLLARQ06 DOLLARQ07 DOLLARQ08 DOLLARQ09 DOLLARQ10 DOLLARQ11 DOLLARQ12
   DOLLARQ13 DOLLARQ14 DOLLARQ15 DOLLARQ16 DOLLARQ17 DOLLARQ18 DOLLARQ19 DOLLARQ20
   DOLLARQ21 DOLLARQ22 DOLNETDA DOLNETDT FREQPRCH METHPAYM MONLAST ORDERSIZE
   PCPAYM RESPOND TENURE TOTORDQ01 TOTORDQ02 TOTORDQ03 TOTORDQ04 TOTORDQ05
   TOTORDQ06 TOTORDQ07 TOTORDQ08 TOTORDQ09 TOTORDQ10 TOTORDQ11 TOTORDQ12 TOTORDQ13
   TOTORDQ14 TOTORDQ15 TOTORDQ16 TOTORDQ17 TOTORDQ18 TOTORDQ19 TOTORDQ20 TOTORDQ21
   TOTORDQ22 UNITSIDD UNITSLAP UNTLANPO
   %mend EM_VARS;
%let EM_NUM_CLASS = 5;
   %macro EM_CLASS;
    BOTHPAYM CCPAYM METHPAYM PCPAYM RESPOND
   %mend EM_CLASS;
%let EM_NUM_INTERVAL = 88;
   %macro EM_INTERVAL;
    ACTBUY BUYPROP CATALOGCNT CUST_ID DAYLAST DEPT01 DEPT02 DEPT03 DEPT04 DEPT05
   DEPT06 DEPT07 DEPT08 DEPT09 DEPT10 DEPT11 DEPT12 DEPT13 DEPT14 DEPT15 DEPT16
   DEPT17 DEPT18 DEPT19 DEPT20 DEPT21 DEPT22 DEPT23 DEPT24 DEPT25 DEPT26 DEPT27
   DOLINDEA DOLINDET DOLL24 DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04 DOLLARQ05
   DOLLARQ06 DOLLARQ07 DOLLARQ08 DOLLARQ09 DOLLARQ10 DOLLARQ11 DOLLARQ12 DOLLARQ13
   DOLLARQ14 DOLLARQ15 DOLLARQ16 DOLLARQ17 DOLLARQ18 DOLLARQ19 DOLLARQ20 DOLLARQ21
   DOLLARQ22 DOLNETDA DOLNETDT FREQPRCH MONLAST ORDERSIZE TENURE TOTORDQ01
   TOTORDQ02 TOTORDQ03 TOTORDQ04 TOTORDQ05 TOTORDQ06 TOTORDQ07 TOTORDQ08 TOTORDQ09
   TOTORDQ10 TOTORDQ11 TOTORDQ12 TOTORDQ13 TOTORDQ14 TOTORDQ15 TOTORDQ16 TOTORDQ17
   TOTORDQ18 TOTORDQ19 TOTORDQ20 TOTORDQ21 TOTORDQ22 UNITSIDD UNITSLAP UNTLANPO
   %mend EM_INTERVAL;
%let EM_NUM_REPORT_VARS = 0;
   %macro  EM_REPORT_VARS; %mend;
%let EM_NUM_CLASS_REPORT = 0;
   %macro  EM_CLASS_REPORT; %mend;
%let EM_NUM_INTERVAL_REPORT = 0;
   %macro  EM_INTERVAL_REPORT; %mend;
*------------------------------------------------------------*;
* Target Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_TARGET = 2;
   %macro EM_TARGET;
    ORDERSIZE RESPOND
   %mend EM_TARGET;
%let EM_NUM_TARGET_LEVEL = 2;
   %macro EM_TARGET_LEVEL;
    INTERVAL BINARY
   %mend EM_TARGET_LEVEL;
%let EM_NUM_BINARY_TARGET = 1;
   %macro EM_BINARY_TARGET;
    RESPOND
   %mend EM_BINARY_TARGET;
%let EM_NUM_ORDINAL_TARGET = 0;
   %macro  EM_ORDINAL_TARGET; %mend;
%let EM_NUM_NOMINAL_TARGET = 0;
   %macro  EM_NOMINAL_TARGET; %mend;
%let EM_NUM_INTERVAL_TARGET = 1;
   %macro EM_INTERVAL_TARGET;
    ORDERSIZE
   %mend EM_INTERVAL_TARGET;
*------------------------------------------------------------*;
* Input Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_INPUT = 90;
   %macro EM_INPUT;
    ACTBUY BOTHPAYM BUYPROP CATALOGCNT CCPAYM DAYLAST DEPT01 DEPT02 DEPT03 DEPT04
   DEPT05 DEPT06 DEPT07 DEPT08 DEPT09 DEPT10 DEPT11 DEPT12 DEPT13 DEPT14 DEPT15
   DEPT16 DEPT17 DEPT18 DEPT19 DEPT20 DEPT21 DEPT22 DEPT23 DEPT24 DEPT25 DEPT26
   DEPT27 DOLINDEA DOLINDET DOLL24 DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04
   DOLLARQ05 DOLLARQ06 DOLLARQ07 DOLLARQ08 DOLLARQ09 DOLLARQ10 DOLLARQ11 DOLLARQ12
   DOLLARQ13 DOLLARQ14 DOLLARQ15 DOLLARQ16 DOLLARQ17 DOLLARQ18 DOLLARQ19 DOLLARQ20
   DOLLARQ21 DOLLARQ22 DOLNETDA DOLNETDT FREQPRCH METHPAYM MONLAST PCPAYM TENURE
   TOTORDQ01 TOTORDQ02 TOTORDQ03 TOTORDQ04 TOTORDQ05 TOTORDQ06 TOTORDQ07 TOTORDQ08
   TOTORDQ09 TOTORDQ10 TOTORDQ11 TOTORDQ12 TOTORDQ13 TOTORDQ14 TOTORDQ15 TOTORDQ16
   TOTORDQ17 TOTORDQ18 TOTORDQ19 TOTORDQ20 TOTORDQ21 TOTORDQ22 UNITSIDD UNITSLAP
   UNTLANPO
   %mend EM_INPUT;
%let EM_NUM_BINARY_INPUT = 3;
   %macro EM_BINARY_INPUT;
    BOTHPAYM CCPAYM PCPAYM
   %mend EM_BINARY_INPUT;
%let EM_NUM_ORDINAL_INPUT = 0;
   %macro  EM_ORDINAL_INPUT; %mend;
%let EM_NUM_NOMINAL_INPUT = 1;
   %macro EM_NOMINAL_INPUT;
    METHPAYM
   %mend EM_NOMINAL_INPUT;
%let EM_NUM_INTERVAL_INPUT = 86;
   %macro EM_INTERVAL_INPUT;
    ACTBUY BUYPROP CATALOGCNT DAYLAST DEPT01 DEPT02 DEPT03 DEPT04 DEPT05 DEPT06
   DEPT07 DEPT08 DEPT09 DEPT10 DEPT11 DEPT12 DEPT13 DEPT14 DEPT15 DEPT16 DEPT17
   DEPT18 DEPT19 DEPT20 DEPT21 DEPT22 DEPT23 DEPT24 DEPT25 DEPT26 DEPT27 DOLINDEA
   DOLINDET DOLL24 DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04 DOLLARQ05 DOLLARQ06
   DOLLARQ07 DOLLARQ08 DOLLARQ09 DOLLARQ10 DOLLARQ11 DOLLARQ12 DOLLARQ13 DOLLARQ14
   DOLLARQ15 DOLLARQ16 DOLLARQ17 DOLLARQ18 DOLLARQ19 DOLLARQ20 DOLLARQ21 DOLLARQ22
   DOLNETDA DOLNETDT FREQPRCH MONLAST TENURE TOTORDQ01 TOTORDQ02 TOTORDQ03
   TOTORDQ04 TOTORDQ05 TOTORDQ06 TOTORDQ07 TOTORDQ08 TOTORDQ09 TOTORDQ10 TOTORDQ11
   TOTORDQ12 TOTORDQ13 TOTORDQ14 TOTORDQ15 TOTORDQ16 TOTORDQ17 TOTORDQ18 TOTORDQ19
   TOTORDQ20 TOTORDQ21 TOTORDQ22 UNITSIDD UNITSLAP UNTLANPO
   %mend EM_INTERVAL_INPUT;
*------------------------------------------------------------*;
* Rejected Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_REJECTED = 0;
   %macro  EM_REJECTED; %mend;
%let EM_NUM_BINARY_REJECTED = 0;
   %macro  EM_BINARY_REJECTED; %mend;
%let EM_NUM_ORDINAL_REJECTED = 0;
   %macro  EM_ORDINAL_REJECTED; %mend;
%let EM_NUM_NOMINAL_REJECTED = 0;
   %macro  EM_NOMINAL_REJECTED; %mend;
%let EM_NUM_INTERVAL_REJECTED = 0;
   %macro  EM_INTERVAL_REJECTED; %mend;
*------------------------------------------------------------*;
* Misc Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_ASSESS = 0;
   %macro  EM_ASSESS; %mend;
%let EM_NUM_INTERVAL_ASSESS = 0;
   %macro  EM_INTERVAL_ASSESS; %mend;
%let EM_NUM_CLASS_ASSESS = 0;
   %macro  EM_CLASS_ASSESS; %mend;
%let EM_NUM_CENSOR = 0;
   %macro  EM_CENSOR; %mend;
%let EM_NUM_CLASSIFICATION = 0;
   %macro  EM_CLASSIFICATION; %mend;
%let EM_NUM_COST = 0;
   %macro  EM_COST; %mend;
%let EM_NUM_CROSSID = 0;
   %macro  EM_CROSSID; %mend;
%let EM_NUM_DECISION = 0;
   %macro  EM_DECISION; %mend;
%let EM_NUM_FREQ = 0;
   %macro  EM_FREQ; %mend;
%let EM_NUM_ID = 1;
   %macro EM_ID;
    CUST_ID
   %mend EM_ID;
%let EM_NUM_LABEL = 0;
   %macro  EM_LABEL; %mend;
%let EM_NUM_PREDICT = 0;
   %macro  EM_PREDICT; %mend;
%let EM_NUM_REFERRER = 0;
   %macro  EM_REFERRER; %mend;
%let EM_NUM_REJECTS = 5;
   %macro EM_REJECTS;
    COUNTY DTBUYLST DTBUYORG STATE ZIP
   %mend EM_REJECTS;
%let EM_NUM_RESIDUAL = 0;
   %macro  EM_RESIDUAL; %mend;
%let EM_NUM_SEGMENT = 0;
   %macro  EM_SEGMENT; %mend;
%let EM_NUM_SEQUENCE = 0;
   %macro  EM_SEQUENCE; %mend;
%let EM_NUM_TEXT = 0;
   %macro  EM_TEXT; %mend;
%let EM_NUM_TIMEID = 0;
   %macro  EM_TIMEID; %mend;
%let EM_NUM_TREATMENT = 0;
   %macro  EM_TREATMENT; %mend;
%let EM_NUM_KEY = 0;
   %macro  EM_KEY; %mend;
*------------------------------------------------------------*;
* End Create EM Macro Variables and Macros;
*------------------------------------------------------------*;
