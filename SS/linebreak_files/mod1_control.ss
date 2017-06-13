#V3.30.04.02
#_data_and_control_files: scor1.dat // scor1.ctl
#_SS-V3.30.04.02-safe;_2017_05_31;_Stock_Synthesis_by_Richard_Methot_(NOAA)
# _using_ADMB_11.6
#_SS-V3.30.04.02-safe;user_support_available_at:NMFS.Stock.Synthesis@noaa.g
# ov
#_SS-V3.30.04.02-safe;user_info_available_at:https://vlab.ncep.noaa.gov/gro
# up/stock-synthesis
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and al
# so read and use growth parameters
1  #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
2 # recr_dist_method for parameters:  2=main effects for GP, Area, Settle t
# iming; 3=each Settle entity
1 # not yet implemented; Future usage: Spawner-Recruitment: 1=global; 2=by 
# area
1 #  number of recruitment settlement assignments 
0 # unused option
#GPattern month  area  age (for each settlement assignment)
 1 7 1 0
#
#_Cond 0 # N_movement_definitions goes here if Nareas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer
# ) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1
#  dest=2, age1=4, age2=10
#
2 #_Nblock_Patterns
 1 1 #_blocks_per_pattern 
# begin and end years of blocks
 1999 2017
 2000 2017
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to
#  base parm bounds; 3=no bound check)
#  autogen
1 1 1 1 1 # autogen
# where: 0 = autogen all time-varying parms; 1 = read each time-varying par
# m line; 2 = read then autogen if min=-12345
# 1st element for biology, 2nd for SR, 3rd for Q, 5th for selex, 4th reserv
# ed
#
# setup for M, growth, maturity, fecundity, recruitment distibution, moveme
# nt 
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agesp
# ec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specifi
# c_K; 4=not implemented
0.5 #_Growth_Age_for_L1
20 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (fixed at 0.2 in 3.24; val
# ue should approx initial Z; -999 replicates 3.24)
0  #_placeholder for future growth feature
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 l
# ogSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturit
# y matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read leng
# th-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)e
# ggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=
# male-to-female age-specific fxn
2 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-
# GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_ LO HI INIT PRIOR PR_SD PR_type PHASE env_var&link dev_link dev_minyr dev
# _maxyr dev_PH Block Block_Fxn
 0.01 1 0.298114 -1.3581 0.438438 3 2 0 0 0 0 0.5 0 0 # NatM_p_1_Fem_GP_1
 2 30 7.22796 14 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amin_Fem_GP_1
 30 50 33.1945 31 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.5 0.247314 0.27 1000 0 2 0 0 0 0 0.5 0 0 # VonBert_K_Fem_GP_1
 0.02 0.5 0.328184 0.1 1000 0 3 0 0 0 0 0.5 0 0 # CV_young_Fem_GP_1
 0.02 0.75 0.103501 0.15 1000 0 3 0 0 0 0 0.5 0 0 # CV_old_Fem_GP_1
 -3 3 1.55e-005 1.55e-005 1000 0 -3 0 0 0 0 0.5 0 0 # Wtlen_1_Fem
 2 4 3.05765 3.05765 1000 0 -3 0 0 0 0 0.5 0 0 # Wtlen_2_Fem
 10 30 17.1882 17.1882 1000 0 -3 0 0 0 0 0.5 0 0 # Mat50%_Fem
 -3 3 -0.465636 -0.465636 1000 0 -3 0 0 0 0 0.5 0 0 # Mat_slope_Fem
 -3 3 1 1 1000 0 -3 0 0 0 0 0.5 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 1000 0 -3 0 0 0 0 0.5 0 0 # Eggs/kg_slope_wt_Fem
 -3 3 -0.203745 0 99 6 2 0 0 0 0 0.5 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0.66688 0 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.180134 -0.16 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amax_Mal_GP_1
 -3 3 0.100751 0.32 1000 0 2 0 0 0 0 0.5 0 0 # VonBert_K_Mal_GP_1
 -3 3 -1.48733 0.51 1000 0 3 0 0 0 0 0.5 0 0 # CV_young_Mal_GP_1
 -3 3 0.0848779 -1.07 1000 0 3 0 0 0 0 0.5 0 0 # CV_old_Mal_GP_1
 0 1 1.91e-005 1.91e-005 1000 0 -5 0 0 0 0 0.5 0 0 # Wtlen_1_Mal
 2 4 2.98055 2.98055 1000 0 -5 0 0 0 0 0.5 0 0 # Wtlen_2_Mal
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_month_7
 1 1 1 1 1 0 -1 0 0 0 0 0 0 0 # CohortGrowDev
 1e-006 0.999999 0.5 0.5 1000 0 -4 0 0 0 0 0 0 0 # FracFemale_GP_1
#
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,m
# alewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=su
# rvival_3Parm; 8=Shepard_3Parm
0  # 0/1 to use steepness in initial equ recruitment calculation
0  #  future feature:  0/1 to make realized sigmaR a function of SR curvatu
# re
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_
# PH      Block    Blk_Fxn #  parm_name
             0            31       8.10331          10.8            99     
        0          1          0          0          0          0          0
          0          0 # SR_LN(R0)
          0.21          0.99         0.718         0.718         0.158     
        2         -2          0          0          0          0          0
          0          0 # SR_BH_steep
             0             2           0.6           0.6            99     
        0         -2          0          0          0          0          0
          0          0 # SR_sigmaR
            -5             5             0             0            99     
        0         -4          0          0          0          0          0
          0          0 # SR_regime
             0           0.5             0             0            99     
        0         -3          0          0          0          0          0
          0          0 # SR_autocorr
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1985 # first year of main recr_devs; early devs can preceed this era
2015 # last year of main recr_devs; forecast devs start in following year
1 #_recdev phase 
1 # (0/1) to read 13 advanced options
 1966 #_recdev_early_start (0=none; neg value makes relative to recdev_star
# t)
 2 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxpha
# se+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1942.77 #_last_early_yr_nobias_adj_in_MPD
 2007.79 #_first_yr_fullbias_adj_in_MPD
 2014.77 #_last_yr_fullbias_adj_in_MPD
 2015.75 #_first_recent_yr_nobias_adj_in_MPD
 0.647 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for a
# ll estimated recdevs)
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
#  1966E 1967E 1968E 1969E 1970E 1971E 1972E 1973E 1974E 1975E 1976E 1977E 
# 1978E 1979E 1980E 1981E 1982E 1983E 1984E 1985R 1986R 1987R 1988R 1989R 1
# 990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 20
# 02R 2003R 2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2013R 201
# 4R 2015R 2016F 2017F
#  -0.033009 0.0183855 0.0153253 -0.166006 -0.416461 -0.546758 -0.620479 -0
# .592311 -0.287338 1.13722 0.398243 0.695878 -0.0838024 -0.651813 -0.84604
# 6 -0.732822 -0.336536 0.223033 1.14943 0.739006 -0.19391 -0.772294 -0.875
# 509 -0.900255 -0.601686 0.729108 0.407605 0.962921 0.334032 -0.261668 0.7
# 60663 0.146233 0.536192 0.351306 -0.20144 0.540882 -0.271901 -0.504388 -0
# .25771 0.362275 -0.0153212 -0.456308 -0.31329 0.0725959 -0.314804 -0.8613
# 39 -0.759788 0.231723 0.339462 1.0476 0 0
# implementation error by year in forecast:  0
#
#Fishing Mortality info 
0.5 # F ballpark
-1999 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
3 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed input
# s to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
5  # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 1
#_ LO HI INIT PRIOR PR_SD  PR_type  PHASE
 0 1 1e-006 0.01 1000 6 -1 # InitF_seas_1_flt_1ComHL
#2017 2037
# F rates by fleet
# Yr:  1916 1917 1918 1919 1920 1921 1922 1923 1924 1925 1926 1927 1928 192
# 9 1930 1931 1932 1933 1934 1935 1936 1937 1938 1939 1940 1941 1942 1943 1
# 944 1945 1946 1947 1948 1949 1950 1951 1952 1953 1954 1955 1956 1957 1958
#  1959 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 19
# 73 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 
# 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 200
# 2 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2
# 017
# seas:  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
# 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# ComHL 0.00363401 0.00792424 0.0129039 0.0116816 0.0164715 0.0271806 0.019
# 7639 0.028566 0.0522503 0.110406 0.054984 0.0582884 0.0501727 0.0559308 0
# .0460814 0.0476282 0.0444704 0.0332615 0.0340142 0.034859 0.0565641 0.071
# 5564 0.0823991 0.0691119 0.0660746 0.0513559 0.0235437 0.0188552 0.027355
# 3 0.0477214 0.0749783 0.0660024 0.0838028 0.0820143 0.0793579 0.0581852 0
# .0479636 0.0684053 0.0773724 0.0607867 0.0577199 0.0417388 0.0363542 0.02
# 05275 0.0157267 0.014169 0.0304464 0.0400049 0.0420376 0.0423847 0.047519
# 2 0.0318735 0.0513627 0.0426485 0.0449741 0.0236823 0.0378773 0.0236975 0
# .0574754 0.0705121 0.0282592 0.0108878 0.0158049 0.0127528 0.0192243 0.01
# 88616 0.0213687 0.0133459 0.0128527 0.0179796 0.00702224 0.0103597 0.0098
# ComNet 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
# 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000122057 0.000214357 0.0008354
# 05 0.000176515 0.000335986 8.51977e-005 0.00509746 2.32853e-005 0.0002526
# 65 0.00221784 0.00147225 0.000747489 0.00721989 0.00159659 0.00101927 0.0
# 0138571 0.00350816 0.00260212 0.0055351 0.00462636 0.00335141 0.00747483 
# 0.00445272 0.00515976 0.0079684 0.00348954 0.00172881 0.00188527 0.005361
# 1 0.00207759 0.00239737 0.00267302 0.00348621 0.0015233 0.000439766 0.000
# 745747 0.000813147 0.000533986 0.000279227 0.000396373 0.00019987 0.00022
# 3069 0.000392482 0.000306807 0.000252666 7.18173e-005 7.39666e-005 8.2153
# 6e-006 3.02445e-005
# ComTrawl 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
# 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000359778 0 0 0.000147507 0.0
# 0024319 0 4.04076e-005 0.000116427 0 4.7867e-006 4.1336e-006 0 7.73718e-0
# 06 0 0 0.000195096 3.3954e-005 3.34807e-005 0.00015496 3.45036e-006 2.551
# 7e-005 0.000943153 0.00650243 0.00610511 0.013268 0.0237693 0.0286996 0.0
# 204999 0.0186485 0.0219302 0.00886305 0.00611566 0.00393225 0.00278542 0.
# 00340622 0.00281498 0.00364909 0.00167612 0.00194801 0.00122979 0.0004071
# 94 0.000284994 0.00170984 0.000734927 0.00152517 0.000254054 0.000269589 
# 0.00029678 0.00109258
# RecPR 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000169789 0.000340675 0.000511196 0.000
# 681593 0.000848747 0.00101244 0.00117613 0.00134865 0.000951035 0.0016297
# 6 0.00127733 0.00119389 0 0 0 0 0 0 0.00503275 0.0108004 0.00791504 0.010
# 6595 0.00672196 0.00728598 0.00612424 0.00724762 0.00621924 0.00545315 0.
# 00297719 0.00297628 0.00242923 0.00311881 0.00539993 0.00669577 0.0109245
#  0.0152967 0.0152582 0.0199887 0.0231191 0.0269656 0.034338 0.0538649 0.0
# 657602 0.054339 0.0885587 0.110041 0.129915 0.0929205 0.169908 0.113841 0
# .215086 0.202649 0.139169 0.15519 0.0392453 0.0859054 0.0979437 0.0879478
#  0.0842921 0.374985 0.189304 0.312209 0.377609 0.124401 0.0993456 0.21493
# 5 0.139551 0.139252 0.0989626 0.118071 0.176899 0.119937 0.184965 0.13880
# RecPC 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000806353 0.00161684 0.00242572 0.00323
# 426 0.00402909 0.00480966 0.00559084 0.00641055 0.0045152 0.00772158 0.00
# 603902 0.0056366 0 0 0 0 0 0 0.0238464 0.0509738 0.0371863 0.0498818 0.03
# 1373 0.0339886 0.0285673 0.0337891 0.0289861 0.025431 0.0139056 0.013934 
# 0.0114074 0.0146956 0.0255166 0.0316902 0.0516875 0.0722128 0.0718052 0.0
# 710705 0.065176 0.0622519 0.0664035 0.0886526 0.0932676 0.0672914 0.09679
# 4 0.106793 0.112107 0.0712033 0.113504 0.0647845 0.0825933 0.0944121 0.07
# 30278 0.0650119 0.0572929 0.0528856 0.07302 0.0816867 0.0584046 0.131132 
# 0.128161 0.149834 0.186153 0.0897361 0.0971622 0.130263 0.135408 0.144833
#  0.147523 0.133924 0.227405 0.134858 0.13963 0.0729363 0.0667602 0.046801
# RecDD 0 0 0 0 0 0 0 0 0 0 0 0 0 5.06263e-006 8.87041e-006 1.39421e-005 1.
# 90149e-005 2.4041e-005 2.77637e-005 3.27599e-005 3.78958e-005 2.67154e-00
# 5 4.49373e-005 3.48878e-005 3.23785e-005 0 0 0 0 0 0 0.000139556 0.000293
# 589 0.000210791 0.000279426 0.000173528 0.000188958 0.000158287 0.0001870
# 16 0.000160615 0.000141566 7.69759e-005 7.89334e-005 6.51198e-005 8.50673
# e-005 0.000148425 0.000183969 0.000300566 0.000415179 0.000408744 0.00041
# 3365 0.000390354 0.000385342 0.000427138 0.000590267 0.000647927 0.000499
# 519 0.000782861 0.000937527 0.00103882 0.000639506 0.000884955 0.00042714
# 7 0.00063878 0.00394063 0.00320978 0.00363615 0.00140267 0.00162077 0.002
# 86872 0.00449273 0.00333893 0.00587808 0.00846369 0.00149396 0.00212403 0
#
#_Q_setup
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
         4         1         0         1         0         1  #  RecPR
         5         1         0         1         0         1  #  RecPC
         6         1         0         1         0         1  #  RecDD
         7         1         0         1         0         1  #  Sanitation
         8         1         0         1         0         1  #  NWFSCTrawl
         9         1         0         1         0         1  #  GillnetSur
# vey
        11         1         0         1         0         1  #  SCBSurvey
        12         1         0         1         0         1  #  RecPCOBR
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_
# PH      Block    Blk_Fxn  #  parm_name
           -15            15      -6.41143            -6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPR(4)
        0.0001             1     0.0194242      0.164309          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecPR(4)
           -15            15       -10.929            -6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPC(5)
        0.0001             1      0.371856      0.164309          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecPC(5)
           -15            15      -10.8094            -6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecDD(6)
        0.0001             1     0.0553085      0.164309          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecDD(6)
           -15            15      -10.2267           -11          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_Sanitation(7)
        0.0001             1      0.210505          0.21          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_Sanitation(7)
           -15            15     -0.731924          -1.6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_NWFSCTrawl(8)
        0.0001             1      0.244234          0.21          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_NWFSCTrawl(8)
           -15            15      -11.6997          -1.6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_GillnetSurvey(9)
        0.0001             1      0.100215          0.21          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_GillnetSurvey(9)
           -15            15      -10.6817           -12          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_SCBSurvey(11)
        0.0001             1      0.188469           0.5          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_SCBSurvey(11)
           -15            15      -9.82997            -9          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPCOBR(12)
        0.0001             1      0.218087         0.097          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecPCOBR(12)
#_no timevary Q parameters
#
#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_
# discarded_dead
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
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_
# PH      Block    Blk_Fxn  #  parm_name
            13            44       32.6764       41.3268          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P1_ComHL(1)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_ComHL(1)
            -1            10       3.94496        4.8905          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P3_ComHL(1)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_ComHL(1)
           -25            -1      -16.4777      -17.2861          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_ComHL(1)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_ComHL(1)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_ComNet(2)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_ComNet(2)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_ComTrawl(3)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_ComTrawl(3)
            13            44       39.0651       35.4526          1000     
        0          4          0          0          0          0        0.5
          2          2  #  SizeSel_P1_RecPR(4)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPR(4)
            -1            10       4.24236        4.1643          1000     
        0          4          0          0          0          0        0.5
          2          2  #  SizeSel_P3_RecPR(4)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecPR(4)
           -25            -1      -8.38279      -6.03478          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecPR(4)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecPR(4)
            13            44       35.6684       38.2635          1000     
        0          4          0          0          0          0        0.5
          2          2  #  SizeSel_P1_RecPC(5)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPC(5)
            -1            10       4.27018       4.18979          1000     
        0          4          0          0          0          0        0.5
          2          2  #  SizeSel_P3_RecPC(5)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecPC(5)
           -25            -1      -8.37316      -6.83326          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecPC(5)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecPC(5)
            13            44       24.5428       24.5039          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_RecDD(6)
           -15            16      -11.3459       -12.487          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecDD(6)
            -1            10       2.60577       1.48287          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_RecDD(6)
           -20             5      -8.68773      -13.4208          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecDD(6)
           -25             3      -2.18834      -1.62316          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecDD(6)
            -5            11       -1.4017      -1.96867          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecDD(6)
            13            44       26.6152       25.8555          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_Sanitation(7)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_Sanitation(7)
            -1            10       3.73017       3.47934          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_Sanitation(7)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_Sanitation(7)
           -25             5      -5.31641      -3.53053          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P5_Sanitation(7)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_Sanitation(7)
            13            44       26.5576       26.0709          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_NWFSCTrawl(8)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_NWFSCTrawl(8)
            -1            10       4.01364       3.55352          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_NWFSCTrawl(8)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_NWFSCTrawl(8)
           -25             5      -13.4354     -0.865955          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P5_NWFSCTrawl(8)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_NWFSCTrawl(8)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_GillnetSurvey(9)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_GillnetSurvey(9)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_SCBSurvey(11)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_SCBSurvey(11)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_RecPCOBR(12)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPCOBR(12)
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type    PHASE  #  parm_name
            13            44       28.9951        28.897          1000     
        0      5  # SizeSel_P1_ComHL(1)_BLK1repl_1999
            -1            10       2.13271       2.08697          1000     
        0      5  # SizeSel_P3_ComHL(1)_BLK1repl_1999
            13            44       35.4372       28.1523          1000     
        0      5  # SizeSel_P1_RecPR(4)_BLK2repl_2000
            -1            10       3.34362       1.85859          1000     
        0      5  # SizeSel_P3_RecPR(4)_BLK2repl_2000
            13            44       27.9624       35.4097          1000     
        0      5  # SizeSel_P1_RecPC(5)_BLK2repl_2000
            -1            10       1.62974       3.37935          1000     
        0      5  # SizeSel_P3_RecPC(5)_BLK2repl_2000
# info on dev vectors created for selex parms are reported with other devs 
# after tag parameter section 
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
#  type  index  parm trend pattern link  var  vectr link _mnyr  mxyr phase 
#  dev_vector
#      5     1     1     1     2     0     0     0     0     0     0     0
#      5     3     2     1     2     0     0     0     0     0     0     0
#      5    11     3     2     2     0     0     0     0     0     0     0
#      5    13     4     2     2     0     0     0     0     0     0     0
#      5    17     5     2     2     0     0     0     0     0     0     0
#      5    19     6     2     2     0     0     0     0     0     0     0
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
      4      1    0.5048
      4      2         1
      4      3    1.1121
      4      4    0.6707
      4      5    0.1351
      4      6    0.1401
      4      7    0.2524
      4      8     0.925
      4      9    0.3363
      4     10      0.18
      4     11    0.7709
      4     12         1
      5      1         1
      5      2         1
      5      3         1
      5      4         1
      5      5         1
      5      6         1
      5      7         1
      5      8    0.1906
      5      9         1
      5     10         1
      5     11         1
      5     12         1
 -9999   1    0  # terminator
#
4 #_maxlambdaphase
1 #_sd_offset
# read 0 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=
# sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag
# -comp; 16=Tag-negbin; 17=F_ballpark
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
#  0 0 0 0 #_lencomp:_2
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
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex
#  bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr,
#  N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

