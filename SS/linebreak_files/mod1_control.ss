#V3.30.03.07-opt
#_data_and_control_files: scor1.dat // scor1.ctl
#_SS-V3.30.03.07-opt;_2017_05_19;_Stock_Synthesis_by_Richard_Methot_(NOAA)_
# using_ADMB_11.6
#_SS-V3.30.03.07-opt;user_support_available_at:NMFS.Stock.Synthesis@noaa.go
# v
#_SS-V3.30.03.07-opt;user_info_available_at:https://vlab.ncep.noaa.gov/grou
# p/stock-synthesis
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and al
# so read and use growth parameters
1  #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
2 # recr_dist_method for parameters:  1=like 3.24; 2=main effects for GP, S
# ettle timing, Area; 3=each Settle entity; 4=none when N_GP*Nsettle*pop==1
1 # Recruitment: 1=global; 2=by area (future option)
1 #  number of recruitment settlement assignments 
0 # year_x_area_x_settlement_event interaction requested (only for recr_dis
# t_method=1)
#GPat month  area age (for each settlement assignment)
 1 1 1 0
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
 1999 2016
 2000 2016
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
1 #_Growth_Age_for_L1
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
 0.01 1 0.248971 -1.3581 3 0.438438 3 0 0 0 0 0.5 0 0 # NatM_p_1_Fem_GP_1
 10 30 13.7928 14 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amin_Fem_GP_1
 30 50 33.2035 31 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.5 0.227719 0.27 1000 0 2 0 0 0 0 0.5 0 0 # VonBert_K_Fem_GP_1
 0.02 0.5 0.141283 0.1 1000 0 3 0 0 0 0 0.5 0 0 # CV_young_Fem_GP_1
 0.02 0.75 0.11103 0.15 1000 0 3 0 0 0 0 0.5 0 0 # CV_old_Fem_GP_1
 -3 3 1.55e-005 1.55e-005 1000 0 -3 0 0 0 0 0.5 0 0 # Wtlen_1_Fem
 2 4 3.05765 3.05765 1000 0 -3 0 0 0 0 0.5 0 0 # Wtlen_2_Fem
 10 30 17.1882 17.1882 1000 0 -3 0 0 0 0 0.5 0 0 # Mat50%_Fem
 -3 3 -0.465636 -0.465636 1000 0 -3 0 0 0 0 0.5 0 0 # Mat_slope_Fem
 -3 3 1 1 1000 0 -3 0 0 0 0 0.5 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 1000 0 -3 0 0 0 0 0.5 0 0 # Eggs/kg_slope_wt_Fem
 -3 3 -0.226192 -0.22 99 6 3 0 0 0 0 0.5 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0.237276 -0.11 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.134048 -0.16 1000 0 2 0 0 0 0 0.5 0 0 # L_at_Amax_Mal_GP_1
 -3 3 -0.611298 0.32 1000 0 2 0 0 0 0 0.5 0 0 # VonBert_K_Mal_GP_1
 -1 1 -0.288816 0.51 1000 0 3 0 0 0 0 0.5 0 0 # CV_young_Mal_GP_1
 -3 3 -0.322447 -1.07 1000 0 3 0 0 0 0 0.5 0 0 # CV_old_Mal_GP_1
 0 1 1.91e-005 1.91e-005 1000 0 -5 0 0 0 0 0.5 0 0 # Wtlen_1_Mal
 2 4 2.98055 2.98055 1000 0 -5 0 0 0 0 0.5 0 0 # Wtlen_2_Mal
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1
 0 0 0 0 1000 0 -4 0 0 0 0 0 0 0 # RecrDist_settle_1
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
             0            31       8.34402          10.8            99     
        0          2          0          0          0          0          0
          0          0 # SR_LN(R0)
          0.21          0.99         0.718         0.718         0.158     
        2         -2          0          0          0          0          0
          0          0 # SR_BH_steep
             0             2           0.9           0.9            99     
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
 1916 #_recdev_early_start (0=none; neg value makes relative to recdev_star
