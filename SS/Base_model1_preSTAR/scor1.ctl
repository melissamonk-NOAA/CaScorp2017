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
 2 30 12.4334 14 1000 0 2 0 0 0 0 1 0 0 # L_at_Amin_Fem_GP_1
 30 50 33.312 31 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.5 0.250307 0.27 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Fem_GP_1
 0.02 0.5 0.0885745 0.1 1000 0 3 0 0 0 0 1 0 0 # CV_young_Fem_GP_1
 0.02 0.75 0.112498 0.15 1000 0 3 0 0 0 0 1 0 0 # CV_old_Fem_GP_1
 -3 3 1.55e-005 1.55e-005 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_1_Fem
 2 4 3.05765 3.05765 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_2_Fem
 10 30 18 18 1000 0 -3 0 0 0 0 1 0 0 # Mat50%_Fem
 -3 3 -1.2 -0.465636 1000 0 -3 0 0 0 0 1 0 0 # Mat_slope_Fem
 -3 3 1 1 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_slope_wt_Fem
 -1 1 -0.213367 0 99 6 2 0 0 0 0 1 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0 0 1000 0 -2 0 0 0 0 1 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.158804 -0.16 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Mal_GP_1
 -3 3 -0.294625 0.32 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Mal_GP_1
 -3 3 1.29972 0.51 1000 0 3 0 0 0 0 1 0 0 # CV_young_Mal_GP_1
 -3 3 -0.452205 -1.07 1000 0 3 0 0 0 0 1 0 0 # CV_old_Mal_GP_1
 0 1 1.91e-005 1.91e-005 1000 0 -5 0 0 0 0 1 0 0 # Wtlen_1_Mal
 2 4 2.98055 2.98055 1000 0 -5 0 0 0 0 1 0 0 # Wtlen_2_Mal
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_GP_1
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_Area_1
 0 0 0 0 1000 0 -4 0 0 0 0 1 0 0 # RecrDist_month_1
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
             0            31       8.15988          10.8            99             0          1          0          0          0          0          1          0          0 # SR_LN(R0)
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
 1936.38 #_last_early_yr_nobias_adj_in_MPD
 2009 #_first_yr_fullbias_adj_in_MPD
 2014.99 #_last_yr_fullbias_adj_in_MPD
 2015.09 #_first_recent_yr_nobias_adj_in_MPD
 0.6803 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
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
#  -0.196827 -0.194478 -0.247939 -0.294494 -0.381782 -0.565559 -0.648451 -0.676563 -0.452723 0.7362 0.684775 0.714524 0.0412943 -0.630341 -0.91193 -0.870988 -0.555894 -0.112071 0.947722 1.13599 0.0305365 -0.639185 -0.771104 -0.868916 -0.706075 0.634675 0.59353 1.03825 0.435669 -0.242351 0.819905 0.190356 0.349366 0.430533 -0.250884 0.261313 -0.313154 -0.494378 -0.457036 0.295618 -0.213171 -0.31386 -0.275562 -0.0599315 -0.241631 -0.91827 -0.962703 0.349175 0.202542 0.960753 0 0 0 0 0 0 0 0 0 0 0 0 0
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
# ComHL 0.00176317 0.00384176 0.006248 0.00564905 0.00795553 0.0131014 0.00950983 0.0137255 0.0250215 0.0524293 0.0259411 0.0274627 0.0236331 0.0263532 0.021727 0.0224796 0.0210071 0.0157366 0.0161216 0.0165416 0.0268196 0.0338218 0.0387768 0.0324174 0.0309567 0.0240844 0.0110887 0.00893074 0.0130109 0.0227235 0.0356092 0.0311894 0.0392829 0.038126 0.0366726 0.0268291 0.0221564 0.0316385 0.0357569 0.0280872 0.0267123 0.0193843 0.0169672 0.00963326 0.00742098 0.00671042 0.0144263 0.0188916 0.0197255 0.0197551 0.0220213 0.0147364 0.0237979 0.0199824 0.0214685 0.0115751 0.0189856 0.0120947 0.0294951 0.0359056 0.01413 0.00530467 0.00751009 0.0060693 0.00932575 0.00947913 0.0111418 0.00712586 0.00689205 0.00942346 0.00351816 0.00492378 0.00450214 0.0087468 0.018343 0.0128347 0.0196856 0.0102954 0.0257046 0.0161119 0.0121589 0.0111836 0.0172947 0.025073 0.00937944 0.0111985 0.00787215 0.00163153 0.00151048 0.00111975 0.000686986 0.00165813 0.00232765 0.0029413 0.00309394 0.00352283 0.00370674 0.0021056 0.00133085 0.00309265 0.00339205 0.0461974 0.0440357 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298 0.0123298
# ComNet 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5.71883e-005 0.000102324 0.000408318 8.84761e-005 0.00017148 4.37215e-005 0.00259569 1.1643e-005 0.000123102 0.00105386 0.000700669 0.000362608 0.00362845 0.000832473 0.000544223 0.000743062 0.00183869 0.00130367 0.00263075 0.00211428 0.00154299 0.00352647 0.00209739 0.00236529 0.00349762 0.00141683 0.000663785 0.000718815 0.0021112 0.000851005 0.00144143 0.00159653 0.00208255 0.000922908 0.000271113 0.000472154 0.000528846 0.000352747 0.000185162 0.000263152 0.000132511 0.000148648 0.000262721 0.000204712 0.000167322 4.71096e-005 4.82136e-005 5.31253e-006 0.0017139 0.0016337 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005 1.93105e-005
# ComTrawl 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000168569 0 0 7.39363e-005 0.000124119 0 2.0576e-005 5.82149e-005 0 2.27452e-006 1.96725e-006 0 3.88842e-006 0 0 0.000104617 1.77959e-005 1.67739e-005 7.36502e-005 1.57684e-006 1.17481e-005 0.00044496 0.00306288 0.00279866 0.0058238 0.00965082 0.0110194 0.00781619 0.0073438 0.00898286 0.00532896 0.00365274 0.00234901 0.00168757 0.00209991 0.00178224 0.00237326 0.00110723 0.00129177 0.000816456 0.000269964 0.000189913 0.00114454 0.000490368 0.00101 0.00016665 0.000175726 0.000191915 0.00721672 0.00687903 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593 0.000697593
# RecPR 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000138638 0.000278785 0.000419298 0.000560091 0.000699143 0.000836004 0.000972601 0.00111416 0.000782849 0.00133535 0.00104366 0.000975301 0 0 0 0 0 0 0.00414584 0.00883417 0.00643253 0.00863227 0.0054467 0.00592861 0.00499664 0.00591204 0.00507575 0.0044602 0.00244425 0.00245494 0.00201351 0.00259687 0.00450787 0.00558582 0.0090755 0.0126307 0.0125298 0.0163457 0.0188837 0.0220375 0.0281357 0.0444567 0.055105 0.0465443 0.0774131 0.0971571 0.114341 0.0811052 0.147621 0.10154 0.2031 0.200545 0.139871 0.154164 0.0379892 0.0806266 0.0890251 0.0782144 0.075751 0.347193 0.177519 0.286313 0.329305 0.102272 0.077505 0.160437 0.102988 0.105686 0.0775118 0.093427 0.138892 0.0829097 0.12759 0.096504 0.0675312 0.0109232 0.0431645 0.0277895 0.0294045 0.0186765 0.0350665 0.0204334 0.0181922 0.0175265 0.0245905 0.018875 0.0141914 0.0138061 0.0239318 0.0246401 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837 0.0501837
# RecPC 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000574839 0.00115446 0.00173491 0.0023162 0.00289063 0.00345684 0.00402254 0.00460827 0.00323657 0.00551528 0.00430462 0.00401763 0 0 0 0 0 0 0.0171051 0.0363495 0.0263761 0.0352729 0.0221896 0.0241136 0.0203036 0.024005 0.0205985 0.0181026 0.00992869 0.00998682 0.00820833 0.0106131 0.0184652 0.0229175 0.0372484 0.0517731 0.0512386 0.0505299 0.046306 0.0443036 0.0475202 0.0641951 0.0688474 0.0508084 0.074342 0.0824342 0.0859268 0.0539121 0.0857226 0.0504934 0.0673562 0.0791659 0.0615675 0.0542313 0.0469012 0.0423471 0.0570461 0.0628589 0.0455198 0.103757 0.100857 0.11485 0.136598 0.0626066 0.0649372 0.0842072 0.0869893 0.0951804 0.0989339 0.0903005 0.152559 0.119198 0.123255 0.0651008 0.0602495 0.0428072 0.0575353 0.0948582 0.0952888 0.0775273 0.084024 0.0871628 0.0904036 0.112997 0.112263 0.134627 0.0943111 0.0860647 0.13592 0.128084 0.312837 0.312837 0.312837 0.312837 0.312837 0.312837 0.312837 0.312837 0.312837 0.312837
# RecDD 0 0 0 0 0 0 0 0 0 0 0 0 0 4.4727e-006 7.83763e-006 1.23201e-005 1.68039e-005 2.12524e-005 2.45528e-005 2.89775e-005 3.35083e-005 2.36012e-005 3.96548e-005 3.07677e-005 2.85566e-005 0 0 0 0 0 0 0.000123281 0.000258618 0.000185232 0.000245177 0.000152222 0.000165896 0.000139013 0.00016416 0.000140944 0.000124285 6.76667e-005 6.95017e-005 5.74293e-005 7.51225e-005 0.000131146 0.000162478 0.000265023 0.000365152 0.000358664 0.000362128 0.000343684 0.00034454 0.00039427 0.000563316 0.000634747 0.000493677 0.000765842 0.000901504 0.000980301 0.00059446 0.000829696 0.000413368 0.000624841 0.00388003 0.00320236 0.00360612 0.00135093 0.00151622 0.00262859 0.00405467 0.00301977 0.00529289 0.00777193 0.00135393 0.00181409 0.00546716 0.00327597 0.00772668 0.00639354 0.00372167 0.00241936 0.00196069 0.00259311 0.00459382 0.00786396 0.0088913 0.00978498 0.00485859 0.00588185 0.00422752 0.00390576 0.00305105 0.00296942 0.00305444 0.00416441 0.00379705 0.00517808 0.00562048 0.00688017 0.00528558 0.00462605 0.00406384 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125 0.0192125
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
           -15            15      -6.77505            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPR(4)
        0.0001             1     0.0126596      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPR(4)
           -15            15       -11.223            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPC(5)
        0.0001             1      0.267477      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPC(5)
           -15            15      -10.8941            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecDD(6)
        0.0001             1     0.0778579      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecDD(6)
           -15            15      -10.5438           -11          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_Sanitation(7)
        0.0001             1      0.225457          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_Sanitation(7)
           -15            15      -1.02267          -1.6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_NWFSCTrawl(8)
        0.0001             1      0.249614          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_NWFSCTrawl(8)
           -15            15      -12.0496          -1.6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_GillnetSurvey(9)
        0.0001             1      0.121902          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_GillnetSurvey(9)
           -15            15      -11.0517           -12          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_SCBSurvey(11)
        0.0001             1      0.166409           0.5          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_SCBSurvey(11)
           -15            15      -10.1712            -9          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPCOBR(12)
        0.0001             1      0.139738         0.097          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPCOBR(12)
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
            13            44       25.9631       41.3268          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P1_ComHL(1)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComHL(1)
            -1            10        2.7612        4.8905          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P3_ComHL(1)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_ComHL(1)
           -25            -1      -15.9012      -17.2861          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_ComHL(1)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_ComHL(1)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_ComNet(2)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComNet(2)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_ComTrawl(3)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComTrawl(3)
            13            44       41.2117       35.4526          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPR(4)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPR(4)
            -1            10       4.49334        4.1643          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPR(4)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPR(4)
           -25            -1      -8.33998      -6.03478          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPR(4)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPR(4)
            13            44       36.6239       38.2635          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPC(5)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPC(5)
            -1            10       4.47274       4.18979          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPC(5)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPC(5)
           -25            -1      -8.34419      -6.83326          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPC(5)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPC(5)
            13            44       24.5305       24.5039          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P1_RecDD(6)
           -15            16      -11.2352       -12.487          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P2_RecDD(6)
            -1            10       2.72742       1.48287          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_RecDD(6)
           -20             5      -9.30139      -13.4208          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P4_RecDD(6)
           -25             3      -2.15591      -1.62316          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecDD(6)
            -5            11       -1.7089      -1.96867          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P6_RecDD(6)
            13            44       24.6267       25.8555          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_Sanitation(7)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_Sanitation(7)
            -1            10       3.38814       3.47934          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_Sanitation(7)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_Sanitation(7)
           -25             5      -4.61764      -3.53053          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_Sanitation(7)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_Sanitation(7)
            13            44       24.3056       26.0709          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_NWFSCTrawl(8)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_NWFSCTrawl(8)
            -1            10       3.65158       3.55352          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_NWFSCTrawl(8)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_NWFSCTrawl(8)
           -25             5      -12.8446     -0.865955          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_NWFSCTrawl(8)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_NWFSCTrawl(8)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_GillnetSurvey(9)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_GillnetSurvey(9)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_SCBSurvey(11)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_SCBSurvey(11)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_RecPCOBR(12)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPCOBR(12)
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type    PHASE  #  parm_name
            13            44       28.4416        28.897          1000             0      6  # SizeSel_P1_ComHL(1)_BLK1repl_1999
            -1            10       2.00684       2.08697          1000             0      6  # SizeSel_P3_ComHL(1)_BLK1repl_1999
            13            44       36.5835       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2000
            13            44       35.8148       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2006
            -1            10       3.60235       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2000
            -1            10       3.46268       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2006
            13            44       31.7993       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2000
            13            44       26.8864       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2006
            -1            10        3.0414       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2000
            -1            10       1.06557       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2006
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
4 1 0.6830563
4 2 0.1124413
4 3 0.9610619
4 4 0.7282705
4 5 0.1357789
4 6 0.13574
4 7 0.2666899
4 8 0.7193714
4 9 0.3298291
4 10 0.1697293
4 11 0.7620411
4 12 1
5 1 1
5 2 1
5 3 1
5 4 1
5 5 1
5 6 1
5 7 1
5 8 0.3256124
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

