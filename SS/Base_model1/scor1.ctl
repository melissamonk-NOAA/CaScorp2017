#V3.30.05.03-opt
#_data_and_control_files: scor1.dat // scor1.ctl
#_SS-V3.30.05.03-opt;_2017_07_05;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
#_SS-V3.30.05.03-opt;user_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_SS-V3.30.05.03-opt;user_info_available_at:https://vlab.ncep.noaa.gov/group/stock-synthesis
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
 0.01 1 0.235 -1.3581 0.438438 3 -3 0 0 0 0 1 0 0 # NatM_p_1_Fem_GP_1
 2 30 11.8833 14 1000 0 2 0 0 0 0 1 0 0 # L_at_Amin_Fem_GP_1
 30 50 31.8423 31 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.5 0.294136 0.27 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Fem_GP_1
 0.02 0.5 0.0884628 0.1 1000 0 3 0 0 0 0 1 0 0 # CV_young_Fem_GP_1
 0.02 0.75 0.118924 0.15 1000 0 3 0 0 0 0 1 0 0 # CV_old_Fem_GP_1
 -3 3 1.55e-005 1.55e-005 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_1_Fem
 2 4 3.05765 3.05765 1000 0 -3 0 0 0 0 1 0 0 # Wtlen_2_Fem
 10 30 18 18 1000 0 -3 0 0 0 0 1 0 0 # Mat50%_Fem
 -3 3 -1.2 -0.465636 1000 0 -3 0 0 0 0 1 0 0 # Mat_slope_Fem
 -3 3 1 1 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 1000 0 -3 0 0 0 0 1 0 0 # Eggs/kg_slope_wt_Fem
 -1 1 0 0 99 6 -2 0 0 0 0 1 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0 0 1000 0 -2 0 0 0 0 1 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.141811 -0.16 1000 0 2 0 0 0 0 1 0 0 # L_at_Amax_Mal_GP_1
 -3 3 -0.0838863 0.32 1000 0 2 0 0 0 0 1 0 0 # VonBert_K_Mal_GP_1
 -3 3 1.32244 0.51 1000 0 3 0 0 0 0 1 0 0 # CV_young_Mal_GP_1
 -3 3 -0.489614 -1.07 1000 0 3 0 0 0 0 1 0 0 # CV_old_Mal_GP_1
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
             0            31       8.18823          10.8            99             0          1          0          0          0          0          1          0          0 # SR_LN(R0)
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
 1935.43 #_last_early_yr_nobias_adj_in_MPD
 2010 #_first_yr_fullbias_adj_in_MPD
 2014.98 #_last_yr_fullbias_adj_in_MPD
 2015.14 #_first_recent_yr_nobias_adj_in_MPD
 0.6765 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
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
#  -0.197585 -0.187243 -0.228502 -0.262095 -0.343173 -0.529982 -0.620732 -0.663751 -0.45945 0.726228 0.562067 0.740364 0.107221 -0.572187 -0.874835 -0.827926 -0.487113 -0.0481259 0.864197 1.15383 0.100765 -0.589006 -0.695722 -0.812629 -0.657025 0.608012 0.726385 0.951952 0.426445 -0.0634866 0.729906 0.256524 0.425961 0.344193 -0.0917768 0.124161 -0.358691 -0.493214 -0.451305 0.162885 -0.279909 -0.309523 -0.299145 -0.163424 -0.202693 -0.938169 -0.986238 0.234299 0.191805 0.954835 0 0 0 0 0 0 0 0 0 0 0 0 0
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
# ComHL 0.00158569 0.00345461 0.00561711 0.00507734 0.00714839 0.0117671 0.00853758 0.012317 0.0224373 0.0469398 0.0231892 0.0245287 0.021094 0.023509 0.0193735 0.0200387 0.0187216 0.0140239 0.0143682 0.0147435 0.0238995 0.0301218 0.0345049 0.0288232 0.0275106 0.0214003 0.00985736 0.0079456 0.0115842 0.0202389 0.0317078 0.0277491 0.0348941 0.0338067 0.0324701 0.0237335 0.0195971 0.02798 0.0316085 0.0248209 0.0236074 0.0171398 0.0150156 0.0085342 0.00658199 0.00595719 0.0128122 0.0167725 0.0174955 0.0175014 0.0194883 0.0130308 0.0210527 0.0177247 0.0190712 0.0102821 0.01685 0.0107209 0.0261105 0.0317302 0.0124862 0.00464275 0.00643282 0.00517668 0.00792519 0.0080958 0.00961352 0.00622435 0.00608093 0.0083348 0.00307563 0.00420426 0.0037764 0.00736604 0.0155742 0.0109514 0.0169371 0.00887585 0.021746 0.0133072 0.00998207 0.00929248 0.0144801 0.0216558 0.00811998 0.00972155 0.00684432 0.00143043 0.00133757 0.00100575 0.000626062 0.00152741 0.00216261 0.00276599 0.00294623 0.00337764 0.00356288 0.00202797 0.00128432 0.00299195 0.00327726 0.0442658 0.0413058 0.011367 0.011367 0.011367 0.011367 0.011367 0.011367 0.011367 0.011367 0.011367 0.011367
# ComNet 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000182302 0.000324219 0.00128806 0.000277992 0.000536386 0.000135979 0.00803044 3.60016e-005 0.000387793 0.0035434 0.00249764 0.0013195 0.0128738 0.00280491 0.00174 0.00228585 0.00557661 0.00403862 0.00874518 0.00752657 0.00548117 0.0118901 0.00669855 0.00727246 0.0106167 0.0044738 0.0022138 0.00250486 0.00736236 0.00287361 0.0148982 0.0161865 0.0209063 0.00916533 0.00264673 0.00446856 0.00486452 0.00315864 0.00161852 0.00228966 0.00118592 0.00137281 0.00246731 0.00194641 0.00161917 0.000460775 0.000467165 5.14569e-005 0.0176488 0.0185864 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476 0.000178476
# ComTrawl 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000149524 0 0 6.56196e-005 0.00011002 0 1.81833e-005 5.14426e-005 0 1.94826e-006 1.67792e-006 0 3.32096e-006 0 0 9.23042e-005 1.574e-005 1.4664e-005 6.28875e-005 1.32266e-006 9.89352e-006 0.000377795 0.00261346 0.0024079 0.0050208 0.00816454 0.00910116 0.00641685 0.006102 0.00752095 0.00460269 0.00316225 0.0020392 0.00146723 0.00184108 0.00157822 0.00213164 0.00100904 0.00118993 0.000758567 0.000253873 0.000180846 0.00109737 0.000471336 0.000972766 0.000160825 0.000170004 0.000185421 0.00691498 0.00645258 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124 0.000643124
# RecPR 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000148919 0.00029931 0.000450049 0.000601054 0.00075034 0.000897463 0.00104431 0.00119604 0.00083969 0.00143052 0.00111676 0.0010429 0 0 0 0 0 0 0.00444297 0.00944359 0.00685657 0.00917931 0.00578326 0.0062934 0.00530312 0.00627104 0.00538206 0.0047306 0.00259484 0.00261006 0.00214449 0.00277105 0.00481721 0.00597271 0.00969836 0.0134743 0.0133391 0.0173679 0.0200357 0.0233623 0.0298165 0.0470976 0.0583348 0.0492397 0.0817415 0.102139 0.119484 0.0844447 0.152988 0.104402 0.207037 0.203428 0.142318 0.158027 0.0393187 0.0842313 0.0934363 0.0818784 0.0784924 0.353086 0.178214 0.286976 0.32992 0.102827 0.0783307 0.161378 0.102132 0.10359 0.0758929 0.0920476 0.137523 0.0745638 0.115163 0.0874451 0.0616392 0.0100753 0.0402895 0.0255832 0.0273459 0.017527 0.033175 0.0195178 0.0175576 0.0170385 0.0239999 0.0184733 0.0139291 0.0135787 0.0234029 0.0237169 0.047097 0.047097 0.047097 0.047097 0.047097 0.047097 0.047097 0.047097 0.047097 0.047097
# RecPC 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00058573 0.00117593 0.00176681 0.0023584 0.00294341 0.00352055 0.00409714 0.00469261 0.00329349 0.00560665 0.00437214 0.00407868 0 0 0 0 0 0 0.0173901 0.0368857 0.0267107 0.0356624 0.0224147 0.0243584 0.0205088 0.0242372 0.020792 0.0182758 0.0100304 0.0100999 0.00831163 0.0107612 0.0187414 0.0232685 0.0377993 0.0524715 0.0518557 0.0510736 0.0467634 0.0447325 0.0479979 0.0648553 0.0695214 0.051264 0.0748764 0.0827493 0.0858925 0.0537901 0.0851857 0.049848 0.0661564 0.0776178 0.0605114 0.0535373 0.0465721 0.0422772 0.0570689 0.0626128 0.0448717 0.101009 0.0976454 0.111232 0.132127 0.0606597 0.0630268 0.0811973 0.0828231 0.0900119 0.0939056 0.0862251 0.146115 0.114472 0.118681 0.0628227 0.058504 0.0419154 0.0569488 0.0873752 0.088665 0.0727835 0.0799622 0.0839456 0.0875467 0.109663 0.109201 0.131169 0.0920733 0.0839551 0.131811 0.121654 0.291195 0.291195 0.291195 0.291195 0.291195 0.291195 0.291195 0.291195 0.291195 0.291195
# RecDD 0 0 0 0 0 0 0 0 0 0 0 0 0 5.66826e-006 9.92756e-006 1.56042e-005 2.12826e-005 2.6929e-005 3.11374e-005 3.67706e-005 4.25e-005 2.98732e-005 5.00454e-005 3.87338e-005 3.59109e-005 0 0 0 0 0 0 0.000155689 0.000325168 0.000231811 0.000305783 0.000189579 0.000206782 0.000173377 0.000204543 0.000175471 0.000154812 8.44333e-005 8.69567e-005 7.20744e-005 9.45964e-005 0.000165567 0.000205316 0.000334466 0.000459477 0.000449929 0.00045313 0.000434755 0.000449737 0.000521724 0.000746026 0.000840477 0.00065984 0.00104393 0.00124188 0.00132856 0.000690683 0.000796961 0.000404345 0.000652514 0.00456723 0.00428797 0.00526393 0.00201955 0.00212636 0.00304858 0.00379769 0.00286632 0.00605584 0.0103573 0.00194053 0.00267742 0.00725746 0.0034281 0.00741462 0.00620205 0.00411001 0.00287174 0.00222634 0.00305403 0.00476897 0.00800923 0.00889795 0.00933402 0.00449486 0.0051848 0.00556238 0.0052263 0.00407142 0.00395573 0.00406169 0.00553589 0.00501672 0.00675095 0.00750477 0.00943339 0.00714208 0.00602156 0.00499199 0.024772 0.024772 0.024772 0.024772 0.024772 0.024772 0.024772 0.024772 0.024772 0.024772
#
#_Q_setup
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
         4         1         0         1         0         1  #  RecPR
         5         1         0         1         0         1  #  RecPC
         6         1         0         1         0         1  #  RecDD
         7         1         0         1         0         1  #  Sanitation
         8         1         0         1         0         1  #  NWFSCTrawl
        11         1         0         1         0         1  #  SCBSurvey
        12         1         0         1         0         1  #  RecPCOBR
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
           -15            15      -6.82468            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPR(4)
        0.0001             1     0.0115663      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPR(4)
           -15            15      -11.2468            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPC(5)
        0.0001             1      0.255821      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPC(5)
           -15            15      -10.5713            -6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecDD(6)
        0.0001             1     0.0668641      0.164309          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecDD(6)
           -15            15      -10.6102           -11          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_Sanitation(7)
        0.0001             1      0.217368          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_Sanitation(7)
           -15            15      -1.08058          -1.6          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_NWFSCTrawl(8)
        0.0001             1      0.253196          0.21          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_NWFSCTrawl(8)
           -15            15      -11.1396           -12          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_SCBSurvey(11)
        0.0001             1      0.158616           0.5          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_SCBSurvey(11)
           -15            15      -10.2038            -9          1000             0         -1          0          0          0          0          1          0          0  #  LnQ_base_RecPCOBR(12)
        0.0001             1      0.135342         0.097          1000             0          4          0          0          0          0          1          0          0  #  Q_extraSD_RecPCOBR(12)
