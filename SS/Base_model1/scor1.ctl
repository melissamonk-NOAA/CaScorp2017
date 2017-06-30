#V3.30.05.01-opt
#_data_and_control_files: scor1.dat // scor1.ctl
#_SS-V3.30.05.01-opt;_2017_06_21;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
#_SS-V3.30.05.01-opt;user_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_SS-V3.30.05.01-opt;user_info_available_at:https://vlab.ncep.noaa.gov/group/stock-synthesis
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and also read and use growth parameters
1  #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
2 # recr_dist_method for parameters:  2=main effects for GP, Area, Settle timing; 3=each Settle entity
1 # not yet implemented; Future usage: Spawner-Recruitment: 1=global; 2=by area
1 #  number of recruitment settlement assignments 
0 # unused option
#GPattern month  area  age (for each settlement assignment)
 1 1 1 0
#
#_Cond 0 # N_movement_definitions goes here if Nareas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
3 #_Nblock_Patterns
 1 2 1 #_blocks_per_pattern 
# begin and end years of blocks
 1999 2017
 2000 2005 2006 2017
 2000 2017
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#  autogen
1 1 1 1 1 # autogen
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if min=-12345
# 1st element for biology, 2nd for SR, 3rd for Q, 5th for selex, 4th reserved
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement 
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K; 4=not implemented
1 #_Growth_Age_for_L1
20 #_Growth_Age_for_L2 (999 to use as Linf)
0.25714 #_exponential decay for growth above maxage (fixed at 0.2 in 3.24; value should approx initial Z; -999 replicates 3.24)
0  #_placeholder for future growth feature
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
2 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_ LO HI INIT PRIOR PR_SD PR_type PHASE env_var&link dev_link dev_minyr dev_maxyr dev_PH Block Block_Fxn
 0.01 1 0.25714 -1.3581 0.438438 3 -3 0 0 0 0 1 0 0 # NatM_p_1_Fem_GP_1
 2 30 13.926 14 1000 0 2 0 0 0 0 1 0 0 # L_at_Amin_Fem_GP_1
 30 50 33.4088 31 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.5 0.24914 0.27 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Fem_GP_1
 0.02 0.5 0.116574 0.1 1000 0 3 0 0 0 0 1 0 0 # CV_young_Fem_GP_1
 0.02 0.75 0.1104 0.15 1000 0 3 0 0 0 0 1 0 0 # CV_old_Fem_GP_1
 -3 3 1.55e-005 1.55e-005 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_1_Fem
 2 4 3.05765 3.05765 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_2_Fem
 10 30 18 18 1000 0 -3 0 0 0 0 1 0 0 # Mat50%_Fem
 -3 3 -1.2 -0.465636 1000 0 -3 0 0 0 0 1 0 0 # Mat_slope_Fem
 -3 3 1 1 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_slope_wt_Fem
 -1 1 -0.202664 0 99 6 2 0 0 0 0 1 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0 0 1000 0 -2 0 0 0 0 1 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.16994 -0.16 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Mal_GP_1
 -3 3 -0.199606 0.32 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Mal_GP_1
 -3 3 0.971464 0.51 1000 0 3 0 0 0 0 1 0 0 # CV_young_Mal_GP_1
 -3 3 -0.406767 -1.07 1000 0 3 0 0 0 0 1 0 0 # CV_old_Mal_GP_1
 0 1 1.91e-005 1.91e-005 1000 0 -5 0 0 0 0 1 0 0 # Wtlen_1_Mal
 2 4 2.98055 2.98055 1000 0 -5 0 0 0 0 1 0 0 # Wtlen_2_Mal
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_GP_1
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_Area_1
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_month_7
 1 1 1 1 1 0 -1 0 0 0 0 1 0 0 # CohortGrowDev
 1e-006 0.999999 0.5 0.5 1000 0 -4 0 0 0 0 1 0 0 # FracFemale_GP_1