# t)
 2 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxpha
# se+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1961 #_last_early_yr_nobias_adj_in_MPD
 1970 #_first_yr_fullbias_adj_in_MPD
 2013.7 #_last_yr_fullbias_adj_in_MPD
 2015.9 #_first_recent_yr_nobias_adj_in_MPD
 0.7335 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for 
# all estimated recdevs)
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
#  1916E 1917E 1918E 1919E 1920E 1921E 1922E 1923E 1924E 1925E 1926E 1927E 
# 1928E 1929E 1930E 1931E 1932E 1933E 1934E 1935E 1936E 1937E 1938E 1939E 1
# 940E 1941E 1942E 1943E 1944E 1945E 1946E 1947E 1948E 1949E 1950E 1951E 19
# 52E 1953E 1954E 1955E 1956E 1957E 1958E 1959E 1960E 1961E 1962E 1963E 196
# 4E 1965E 1966E 1967E 1968E 1969E 1970E 1971E 1972E 1973E 1974E 1975E 1976
# E 1977E 1978E 1979E 1980E 1981E 1982E 1983E 1984E 1985R 1986R 1987R 1988R
#  1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 
# 2001R 2002R 2003R 2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2
# 013R 2014R 2015R 2016F 2017F
#  0.000116619 0.000138475 0.000164316 0.000194905 0.000231185 0.000274249 
# 0.000325334 0.000385987 0.000457439 0.000541109 0.000638168 0.000753465 0
# .000888865 0.00104858 0.00123673 0.00145927 0.00172157 0.0020304 0.002394
# 66 0.00282364 0.00332943 0.00392316 0.00461962 0.00542652 0.00637468 0.00
# 747782 0.00876403 0.0102792 0.0120478 0.0141055 0.0164852 0.0192106 0.022
# 3475 0.0259058 0.0300068 0.0346736 0.0439586 0.0579596 0.0589454 0.067245
# 2 0.0779125 0.0889144 0.100949 0.119012 0.154212 0.211925 0.286019 0.3762
# 49 0.547014 0.726892 0.890333 0.342264 -0.171209 -0.694374 -1.1399 -1.277
# 53 -1.54553 -1.42144 -1.02793 0.778826 1.71981 0.307589 1.15368 -0.654188
#  -1.26174 -1.22902 -0.365409 0.563209 0.784234 1.43096 -0.33782 -1.05427 
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
# ComHL 0.00362897 0.00790586 0.0128542 0.0116189 0.0163591 0.0269299 0.019
# 5402 0.0281944 0.051362 0.107416 0.0530566 0.0561552 0.0483269 0.0538912 
# 0.0444302 0.0459727 0.0429623 0.0321905 0.0329889 0.0338537 0.0548684 0.0
# 691207 0.079135 0.0660836 0.0630738 0.04907 0.0226083 0.0182269 0.0265653
#  0.0463696 0.0725401 0.0634005 0.079675 0.0771553 0.0740689 0.0541143 0.0
# 446502 0.0636487 0.0717019 0.0561169 0.0531743 0.0384414 0.0335132 0.0189
# 434 0.0145208 0.0130486 0.0278128 0.0359878 0.0369782 0.0362611 0.0392979
#  0.0253072 0.0389201 0.0307087 0.0309614 0.0158993 0.0254767 0.0162277 0.
# 0401898 0.0504118 0.0209849 0.00855582 0.0139362 0.0124337 0.0197269 0.01
# 92917 0.0209757 0.0123966 0.0112766 0.0149751 0.00572055 0.00897256 0.009
# ComNet 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
# 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8.78862e-005 0.00014757 0.0005608
# 56 0.000118726 0.000230077 5.95744e-005 0.00364437 1.72914e-005 0.0001985
# 48 0.00195562 0.0014354 0.00076703 0.00738454 0.00156723 0.000946765 0.00
# 121578 0.0029219 0.00211977 0.00479399 0.00437246 0.00336407 0.00759477 0
# .00437062 0.00487061 0.00728879 0.00325398 0.00166077 0.00188287 0.005341
# 81 0.00197685 0.00111568 0.001205 0.00154049 0.000669129 0.00019351 0.000
# 333652 0.000370788 0.000242073 0.000123776 0.000173374 8.80722e-005 0.000
# 10016 0.000178919 0.000140246 0.000113283 3.07225e-005 3.00465e-005 3.227
# 23e-006 3.27053e-005
# ComTrawl 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
# 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000259055 0 0 9.92154e-005 0.
# 000166532 0 2.88889e-005 8.64569e-005 0 4.22076e-006 4.03014e-006 0 7.913
# 62e-006 0 0 0.00017117 2.82799e-005 2.72744e-005 0.000134212 3.26101e-006
#  2.56134e-005 0.000958287 0.00638253 0.00576299 0.0121364 0.0221647 0.027
# 5702 0.0204738 0.0185815 0.0208669 0.00412466 0.00275695 0.0017376 0.0012
# 2353 0.00149883 0.00125944 0.00166395 0.000759841 0.000863518 0.000537912
#  0.000179428 0.000127965 0.000779456 0.000335948 0.000683808 0.000108681 
# 0.000109511 0.000116583 0.00118148
# RecPR 0 0 0 0 0 0 0 0 0 0 0 0 0 4.69751e-005 9.4134e-005 0.000141404 0.00
# 0188719 0.000235486 0.000281817 0.000328061 0.000375753 0.000263369 0.000
# 447478 0.000348063 0.000324109 0 0 0 0 0 0 0.00145437 0.00307295 0.002213
# 4 0.00293989 0.00183975 0.00199379 0.00167447 0.00197176 0.00168464 0.001
# 47508 0.000806715 0.000809898 0.000664499 0.000857596 0.00148715 0.001833
# 79 0.00294615 0.00402297 0.00388832 0.00490761 0.00543876 0.00603448 0.00
# 72567 0.0107907 0.0127538 0.0105649 0.0176741 0.0226567 0.0275495 0.02059
# 39 0.0394829 0.0281857 0.0561795 0.0640132 0.0465411 0.0489469 0.0135453 
# 0.024882 0.0269364 0.0238035 0.0316793 0.101837 0.0664215 0.0857084 0.103
# 581 0.0486163 0.0369656 0.10462 0.0567842 0.0447922 0.0267052 0.0297053 0
# RecPC 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000793579 0.00159264 0.00239267 0.00319
# 346 0.00398551 0.00476728 0.0055488 0.00635579 0.00445995 0.00758807 0.00
# 591208 0.00551086 0 0 0 0 0 0 0.0246318 0.0521773 0.0377168 0.0502555 0.0
# 315215 0.0341922 0.0287347 0.0338724 0.0289642 0.0253674 0.0138671 0.0139
# 042 0.0113904 0.0146752 0.0254133 0.0313294 0.0504099 0.0690661 0.0670643
#  0.0645209 0.0572235 0.0524001 0.0530025 0.0668628 0.0672787 0.0475984 0.
# 0684096 0.0759915 0.080812 0.0534319 0.0926148 0.0615261 0.0908848 0.1116
# 2 0.0853735 0.0712508 0.0579761 0.0497637 0.0650272 0.0719972 0.0551469 0
# .135688 0.140418 0.164287 0.194564 0.0892346 0.0947116 0.132323 0.149604 
# 0.171308 0.17447 0.148816 0.204775 0.159139 0.159048 0.0825149 0.0756433 
# RecDD 0 0 0 0 0 0 0 0 0 0 0 0 0 1.80972e-006 3.6225e-006 6.34112e-006 8.1
# 5435e-006 9.95792e-006 1.17528e-005 1.44519e-005 1.62749e-005 1.0885e-005
#  1.91309e-005 1.46194e-005 1.37198e-005 0 0 0 0 0 0 6.23854e-005 0.000129
# 973 9.2248e-005 0.000120899 7.50561e-005 8.11439e-005 6.8147e-005 7.97711
# e-005 6.8601e-005 6.00601e-005 3.28632e-005 3.33792e-005 2.68868e-005 3.5
# 059e-005 6.14826e-005 7.53444e-005 0.000119348 0.000160041 0.000149863 0.
# 000142979 0.000124116 0.000115173 0.000124715 0.000179217 0.000215155 0.0
# 00185422 0.00032168 0.000423149 0.00051326 0.000332361 0.000412485 0.0002
# 01492 0.000268592 0.000319874 0.000267529 0.000309015 0.000189215 0.00024
# 7257 0.000291365 0.000244388 0.000210462 0.000569223 0.000499455 0.000716
#
#_Q_setup
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
         4         1         0         1         0         1  #  RecPR
         5         1         0         1         0         1  #  RecPC
         7         1         0         1         0         1  #  Sanitation
         8         1         0         1         0         1  #  NWFSCTrawl
        11         1         0         1         0         1  #  SCBSurvey
        12         1         0         1         0         1  #  RecPCOBR
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_
# PH      Block    Blk_Fxn  #  parm_name
           -15            15       -8.7612            -6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPR(4)
        0.0001             1    0.00600167      0.164309          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecPR(4)
           -15            15      -10.6711            -6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPC(5)
        0.0001             1      0.384799      0.164309          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_RecPC(5)
           -15            15      -10.9166           -11          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_Sanitation(7)
        0.0001             1      0.218677          0.21          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_Sanitation(7)
           -15            15      -1.55614          -1.6          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_NWFSCTrawl(8)
        0.0001             1      0.213132          0.21          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_NWFSCTrawl(8)
           -15            15      -12.8849           -12          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_SCBSurvey(11)
        0.0001             1      0.176859           0.5          1000     
        0          4          0          0          0          0          0
          0          0  #  Q_extraSD_SCBSurvey(11)
           -15            15      -8.98017            -9          1000     
        0         -1          0          0          0          0          0
          0          0  #  LnQ_base_RecPCOBR(12)
        0.0001             1     0.0926869         0.097          1000     
        0          2          0          0          0          0          0
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
 24 0 0 7 # 8 NWFSCTrawl
 5 0 0 7 # 9 GillnetSurvey
 5 0 0 7 # 10 Impingement
 24 0 0 7 # 11 SCBSurvey
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
            13            44       40.1763       41.3268          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P1_ComHL(1)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_ComHL(1)
            -1            10       4.75028        4.8905          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P3_ComHL(1)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_ComHL(1)
           -25            -1      -17.4467      -17.2861          1000     
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
            13            44       35.3231       35.4526          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P1_RecPR(4)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPR(4)
            -1            10       4.10982        4.1643          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P3_RecPR(4)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecPR(4)
           -25            -1      -6.16313      -6.03478          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecPR(4)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecPR(4)
            13            44       39.4662       38.2635          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P1_RecPC(5)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPC(5)
            -1            10       4.27167       4.18979          1000     
        0          4          0          0          0          0        0.5
          1          2  #  SizeSel_P3_RecPC(5)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecPC(5)
           -25            -1       -7.0292      -6.83326          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecPC(5)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecPC(5)
            13            44        24.506       24.5039          1000     
        0          4          0          0          0          0        0.5
          0          2  #  SizeSel_P1_RecDD(6)
           -15            16      -12.5296       -12.487          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecDD(6)
            -1            10       1.50477       1.48287          1000     
        0          4          0          0          0          0        0.5
          0          2  #  SizeSel_P3_RecDD(6)
           -20             5       -12.621      -13.4208          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_RecDD(6)
           -25             3      -1.71481      -1.62316          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_RecDD(6)
            -5            11      -1.93913      -1.96867          1000     
        0          3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_RecDD(6)
            13            44       26.1162       25.8555          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_Sanitation(7)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_Sanitation(7)
            -1            10       3.46144       3.47934          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_Sanitation(7)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_Sanitation(7)
           -25             5      -3.60978      -3.53053          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P5_Sanitation(7)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_Sanitation(7)
            13            44       26.2339       26.0709          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_NWFSCTrawl(8)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_NWFSCTrawl(8)
            -1            10       3.52512       3.55352          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_NWFSCTrawl(8)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_NWFSCTrawl(8)
           -25             5      -1.02666     -0.865955          1000     
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
          0          0  #  SizeSel_P1_Impingement(10)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_Impingement(10)
            13            44       21.4946       41.3268          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P1_SCBSurvey(11)
           -10            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_SCBSurvey(11)
            -1            10       2.20569        4.8905          1000     
        0          4          0          0          0          0        0.5
          0          0  #  SizeSel_P3_SCBSurvey(11)
            -1            16            15            15          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P4_SCBSurvey(11)
           -25            -1       -2.9849      -17.2861          1000     
        0          5          0          0          0          0        0.5
          0          0  #  SizeSel_P5_SCBSurvey(11)
            -5            11            10            10          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P6_SCBSurvey(11)
             1            45             1             1          1000     
        0         -2          0          0          0          0        0.5
          0          0  #  SizeSel_P1_RecPCOBR(12)
             1            45            45            45          1000     
        0         -3          0          0          0          0        0.5
          0          0  #  SizeSel_P2_RecPCOBR(12)
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD     
#   PR_type    PHASE  #  parm_name
            13            44       28.9628        28.897          1000     
        0      4  # SizeSel_P1_ComHL(1)_BLK1repl_1999
            -1            10       2.09345       2.08697          1000     
        0      4  # SizeSel_P3_ComHL(1)_BLK1repl_1999
            13            44       28.1709       28.1523          1000     
        0      4  # SizeSel_P1_RecPR(4)_BLK1repl_1999
            -1            10       1.85916       1.85859          1000     
        0      4  # SizeSel_P3_RecPR(4)_BLK1repl_1999
            13            44       35.3277       35.4097          1000     
        0      4  # SizeSel_P1_RecPC(5)_BLK1repl_1999
            -1            10       3.36399       3.37935          1000     
        0      4  # SizeSel_P3_RecPC(5)_BLK1repl_1999
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
#      5    11     3     1     2     0     0     0     0     0     0     0
#      5    13     4     1     2     0     0     0     0     0     0     0
#      5    17     5     1     2     0     0     0     0     0     0     0
#      5    19     6     1     2     0     0     0     0     0     0     0
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
      4      1         1
      4      2         1
      4      3         1
      4      4         1
      4      5         1
      4      6         1
      4      7         1
      5      7         1
 -9999   1    0  # terminator
#
4 #_maxlambdaphase
1 #_sd_offset
# read 4 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=
# sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag
# -comp; 16=Tag-negbin; 17=F_ballpark
#like_comp fleet  phase  value  sizefreq_method
 1 9 1 0 1
 1 10 1 0 1
 1 11 1 1 1
 1 12 1 1 1
-9999  1  1  1  1  #  terminator
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 #_CPUE/survey:_1
#  0 0 0 0 #_CPUE/survey:_2
#  0 0 0 0 #_CPUE/survey:_3
#  1 1 1 1 #_CPUE/survey:_4
#  1 1 1 1 #_CPUE/survey:_5
#  0 0 0 0 #_CPUE/survey:_6
#  1 1 1 1 #_CPUE/survey:_7
#  1 1 1 1 #_CPUE/survey:_8
#  0 0 0 0 #_CPUE/survey:_9
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
#  0 0 0 0 #_lencomp:_9
#  0 0 0 0 #_lencomp:_10
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