#_no timevary Q parameters
#
#_size_selex_types
#_discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead;_4=define_dome-shaped_retention
#_Pattern Discard Male Special
 24 0 0 0 # 1 ComHL
 24 0 0 0 # 2 ComNet
 5 0 0 1 # 3 ComTrawl
 24 0 0 0 # 4 RecPR
 24 0 0 0 # 5 RecPC
 24 0 0 0 # 6 RecDD
 24 0 0 0 # 7 Sanitation
 24 0 0 0 # 8 NWFSCTrawl
 5 0 0 7 # 9 GillnetSurvey
 24 0 0 0 # 10 Impingement
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
            13            44       24.4193       41.3268          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P1_ComHL(1)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComHL(1)
            -1            10       2.11068        4.8905          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P3_ComHL(1)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_ComHL(1)
           -25            -1       -15.551      -17.2861          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_ComHL(1)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_ComHL(1)
            13            44       44	         41.3268          1000             0         -5          0          0          0          0          1          1          2  #  SizeSel_P1_ComNet(2)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComNet(2)
            -1            10       5.14682        4.8905          1000             0          5          0          0          0          0          1          1          2  #  SizeSel_P3_ComNet(2)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_ComNet(2)
           -25            -1      -15.9748      -17.2861          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_ComNet(2)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_ComNet(2)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_ComTrawl(3)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_ComTrawl(3)
            13            44       42.3878       35.4526          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPR(4)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPR(4)
            -1            10       4.59604        4.1643          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPR(4)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPR(4)
           -25            -1      -8.14174      -6.03478          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPR(4)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPR(4)
            13            44       37.8468       38.2635          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecPC(5)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPC(5)
            -1            10       4.61685       4.18979          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P3_RecPC(5)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_RecPC(5)
           -25            -1      -8.38647      -6.83326          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecPC(5)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_RecPC(5)
            13            44       22.4692       24.5039          1000             0          5          0          0          0          0          1          2          2  #  SizeSel_P1_RecDD(6)
           -15            16      -11.1932       -12.487          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P2_RecDD(6)
            -1            10       3.68189       1.48287          1000             0          4          0          0          0          0          1          2          2  #  SizeSel_P3_RecDD(6)
           -20             5      -10.9273      -13.4208          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P4_RecDD(6)
           -25             3      -2.63511      -1.62316          1000             0          5          0          0          0          0          1          0          0  #  SizeSel_P5_RecDD(6)
            -5            11      -2.58513      -1.96867          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P6_RecDD(6)
            13            44       23.6528       25.8555          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_Sanitation(7)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_Sanitation(7)
            -1            10       3.00057       3.47934          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_Sanitation(7)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_Sanitation(7)
           -25             5      -4.58504      -3.53053          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_Sanitation(7)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_Sanitation(7)
            13            44       23.0532       26.0709          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P1_NWFSCTrawl(8)
           -10            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_NWFSCTrawl(8)
            -1            10        3.4332       3.55352          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P3_NWFSCTrawl(8)
            -1            16            15            15          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P4_NWFSCTrawl(8)
           -25             5      -12.7418     -0.865955          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P5_NWFSCTrawl(8)
            -5            11            10            10          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P6_NWFSCTrawl(8)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_GillnetSurvey(9)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_GillnetSurvey(9)
            13            44        18.012       24.5039          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P1_Impingement(10)
           -15            16      -5.78234       -12.487          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P2_Impingement(10)
            -1            10       2.13686       1.48287          1000             0         -4          0          0          0          0          1          0          0  #  SizeSel_P3_Impingement(10)
           -20             5         2.701      -13.4208          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P4_Impingement(10)
           -25            10       8.27467      -1.62316          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P5_Impingement(10)
            -5            11     -0.615834      -1.96867          1000             0          4          0          0          0          0          1          0          0  #  SizeSel_P6_Impingement(10)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_SCBSurvey(11)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_SCBSurvey(11)
             1            45             1             1          1000             0         -2          0          0          0          0          1          0          0  #  SizeSel_P1_RecPCOBR(12)
             1            45            45            45          1000             0         -3          0          0          0          0          1          0          0  #  SizeSel_P2_RecPCOBR(12)
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type    PHASE  #  parm_name
            13            44       28.4258        28.897          1000             0      6  # SizeSel_P1_ComHL(1)_BLK1repl_1999
            -1            10       2.02878       2.08697          1000             0      6  # SizeSel_P3_ComHL(1)_BLK1repl_1999
            13            44            44        28.897          1000             0      -6  # SizeSel_P1_ComNet(2)_BLK1repl_1999
            -1            10       4.19945       2.08697          1000             0      6  # SizeSel_P3_ComNet(2)_BLK1repl_1999
            13            44       36.8063       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2000
            13            44       35.8776       28.1523          1000             0      6  # SizeSel_P1_RecPR(4)_BLK2repl_2006
            -1            10       3.63556       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2000
            -1            10       3.47929       1.85859          1000             0      6  # SizeSel_P3_RecPR(4)_BLK2repl_2006
            13            44       32.8394       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2000
            13            44       27.0045       35.4097          1000             0      6  # SizeSel_P1_RecPC(5)_BLK2repl_2006
            -1            10       3.29041       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2000
            -1            10        1.1657       3.37935          1000             0      6  # SizeSel_P3_RecPC(5)_BLK2repl_2006
            13            44            44       35.4097          1000             0      -6  # SizeSel_P1_RecDD(6)_BLK2repl_2000
            13            44        24.513       35.4097          1000             0      6  # SizeSel_P1_RecDD(6)_BLK2repl_2006
            -1            10       5.53341       3.37935          1000             0      6  # SizeSel_P3_RecDD(6)_BLK2repl_2000
            -1            10       2.15741       3.37935          1000             0      6  # SizeSel_P3_RecDD(6)_BLK2repl_2006
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
#      5     7     3     1     2     0     0     0     0     0     0     0
#      5     9     4     1     2     0     0     0     0     0     0     0
#      5    15     5     2     2     0     0     0     0     0     0     0
#      5    17     7     2     2     0     0     0     0     0     0     0
#      5    21     9     2     2     0     0     0     0     0     0     0
#      5    23    11     2     2     0     0     0     0     0     0     0
#      5    27    13     2     2     0     0     0     0     0     0     0
#      5    29    15     2     2     0     0     0     0     0     0     0
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
      4      1    0.5389
      4      2    0.2053
      4      3    0.6903
      4      4    0.6898
      4      5    0.1294
      4      6    0.2204
      4      7    0.2465
      4      8    0.7485
      4      9         1
      4     10    0.1656
      4     11    0.6611
      4     12         1
      5      1         1
      5      2         1
      5      3         1
      5      4         1
      5      5         1
      5      6         1
      5      7         1
      5      8   0.30833
      5      9         1
      5     10         1
      5     11         1
      5     12         1
 -9999   1    0  # terminator
#
4 #_maxlambdaphase
1 #_sd_offset
# read 2 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin; 17=F_ballpark
#like_comp fleet  phase  value  sizefreq_method
 1 9 1 0 1
 4 9 1 0 1
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