#
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm; 8=Shepard_3Parm
0  # 0/1 to use steepness in initial equ recruitment calculation
0  #  future feature:  0/1 to make realized sigmaR a function of SR curvature
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn #  parm_name
             0            31       8.00311          10.8            99             0          1          0          0          0          0          1          0          0 # SR_LN(R0)
          0.21          0.99         0.718         0.718         0.158             2         -2          0          0          0          0          1          0          0 # SR_BH_steep
             0             2           0.6           0.6            99             0         -2          0          0          0          0          1          0          0 # SR_sigmaR
            -5             5             0             0            99             0         -4          0          0          0          0          1          0          0 # SR_regime
             0           0.5             0             0            99             0         -3          0          0          0          0          1          0          0 # SR_autocorr
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1985 # first year of main recr_devs; early devs can preceed this era
2015 # last year of main recr_devs; forecast devs start in following year
3 #_recdev phase 
1 # (0/1) to read 13 advanced options
 1966 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 4 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1938.6372 #_last_early_yr_nobias_adj_in_MPD
 2009.0560 #_first_yr_fullbias_adj_in_MPD
 2014.8812 #_last_yr_fullbias_adj_in_MPD
 2015.9591 #_first_recent_yr_nobias_adj_in_MPD
 0.6483 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#  1966E 1967E 1968E 1969E 1970E 1971E 1972E 1973E 1974E 1975E 1976E 1977E 1978E 1979E 1980E 1981E 1982E 1983E 1984E 1985R 1986R 1987R 1988R 1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 2002R 2003R 2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2013R 2014R 2015R 2016F 2017F 2018F 2019F 2020F 2021F 2022F 2023F 2024F 2025F 2026F 2027F 2028F
