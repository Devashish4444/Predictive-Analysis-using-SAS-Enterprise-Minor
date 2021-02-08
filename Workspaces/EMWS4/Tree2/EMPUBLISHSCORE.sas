****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_TargetBuy  $   12;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_TargetBuy0 = 'Predicted: TargetBuy=0' ;
label P_TargetBuy1 = 'Predicted: TargetBuy=1' ;
label Q_TargetBuy0 = 'Unadjusted P: TargetBuy=0' ;
label Q_TargetBuy1 = 'Unadjusted P: TargetBuy=1' ;
label V_TargetBuy0 = 'Validated: TargetBuy=0' ;
label V_TargetBuy1 = 'Validated: TargetBuy=1' ;
label I_TargetBuy = 'Into: TargetBuy' ;
label U_TargetBuy = 'Unnormalized Into: TargetBuy' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_1 $      1; DROP _ARBFMT_1;
_ARBFMT_1 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DemAge ) AND
  DemAge  <                 39.5 THEN DO;
  IF  NOT MISSING(DemAffl ) AND
    DemAffl  <                  9.5 THEN DO;
    _ARBFMT_1 = PUT( DemGender , $1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('M' ) THEN DO;
      _NODE_  =                   15;
      _LEAF_  =                    2;
      P_TargetBuy0  =      0.6255707762557;
      P_TargetBuy1  =     0.37442922374429;
      Q_TargetBuy0  =      0.6255707762557;
      Q_TargetBuy1  =     0.37442922374429;
      V_TargetBuy0  =      0.6826923076923;
      V_TargetBuy1  =     0.31730769230769;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    ELSE IF _ARBFMT_1 IN ('F' ) THEN DO;
      IF  NOT MISSING(DemAffl ) AND
        DemAffl  <                  6.5 THEN DO;
        _NODE_  =                   38;
        _LEAF_  =                    3;
        P_TargetBuy0  =     0.60115606936416;
        P_TargetBuy1  =     0.39884393063583;
        Q_TargetBuy0  =     0.60115606936416;
        Q_TargetBuy1  =     0.39884393063583;
        V_TargetBuy0  =      0.5047619047619;
        V_TargetBuy1  =     0.49523809523809;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      ELSE DO;
        _NODE_  =                   39;
        _LEAF_  =                    4;
        P_TargetBuy0  =     0.38622754491017;
        P_TargetBuy1  =     0.61377245508982;
        Q_TargetBuy0  =     0.38622754491017;
        Q_TargetBuy1  =     0.61377245508982;
        V_TargetBuy0  =     0.39423076923076;
        V_TargetBuy1  =     0.60576923076923;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      END;
    ELSE DO;
      _NODE_  =                   14;
      _LEAF_  =                    1;
      P_TargetBuy0  =     0.84931506849315;
      P_TargetBuy1  =     0.15068493150684;
      Q_TargetBuy0  =     0.84931506849315;
      Q_TargetBuy1  =     0.15068493150684;
      V_TargetBuy0  =                 0.84;
      V_TargetBuy1  =                 0.16;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    END;
  ELSE IF  NOT MISSING(DemAffl ) AND
                    14.5 <= DemAffl  THEN DO;
    _NODE_  =                    7;
    _LEAF_  =                    8;
    P_TargetBuy0  =     0.04712041884816;
    P_TargetBuy1  =     0.95287958115183;
    Q_TargetBuy0  =     0.04712041884816;
    Q_TargetBuy1  =     0.95287958115183;
    V_TargetBuy0  =     0.06194690265486;
    V_TargetBuy1  =     0.93805309734513;
    I_TargetBuy  = '1' ;
    U_TargetBuy  =                    1;
    END;
  ELSE DO;
    _ARBFMT_1 = PUT( DemGender , $1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('F' ) THEN DO;
      _NODE_  =                   17;
      _LEAF_  =                    5;
      P_TargetBuy0  =     0.22271714922049;
      P_TargetBuy1  =     0.77728285077951;
      Q_TargetBuy0  =     0.22271714922049;
      Q_TargetBuy1  =     0.77728285077951;
      V_TargetBuy0  =     0.20081967213114;
      V_TargetBuy1  =     0.79918032786885;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE IF _ARBFMT_1 IN ('M' ) THEN DO;
      _NODE_  =                   18;
      _LEAF_  =                    6;
      P_TargetBuy0  =      0.4388489208633;
      P_TargetBuy1  =     0.56115107913669;
      Q_TargetBuy0  =      0.4388489208633;
      Q_TargetBuy1  =     0.56115107913669;
      V_TargetBuy0  =     0.58571428571428;
      V_TargetBuy1  =     0.41428571428571;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE DO;
      _NODE_  =                   19;
      _LEAF_  =                    7;
      P_TargetBuy0  =     0.58730158730158;
      P_TargetBuy1  =     0.41269841269841;
      Q_TargetBuy0  =     0.58730158730158;
      Q_TargetBuy1  =     0.41269841269841;
      V_TargetBuy0  =     0.66666666666666;
      V_TargetBuy1  =     0.33333333333333;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    END;
  END;
ELSE IF  NOT MISSING(DemAge ) AND
                  44.5 <= DemAge  THEN DO;
  IF  NOT MISSING(DemAffl ) AND
                    10.5 <= DemAffl  AND
    DemAffl  <                 15.5 THEN DO;
    _NODE_  =                   12;
    _LEAF_  =                   14;
    P_TargetBuy0  =     0.73411154345006;
    P_TargetBuy1  =     0.26588845654993;
    Q_TargetBuy0  =     0.73411154345006;
    Q_TargetBuy1  =     0.26588845654993;
    V_TargetBuy0  =     0.74371859296482;
    V_TargetBuy1  =     0.25628140703517;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  ELSE IF  NOT MISSING(DemAffl ) AND
                    15.5 <= DemAffl  THEN DO;
    _NODE_  =                   13;
    _LEAF_  =                   15;
    P_TargetBuy0  =     0.33734939759036;
    P_TargetBuy1  =     0.66265060240963;
    Q_TargetBuy0  =     0.33734939759036;
    Q_TargetBuy1  =     0.66265060240963;
    V_TargetBuy0  =     0.32926829268292;
    V_TargetBuy1  =     0.67073170731707;
    I_TargetBuy  = '1' ;
    U_TargetBuy  =                    1;
    END;
  ELSE DO;
    _NODE_  =                   11;
    _LEAF_  =                   13;
    P_TargetBuy0  =     0.89780775716694;
    P_TargetBuy1  =     0.10219224283305;
    Q_TargetBuy0  =     0.89780775716694;
    Q_TargetBuy1  =     0.10219224283305;
    V_TargetBuy0  =     0.89496855345911;
    V_TargetBuy1  =     0.10503144654088;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(DemAffl ) AND
    DemAffl  <                  8.5 THEN DO;
    _NODE_  =                    8;
    _LEAF_  =                    9;
    P_TargetBuy0  =     0.78992628992629;
    P_TargetBuy1  =     0.21007371007371;
    Q_TargetBuy0  =     0.78992628992629;
    Q_TargetBuy1  =     0.21007371007371;
    V_TargetBuy0  =     0.77220956719817;
    V_TargetBuy1  =     0.22779043280182;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  ELSE IF  NOT MISSING(DemAffl ) AND
                     8.5 <= DemAffl  AND
    DemAffl  <                 11.5 THEN DO;
    _NODE_  =                    9;
    _LEAF_  =                   10;
    P_TargetBuy0  =     0.64932562620423;
    P_TargetBuy1  =     0.35067437379576;
    Q_TargetBuy0  =     0.64932562620423;
    Q_TargetBuy1  =     0.35067437379576;
    V_TargetBuy0  =     0.66417910447761;
    V_TargetBuy1  =     0.33582089552238;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  ELSE DO;
    _ARBFMT_1 = PUT( DemGender , $1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('F' ) THEN DO;
      _NODE_  =                   29;
      _LEAF_  =                   11;
      P_TargetBuy0  =     0.29616724738675;
      P_TargetBuy1  =     0.70383275261324;
      Q_TargetBuy0  =     0.29616724738675;
      Q_TargetBuy1  =     0.70383275261324;
      V_TargetBuy0  =     0.38961038961038;
      V_TargetBuy1  =     0.61038961038961;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE DO;
      _NODE_  =                   30;
      _LEAF_  =                   12;
      P_TargetBuy0  =     0.57857142857142;
      P_TargetBuy1  =     0.42142857142857;
      Q_TargetBuy0  =     0.57857142857142;
      Q_TargetBuy1  =     0.42142857142857;
      V_TargetBuy0  =     0.63302752293577;
      V_TargetBuy1  =     0.36697247706422;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    END;
  END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;