#  -0.156717 -0.158342 -0.213862 -0.287439 -0.392223 -0.581556 -0.674603 -0.677409 -0.362102 0.821946 0.541383 0.83036 -0.0824607 -0.658666 -0.905716 -0.828547 -0.520396 -0.0579644 1.02669 1.10143 -0.162648 -0.653044 -0.774758 -0.866241 -0.607335 0.702956 0.48075 1.19214 0.109428 -0.114149 0.83103 0.160528 0.450769 0.345489 -0.172859 0.275635 -0.399792 -0.565814 -0.402289 0.358953 -0.29059 -0.270582 -0.310486 0.0245845 -0.324446 -0.909156 -0.874514 0.44097 0.176622 1.04742 0 0 0 0 0 0 0 0 0 0 0 0 0
# implementation error by year in forecast:  0 0 0 0 0 0 0 0 0 0 0 0
#
#Fishing Mortality info 
0.5 # F ballpark
-1999 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
3 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
5  # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#_ LO HI INIT PRIOR PR_SD  PR_type  PHASE
#2028 2037
# F rates by fleet
# Yr:  1916 1917 1918 1919 1920 1921 1922 1923 1924 1925 1926 1927 1928 1929 1930 1931 1932 1933 1934 1935 1936 1937 1938 1939 1940 1941 1942 1943 1944 1945 1946 1947 1948 1949 1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 2024 2025 2026 2027 2028
# seas:  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# ComHL 0.00188894 0.00411626 0.00669573 0.00605512 0.00852928 0.0140512 0.0102027 0.0147301 0.0268692 0.056378 0.0279289 0.0295836 0.0254693 0.0284102 0.0234285 0.0242432 0.0226574 0.0169719 0.0173845 0.0178354 0.0289218 0.0364914 0.0418682 0.0350243 0.0334586 0.0260331 0.0119805 0.00964187 0.0140382 0.0245116 0.0384225 0.0336763 0.0424648 0.0412683 0.0397386 0.0290909 0.0240262 0.0343136 0.0387971 0.0304841 0.0289911 0.02103 0.0183953 0.0104352 0.00803105 0.00725642 0.0155944 0.0204252 0.0213414 0.0213908 0.0238634 0.0159767 0.0257896 0.0215937 0.023119 0.0124282 0.0203484 0.0129637 0.0316779 0.0387019 0.0152299 0.00571052 0.00810103 0.00657724 0.0100843 0.0101853 0.0119251 0.00761476 0.00736294 0.0100595 0.00375377 0.00527771 0.00485534 0.00943331 0.0197812 0.0138965 0.0213831 0.0112015 0.0280496 0.0176306 0.0132338 0.0121072 0.0186847 0.0268644 0.0100757 0.0120215 0.00842724 0.00174542 0.00161315 0.00119574 0.000735579 0.00178289 0.00250958 0.0031742 0.00333698 0.00379418 0.0039913 0.00226696 0.00143391 0.00332429 0.00362176 0.0101029 0.0100798 0.00997665 0.00963157 0.008945 0.0082793 0.00777872 0.0074022 0.00710174 0.00684714 0.00661981 0.00640824
# ComNet 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.17997e-005 0.000110191 0.00043841 9.48273e-005 0.000183801 4.69572e-005 0.00279784 1.25493e-005 0.00013252 0.00113679 0.000759308 0.000392101 0.00389875 0.000890997 0.000581562 0.000793831 0.00196279 0.00139098 0.00281985 0.00228015 0.0016641 0.00380296 0.00227091 0.00256925 0.00380544 0.00154608 0.000726352 0.000782361 0.00228556 0.000919403 0.00154442 0.00171505 0.00223559 0.000987984 0.000290039 0.000504248 0.000564737 0.000377698 0.000199094 0.00028372 0.000143004 0.000160325 0.000282957 0.000220427 0.000180144 5.07578e-005 5.18248e-005 5.6723e-006 1.58228e-005 1.57851e-005 1.56238e-005 1.50835e-005 1.40084e-005 1.29661e-005 1.21822e-005 1.15926e-005 1.11221e-005 1.07234e-005 1.03674e-005 1.0036e-005
# ComTrawl 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000182162 0 0 7.92438e-005 0.000133037 0 2.21785e-005 6.27464e-005 0 2.45349e-006 2.13189e-006 0 4.17809e-006 0 0 0.000111764 1.8997e-005 1.78973e-005 7.89443e-005 1.70055e-006 1.26701e-005 0.000479847 0.00331628 0.00303998 0.00633635 0.0105312 0.012058 0.00850717 0.0079503 0.00970484 0.00570971 0.00392389 0.00252163 0.00180657 0.0022465 0.00190339 0.00253432 0.00118555 0.00138897 0.00088027 0.00029134 0.000204831 0.0012327 0.000528013 0.0010874 0.000179556 0.000188888 0.000204912 0.000571599 0.000570291 0.000564457 0.000544933 0.000506089 0.000468425 0.000440103 0.000418801 0.000401801 0.000387397 0.000374535 0.000362564
# RecPR 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00014574 0.000293129 0.000440917 0.00058902 0.000735187 0.000878936 0.00102242 0.00117148 0.000823663 0.00140626 0.00109992 0.00102828 0 0 0 0 0 0 0.00436585 0.00931694 0.00679515 0.0091308 0.00576525 0.00627512 0.00528908 0.00626111 0.0053773 0.00472488 0.00258801 0.00259713 0.00212794 0.00274135 0.00475458 0.00588964 0.00957292 0.0133361 0.0132441 0.0172948 0.0199928 0.0233403 0.0297967 0.0470437 0.0582154 0.0490506 0.0814279 0.102217 0.120609 0.0857067 0.156011 0.107042 0.213361 0.210284 0.146461 0.161286 0.0397354 0.0843569 0.093194 0.0818207 0.0790436 0.361865 0.185198 0.29982 0.347419 0.108665 0.0826803 0.171531 0.110068 0.11245 0.0819748 0.0984327 0.146363 0.0875199 0.13493 0.101996 0.0712117 0.0114947 0.045375 0.0291308 0.0309499 0.0197356 0.0371271 0.021631 0.0192373 0.018526 0.025993 0.0199549 0.0149948 0.0145344 0.0405435 0.040486 0.0401968 0.0392791 0.0371508 0.0343063 0.0317313 0.0296991 0.0280997 0.0267912 0.0256704 0.0246684
# RecPC 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000617243 0.0012399 0.00186351 0.00248812 0.00310494 0.00371249 0.00431955 0.00494945 0.00347819 0.00593178 0.00463278 0.00432545 0 0 0 0 0 0 0.0183966 0.0391446 0.0284447 0.0380832 0.0239726 0.0260516 0.0219381 0.0259498 0.0222744 0.0195744 0.0107312 0.0107861 0.00885714 0.0114405 0.0198889 0.0246767 0.0401198 0.0558098 0.0552848 0.0545673 0.0500301 0.0478665 0.0512981 0.0691774 0.0740184 0.0544926 0.0796363 0.0884016 0.0924411 0.0580772 0.09231 0.0542301 0.0722213 0.0848198 0.0658666 0.0579456 0.0500815 0.0452074 0.0608685 0.0669771 0.0484218 0.110466 0.107688 0.123165 0.147455 0.067937 0.0706408 0.091623 0.0945775 0.103047 0.10662 0.097144 0.164261 0.128866 0.133306 0.0702645 0.064908 0.046042 0.0618393 0.101461 0.102336 0.0834663 0.0905373 0.0938395 0.0971749 0.121445 0.120639 0.144794 0.101124 0.0916505 0.255658 0.255013 0.252252 0.2428 0.224854 0.208524 0.196487 0.187415 0.180124 0.173898 0.168301 0.163062
# RecDD 0 0 0 0 0 0 0 0 0 0 0 0 0 4.62964e-006 8.1141e-006 1.27559e-005 1.73998e-005 2.20049e-005 2.54189e-005 2.99965e-005 3.46899e-005 2.44428e-005 4.10928e-005 3.19008e-005 2.96182e-005 0 0 0 0 0 0 0.000127749 0.000268237 0.000192322 0.000254788 0.000158278 0.000172513 0.000144574 0.000170778 0.000146659 0.000129324 7.03904e-005 7.22602e-005 5.96673e-005 7.79876e-005 0.000136057 0.000168503 0.000274879 0.000378923 0.000372427 0.000376265 0.000356777 0.000356369 0.000404842 0.000575981 0.000648301 0.000505056 0.000786071 0.000928845 0.00101273 0.000610568 0.000855492 0.000428113 0.000650406 0.00398783 0.00327244 0.00368738 0.00138507 0.00155771 0.00269276 0.00416084 0.00311885 0.00549292 0.00803319 0.00139935 0.00188679 0.00569907 0.00343111 0.00806739 0.00667967 0.00383748 0.00250531 0.00203154 0.00269579 0.00475317 0.00810397 0.00919617 0.01008 0.00502002 0.0060913 0.0043856 0.00405176 0.00315966 0.00306632 0.00314331 0.00429249 0.00391061 0.00533856 0.00575485 0.00702244 0.00538726 0.0150277 0.0146116 0.0137396 0.0126642 0.0119989 0.0115937 0.0112953 0.0110456 0.0108193 0.0106023 0.0103867 0.0101709
#
#_Q_setup
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
         4         1         0         1         0         1  #  RecPR
         5         1         0         1         0         1  #  RecPC
         6         1         0         1         0         1  #  RecDD
         7         1         0         1         0         1  #  Sanitation
         8         1         0         1         0         1  #  NWFSCTrawl
         9         1         0         1         0         1  #  GillnetSurvey
        11         1         0         1         0         1  #  SCBSurvey
        12         1         0         1         0         1  #  RecPCOBR
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
           -15            15      -6.72145            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPR(4)
        0.0001             1     0.0101734      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPR(4)
           -15            15      -11.1504            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPC(5)
        0.0001             1       0.26932      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPC(5)
           -15            15      -10.8624            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecDD(6)
        0.0001             1     0.0818163      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecDD(6)
           -15            15      -10.4804           -11          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_Sanitation(7)
        0.0001             1      0.223802          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_Sanitation(7)
           -15            15     -0.960694          -1.6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_NWFSCTrawl(8)
        0.0001             1      0.249751          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_NWFSCTrawl(8)
           -15            15      -11.9852          -1.6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_GillnetSurvey(9)
        0.0001             1      0.122849          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_GillnetSurvey(9)
           -15            15      -10.9858           -12          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_SCBSurvey(11)
        0.0001             1      0.166765           0.5          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_SCBSurvey(11)
           -15            15      -10.0986            -9          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPCOBR(12)
        0.0001             1      0.140596         0.097          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPCOBR(12)
#_no timevary Q parameters
#
#_size_selex_types
#_discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead;_4=define_dome-shaped_retention
#_Pattern Discard Male Special
 24 0 0 0 # 1 ComHL
 5 0 0 1 # 2 ComNet
 5 0 0 1 # 3 ComTrawl
 24 0 0 0 # 4 RecPR
 24 0 0 0 # 5 RecPC
 24 0 0 0 # 6 RecDD
 24 0 0 0 # 7 Sanitation
 24 0 0 0 # 8 NWFSCTrawl
 5 0 0 7 # 9 GillnetSurvey
 0 0 0 0 # 10 Impingement
 5 0 0 7 # 11 SCBSurvey
 5 0 0 5 # 12 RecPCOBR
#
#_age_selex_types
#_Pattern Discard Male Special
 10 0 0 0 # 1 ComHL
 10 0 0 0 # 2 ComNet
 10 0 0 0 # 3 ComTrawl
 10 0 0 0 # 4 RecPR
 10 0 0 0 # 5 RecPC
 10 0 0 0 # 6 RecDD
 10 0 0 0 # 7 Sanitation
 10 0 0 0 # 8 NWFSCTrawl
 10 0 0 0 # 9 GillnetSurvey
 10 0 0 0 # 10 Impingement
 10 0 0 0 # 11 SCBSurvey
 10 0 0 0 # 12 RecPCOBR
#
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
            13            44       26.3591       41.3268          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P1_ComHL(1)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComHL(1)
            -1            10        2.9065        4.8905          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P3_ComHL(1)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_ComHL(1)
           -25            -1      -15.9668      -17.2861          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_ComHL(1)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_ComHL(1)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_ComNet(2)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComNet(2)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_ComTrawl(3)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComTrawl(3)
            13            44       41.1407       35.4526          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPR(4)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPR(4)
            -1            10       4.48936        4.1643          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPR(4)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPR(4)
           -25            -1       -8.3708      -6.03478          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPR(4)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPR(4)
            13            44       36.7461       38.2635          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPC(5)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPC(5)
            -1            10       4.48756       4.18979          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPC(5)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPC(5)
           -25            -1      -8.47029      -6.83326          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPC(5)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPC(5)
            13            44       24.5365       24.5039          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P1_RecDD(6)
           -15            16      -11.1333       -12.487          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P2_RecDD(6)
            -1            10       2.87198       1.48287          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_RecDD(6)
           -20             5      -8.95164      -13.4208          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P4_RecDD(6)
           -25             3      -2.32099      -1.62316          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecDD(6)
            -5            11      -1.64814      -1.96867          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P6_RecDD(6)
            13            44       24.5574       25.8555          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_Sanitation(7)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_Sanitation(7)
            -1            10       3.37691       3.47934          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_Sanitation(7)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_Sanitation(7)
           -25             5      -4.85197      -3.53053          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_Sanitation(7)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_Sanitation(7)
            13            44       24.1223       26.0709          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_NWFSCTrawl(8)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_NWFSCTrawl(8)
            -1            10       3.60773       3.55352          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_NWFSCTrawl(8)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_NWFSCTrawl(8)
           -25             5      -13.1088     -0.865955          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_NWFSCTrawl(8)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_NWFSCTrawl(8)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_GillnetSurvey(9)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_GillnetSurvey(9)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_SCBSurvey(11)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_SCBSurvey(11)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_RecPCOBR(12)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPCOBR(12)
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type    PHASE  #  parm_name
            13            44        28.492        28.897          1000             0      6  # SizeSel_P1_ComHL(1)_BLK1repl_1999
            -1            10       2.02644       2.08697          1000             0      6  # SizeSel_P3_ComHL(1)_BLK1repl_1999
            13            44       36.4976       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2000
            13            44       35.6806       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2006
            -1            10       3.58913       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2000
            -1            10       3.43876       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2006
            13            44       31.8998       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2000
            13            44       26.9321       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2006
            -1            10       3.06329       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2000
            -1            10       1.09682       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2006
# info on dev vectors created for selex parms are reported with other devs after tag parameter section 
#
0   #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# deviation vectors for timevary parameters
#  base   base first block   block  env  env   dev   dev   dev   dev   dev
#  type  index  parm trend pattern link  var  vectr link _mnyr  mxyr phase  dev_vector
#      5     1     1     1     2     0     0     0     0     0     0     0
#      5     3     2     1     2     0     0     0     0     0     0     0
#      5    11     3     2     2     0     0     0     0     0     0     0
#      5    13     5     2     2     0     0     0     0     0     0     0
#      5    17     7     2     2     0     0     0     0     0     0     0
#      5    19     9     2     2     0     0     0     0     0     0     0
     #
# Input variance adjustments factors: 
 #_1=add_to_survey_CV
 #_2=add_to_discard_stddev
 #_3=add_to_bodywt_CV
 #_4=mult_by_lencomp_N
 #_5=mult_by_agecomp_N
 #_6=mult_by_size-at-age_N
 #_7=mult_by_generalized_sizecomp
#_Factor  Fleet  Value
4 1 0.6644995
4 2 0.1124822
4 3 0.9984793
4 4 0.7276307
4 5 0.1362879
4 6 0.1359101
4 7 0.2663346
4 8 0.718933
4 9 0.3286782
4 10 0.1693565
4 11 0.7564268
4 12 1
5 1 1
5 2 1
5 3 1
5 4 1
5 5 1
5 6 1
5 7 1
5 8 0.3248114
5 9 1
5 10 1
5 11 1
5 12 1
 -9999   1    0  # terminator
#
4 #_maxlambdaphase
1 #_sd_offset
# read 0 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin; 17=F_ballpark
#like_comp fleet  phase  value  sizefreq_method
-9999  1  1  1  1  #  terminator
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 #_CPUE/survey:_1
#  0 0 0 0 #_CPUE/survey:_2
#  0 0 0 0 #_CPUE/survey:_3
#  1 1 1 1 #_CPUE/survey:_4
#  1 1 1 1 #_CPUE/survey:_5
#  1 1 1 1 #_CPUE/survey:_6
#  1 1 1 1 #_CPUE/survey:_7
#  1 1 1 1 #_CPUE/survey:_8
#  1 1 1 1 #_CPUE/survey:_9
#  0 0 0 0 #_CPUE/survey:_10
#  1 1 1 1 #_CPUE/survey:_11
#  1 1 1 1 #_CPUE/survey:_12
#  1 1 1 1 #_lencomp:_1
#  1 1 1 1 #_lencomp:_2
#  1 1 1 1 #_lencomp:_3
#  1 1 1 1 #_lencomp:_4
#  1 1 1 1 #_lencomp:_5
#  1 1 1 1 #_lencomp:_6
#  1 1 1 1 #_lencomp:_7
#  1 1 1 1 #_lencomp:_8
#  1 1 1 1 #_lencomp:_9
#  1 1 1 1 #_lencomp:_10
#  1 1 1 1 #_lencomp:_11
#  0 0 0 0 #_lencomp:_12
#  0 0 0 0 #_agecomp:_1
#  0 0 0 0 #_agecomp:_2
#  0 0 0 0 #_agecomp:_3
#  0 0 0 0 #_agecomp:_4
#  0 0 0 0 #_agecomp:_5
#  0 0 0 0 #_agecomp:_6
#  0 0 0 0 #_agecomp:_7
#  1 1 1 1 #_agecomp:_8
#  0 0 0 0 #_agecomp:_9
#  0 0 0 0 #_agecomp:_10
#  0 0 0 0 #_agecomp:_11
#  0 0 0 0 #_agecomp:_12
#  1 1 1 1 #_init_equ_catch
#  1 1 1 1 #_recruitments
#  1 1 1 1 #_parameter-priors
#  1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 #_crashPenLambda
#  0 0 0 0 # F_ballpark_lambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

