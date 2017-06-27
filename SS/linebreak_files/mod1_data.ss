#V3.30.03.07-opt
#_SS-V3.30.03.07-opt;_2017_05_19;_Stock_Synthesis_by_Richard_Methot_(NOAA)_
# using_ADMB_11.6
#_SS-V3.30.03.07-opt;user_support_available_at:NMFS.Stock.Synthesis@noaa.go
# v
#_SS-V3.30.03.07-opt;user_info_available_at:https://vlab.ncep.noaa.gov/grou
# p/stock-synthesis
#_Start_time: Sat Jun 03 05:15:02 2017
#_Number_of_datafiles: 3

#_observed data: 
#V3.30.03.07-opt
1916 #_StartYr
2016 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
6 #_spawn_month
2 #_Ngenders
21 #_Nages=accumulator age
1 #_Nareas
12 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=ignore 
#_survey_timing: -1=for use of catch-at-age to override the month value ass
# ociated with a datum 
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read late
# r)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type, timing, area, units, need_catch_mult fleetname
 1 -1 1 1 0 ComHL  # 1
 1 -1 1 1 0 ComNet  # 2
 1 -1 1 1 0 ComTrawl  # 3
 1 -1 1 1 0 RecPR  # 4
 1 -1 1 1 0 RecPC  # 5
 1 -1 1 1 0 RecDD  # 6
 3 0 1 0 0 Sanitation  # 7 # time = 0 ignored in v3.30
 3 0 1 0 0 NWFSCTrawl  # 8
 3 0 1 0 0 GillnetSurvey  # 9
 3 0 1 0 0 Impingement  # 10
 3 0 1 0 0 SCBSurvey  # 11
 3 0 1 0 0 RecPCOBR  # 12
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch); can be overridden in control fil
# e with detailed F input

# final catches for all fleets (1-6) copied from Google "CatchesForSS": 6/6
# /2017
#Year Season Fleet Catch Catch se Fleet
-999 1 1 0 0.01 #ComHL
1916 1 1 3.6352 0.01 #ComHL
1917 1 1 7.904 0.01 #ComHL
1918 1 1 12.8083 0.01 #ComHL
1919 1 1 11.536 0.01 #ComHL
1920 1 1 16.1817 0.01 #ComHL
1921 1 1 26.4812 0.01 #ComHL
1922 1 1 19.1061 0.01 #ComHL
1923 1 1 27.4274 0.01 #ComHL
1924 1 1 49.4742 0.01 #ComHL
1925 1 1 101.2 0.01 #ComHL
1926 1 1 49.0196 0.01 #ComHL
1927 1 1 51.4641 0.01 #ComHL
1928 1 1 44.0368 0.01 #ComHL
1929 1 1 48.8967 0.01 #ComHL
1930 1 1 40.1935 0.01 #ComHL
1931 1 1 41.5375 0.01 #ComHL
1932 1 1 38.7842 0.01 #ComHL
1933 1 1 29.103 0.01 #ComHL
1934 1 1 29.9099 0.01 #ComHL
1935 1 1 30.7577 0.01 #ComHL
1936 1 1 49.7468 0.01 #ComHL
1937 1 1 62.1949 0.01 #ComHL
1938 1 1 70.435 0.01 #ComHL
1939 1 1 58.2876 0.01 #ComHL
1940 1 1 55.3714 0.01 #ComHL
1941 1 1 43.0739 0.01 #ComHL
1942 1 1 20.0001 0.01 #ComHL
1943 1 1 16.3219 0.01 #ComHL
1944 1 1 24.0326 0.01 #ComHL
1945 1 1 42.1263 0.01 #ComHL
1946 1 1 65.6318 0.01 #ComHL
1947 1 1 56.7925 0.01 #ComHL
1948 1 1 70.166 0.01 #ComHL
1949 1 1 66.7168 0.01 #ComHL
1950 1 1 63.1629 0.01 #ComHL
1951 1 1 45.8531 0.01 #ComHL
1952 1 1 37.9255 0.01 #ComHL
1953 1 1 54.168 0.01 #ComHL
1954 1 1 60.9171 0.01 #ComHL
1955 1 1 47.7069 0.01 #ComHL
1956 1 1 45.4652 0.01 #ComHL
1957 1 1 33.2344 0.01 #ComHL
1958 1 1 29.4259 0.01 #ComHL
1959 1 1 16.9383 0.01 #ComHL
1960 1 1 13.2465 0.01 #ComHL
1961 1 1 12.1193 0.01 #ComHL
1962 1 1 26.1759 0.01 #ComHL
1963 1 1 34.1148 0.01 #ComHL
1964 1 1 35.1926 0.01 #ComHL
1965 1 1 34.7811 0.01 #ComHL
1966 1 1 38.3133 0.01 #ComHL
1967 1 1 25.422 0.01 #ComHL
1968 1 1 40.6026 0.01 #ComHL
1969 1 1 33.28328692 0.01 #ComHL
1970 1 1 34.45083506 0.01 #ComHL
1971 1 1 17.75770881 0.01 #ComHL
1972 1 1 27.83745044 0.01 #ComHL
1973 1 1 16.79609184 0.01 #ComHL
1974 1 1 37.94395406 0.01 #ComHL
1975 1 1 41.95099382 0.01 #ComHL
1976 1 1 15.41354066 0.01 #ComHL
1977 1 1 5.74656857 0.01 #ComHL
1978 1 1 8.986129129 0.01 #ComHL
1979 1 1 8.396458347 0.01 #ComHL
1980 1 1 14.46553147 0.01 #ComHL
1981 1 1 15.48067241 0.01 #ComHL
1982 1 1 17.94549628 0.01 #ComHL
1983 1 1 10.91027025 0.01 #ComHL
1984 1 1 9.891046983 0.01 #ComHL
1985 1 1 12.730085 0.01 #ComHL
1986 1 1 4.756828841 0.01 #ComHL
1987 1 1 7.459788989 0.01 #ComHL
1988 1 1 7.770500132 0.01 #ComHL
1989 1 1 15.87257668 0.01 #ComHL
1990 1 1 32.0685651 0.01 #ComHL
1991 1 1 20.11548475 0.01 #ComHL
1992 1 1 27.71316599 0.01 #ComHL
1993 1 1 13.71755677 0.01 #ComHL
1994 1 1 34.85090401 0.01 #ComHL
1995 1 1 23.69342562 0.01 #ComHL
1996 1 1 20.17127668 0.01 #ComHL
1997 1 1 20.21708957 0.01 #ComHL
1998 1 1 32.3375457 0.01 #ComHL
1999 1 1 30.88151246 0.01 #ComHL
2000 1 1 11.73580935 0.01 #ComHL
2001 1 1 14.18339669 0.01 #ComHL
2002 1 1 10.08654553 0.01 #ComHL
2003 1 1 2.134608232 0.01 #ComHL
2004 1 1 1.996715987 0.01 #ComHL
2005 1 1 1.47326977 0.01 #ComHL
2006 1 1 0.858651378 0.01 #ComHL
2007 1 1 1.896925547 0.01 #ComHL
2008 1 1 2.463463091 0.01 #ComHL
2009 1 1 2.970126371 0.01 #ComHL
2010 1 1 2.992806016 0.01 #ComHL
2011 1 1 3.241828524 0.01 #ComHL
2012 1 1 3.219602471 0.01 #ComHL
2013 1 1 1.729549764 0.01 #ComHL
2014 1 1 1.025119975 0.01 #ComHL
2015 1 1 2.211265433 0.01 #ComHL
2016 1 1 2.316952581 0.01 #ComHL
-999 1 2 0 0.01 #ComNet
1916 1 2 0 0.01 #ComNet
1917 1 2 0 0.01 #ComNet
1918 1 2 0 0.01 #ComNet
1919 1 2 0 0.01 #ComNet
1920 1 2 0 0.01 #ComNet
1921 1 2 0 0.01 #ComNet
1922 1 2 0 0.01 #ComNet
1923 1 2 0 0.01 #ComNet
1924 1 2 0 0.01 #ComNet
1925 1 2 0 0.01 #ComNet
1926 1 2 0 0.01 #ComNet
1927 1 2 0 0.01 #ComNet
1928 1 2 0 0.01 #ComNet
1929 1 2 0 0.01 #ComNet
1930 1 2 0 0.01 #ComNet
1931 1 2 0 0.01 #ComNet
1932 1 2 0 0.01 #ComNet
1933 1 2 0 0.01 #ComNet
1934 1 2 0 0.01 #ComNet
1935 1 2 0 0.01 #ComNet
1936 1 2 0 0.01 #ComNet
1937 1 2 0 0.01 #ComNet
1938 1 2 0 0.01 #ComNet
1939 1 2 0 0.01 #ComNet
1940 1 2 0 0.01 #ComNet
1941 1 2 0 0.01 #ComNet
1942 1 2 0 0.01 #ComNet
1943 1 2 0 0.01 #ComNet
1944 1 2 0 0.01 #ComNet
1945 1 2 0 0.01 #ComNet
1946 1 2 0 0.01 #ComNet
1947 1 2 0 0.01 #ComNet
1948 1 2 0 0.01 #ComNet
1949 1 2 0 0.01 #ComNet
1950 1 2 0 0.01 #ComNet
1951 1 2 0 0.01 #ComNet
1952 1 2 0 0.01 #ComNet
1953 1 2 0 0.01 #ComNet
1954 1 2 0 0.01 #ComNet
1955 1 2 0 0.01 #ComNet
1956 1 2 0 0.01 #ComNet
1957 1 2 0 0.01 #ComNet
1958 1 2 0 0.01 #ComNet
1959 1 2 0 0.01 #ComNet
1960 1 2 0 0.01 #ComNet
1961 1 2 0 0.01 #ComNet
1962 1 2 0 0.01 #ComNet
1963 1 2 0 0.01 #ComNet
1964 1 2 0 0.01 #ComNet
1965 1 2 0 0.01 #ComNet
1966 1 2 0 0.01 #ComNet
1967 1 2 0 0.01 #ComNet
1968 1 2 0 0.01 #ComNet
1969 1 2 0.095254511 0.01 #ComNet
1970 1 2 0.164200633 0.01 #ComNet
1971 1 2 0.626411808 0.01 #ComNet
1972 1 2 0.129727572 0.01 #ComNet
1973 1 2 0.238136277 0.01 #ComNet
1974 1 2 0.056245521 0.01 #ComNet
1975 1 2 3.032722192 0.01 #ComNet
1976 1 2 0.012700601 0.01 #ComNet
1977 1 2 0.133356315 0.01 #ComNet
1978 1 2 1.260988288 0.01 #ComNet
1979 1 2 0.969328047 0.01 #ComNet
1980 1 2 0.562455208 0.01 #ComNet
1981 1 2 5.925737769 0.01 #ComNet
1982 1 2 1.34082064 0.01 #ComNet
1983 1 2 0.833250175 0.01 #ComNet
1984 1 2 1.06639693 0.01 #ComNet
1985 1 2 2.483874772 0.01 #ComNet
1986 1 2 1.762662046 0.01 #ComNet
1987 1 2 3.985720895 0.01 #ComNet
1988 1 2 3.649154956 0.01 #ComNet
1989 1 2 2.80002903 0.01 #ComNet
1990 1 2 6.165234825 0.01 #ComNet
1991 1 2 3.287187815 0.01 #ComNet
1992 1 2 3.329825548 0.01 #ComNet
1993 1 2 4.660213552 0.01 #ComNet
1994 1 2 1.920965971 0.01 #ComNet
1995 1 2 0.976131941 0.01 #ComNet
1996 1 2 1.192495759 0.01 #ComNet
1997 1 2 3.81653074 0.01 #ComNet
1998 1 2 1.591203926 0.01 #ComNet
1999 1 2 1.775362648 0.01 #ComNet
2000 1 2 1.997623173 0.01 #ComNet
2001 1 2 2.637642768 0.01 #ComNet
2002 1 2 1.182516715 0.01 #ComNet
2003 1 2 0.354709655 0.01 #ComNet
2004 1 2 0.624143843 0.01 #ComNet
2005 1 2 0.695811523 0.01 #ComNet
2006 1 2 0.440892308 0.01 #ComNet
2007 1 2 0.211827889 0.01 #ComNet
2008 1 2 0.278506046 0.01 #ComNet
2009 1 2 0.133809908 0.01 #ComNet
2010 1 2 0.143788952 0.01 #ComNet
2011 1 2 0.241765021 0.01 #ComNet
2012 1 2 0.17780842 0.01 #ComNet
2013 1 2 0.137438652 0.01 #ComNet
2014 1 2 0.036287433 0.01 #ComNet
2015 1 2 0.034473061 0.01 #ComNet
2016 1 2 0.003628743 0.01 #ComNet
-999 1 3 0 0.01 #ComTrawl
1916 1 3 0 0.01 #ComTrawl
1917 1 3 0 0.01 #ComTrawl
1918 1 3 0 0.01 #ComTrawl
1919 1 3 0 0.01 #ComTrawl
1920 1 3 0 0.01 #ComTrawl
1921 1 3 0 0.01 #ComTrawl
1922 1 3 0 0.01 #ComTrawl
1923 1 3 0 0.01 #ComTrawl
1924 1 3 0 0.01 #ComTrawl
1925 1 3 0 0.01 #ComTrawl
1926 1 3 0 0.01 #ComTrawl
1927 1 3 0 0.01 #ComTrawl
1928 1 3 0 0.01 #ComTrawl
1929 1 3 0 0.01 #ComTrawl
1930 1 3 0 0.01 #ComTrawl
1931 1 3 0 0.01 #ComTrawl
1932 1 3 0 0.01 #ComTrawl
1933 1 3 0 0.01 #ComTrawl
1934 1 3 0 0.01 #ComTrawl
1935 1 3 0 0.01 #ComTrawl
1936 1 3 0 0.01 #ComTrawl
1937 1 3 0 0.01 #ComTrawl
1938 1 3 0 0.01 #ComTrawl
1939 1 3 0 0.01 #ComTrawl
1940 1 3 0 0.01 #ComTrawl
1941 1 3 0 0.01 #ComTrawl
1942 1 3 0 0.01 #ComTrawl
1943 1 3 0 0.01 #ComTrawl
1944 1 3 0 0.01 #ComTrawl
1945 1 3 0 0.01 #ComTrawl
1946 1 3 0 0.01 #ComTrawl
1947 1 3 0 0.01 #ComTrawl
1948 1 3 0 0.01 #ComTrawl
1949 1 3 0 0.01 #ComTrawl
1950 1 3 0 0.01 #ComTrawl
1951 1 3 0 0.01 #ComTrawl
1952 1 3 0 0.01 #ComTrawl
1953 1 3 0 0.01 #ComTrawl
1954 1 3 0 0.01 #ComTrawl
1955 1 3 0 0.01 #ComTrawl
1956 1 3 0 0.01 #ComTrawl
1957 1 3 0 0.01 #ComTrawl
1958 1 3 0 0.01 #ComTrawl
1959 1 3 0 0.01 #ComTrawl
1960 1 3 0 0.01 #ComTrawl
1961 1 3 0 0.01 #ComTrawl
1962 1 3 0 0.01 #ComTrawl
1963 1 3 0 0.01 #ComTrawl
1964 1 3 0 0.01 #ComTrawl
1965 1 3 0 0.01 #ComTrawl
1966 1 3 0 0.01 #ComTrawl
1967 1 3 0 0.01 #ComTrawl
1968 1 3 0 0.01 #ComTrawl
1969 1 3 0.280774011 0.01 #ComTrawl
1970 1 3 0 0.01 #ComTrawl
1971 1 3 0 0.01 #ComTrawl
1972 1 3 0.108408705 0.01 #ComTrawl
1973 1 3 0.172365306 0.01 #ComTrawl
1974 1 3 0 0.01 #ComTrawl
1975 1 3 0.024040424 0.01 #ComTrawl
1976 1 3 0.063503007 0.01 #ComTrawl
1977 1 3 0 0.01 #ComTrawl
1978 1 3 0.002721557 0.01 #ComTrawl
1979 1 3 0.002721557 0.01 #ComTrawl
1980 1 3 0 0.01 #ComTrawl
1981 1 3 0.006350301 0.01 #ComTrawl
1982 1 3 0 0.01 #ComTrawl
1983 1 3 0 0.01 #ComTrawl
1984 1 3 0.150139253 0.01 #ComTrawl
1985 1 3 0.024040424 0.01 #ComTrawl
1986 1 3 0.022679645 0.01 #ComTrawl
1987 1 3 0.111583856 0.01 #ComTrawl
1988 1 3 0.002721557 0.01 #ComTrawl
1989 1 3 0.021318867 0.01 #ComTrawl
1990 1 3 0.77791184 0.01 #ComTrawl
1991 1 3 4.800373761 0.01 #ComTrawl
1992 1 3 3.939908011 0.01 #ComTrawl
1993 1 3 7.759613902 0.01 #ComTrawl
1994 1 3 13.08479466 0.01 #ComTrawl
1995 1 3 16.20460669 0.01 #ComTrawl
1996 1 3 12.9668605 0.01 #ComTrawl
1997 1 3 13.27575727 0.01 #ComTrawl
1998 1 3 16.79609184 0.01 #ComTrawl
1999 1 3 6.5634894 0.01 #ComTrawl
2000 1 3 4.570402155 0.01 #ComTrawl
2001 1 3 2.975115893 0.01 #ComTrawl
2002 1 3 2.162277399 0.01 #ComTrawl
2003 1 3 2.747412252 0.01 #ComTrawl
2004 1 3 2.355961572 0.01 #ComTrawl
2005 1 3 3.122533589 0.01 #ComTrawl
2006 1 3 1.383911967 0.01 #ComTrawl
2007 1 3 1.477805699 0.01 #ComTrawl
2008 1 3 0.864094492 0.01 #ComTrawl
2009 1 3 0.272609339 0.01 #ComTrawl
2010 1 3 0.183705128 0.01 #ComTrawl
2011 1 3 1.053242736 0.01 #ComTrawl
2012 1 3 0.425923742 0.01 #ComTrawl
2013 1 3 0.829621431 0.01 #ComTrawl
2014 1 3 0.128366793 0.01 #ComTrawl
2015 1 3 0.125645236 0.01 #ComTrawl
2016 1 3 0.131088351 0.01 #ComTrawl
-999 1 4 0 0.01 #RecPR
1916 1 4 0 0.01 #RecPR
1917 1 4 0 0.01 #RecPR
1918 1 4 0 0.01 #RecPR
1919 1 4 0 0.01 #RecPR
1920 1 4 0 0.01 #RecPR
1921 1 4 0 0.01 #RecPR
1922 1 4 0 0.01 #RecPR
1923 1 4 0 0.01 #RecPR
1924 1 4 0 0.01 #RecPR
1925 1 4 0 0.01 #RecPR
1926 1 4 0 0.01 #RecPR
1927 1 4 0 0.01 #RecPR
1928 1 4 0 0.01 #RecPR
1929 1 4 0.060372 0.01 #RecPR
1930 1 4 0.120741 0.01 #RecPR
1931 1 4 0.181108 0.01 #RecPR
1932 1 4 0.241471 0.01 #RecPR
1933 1 4 0.30183 0.01 #RecPR
1934 1 4 0.362186 0.01 #RecPR
1935 1 4 0.422537 0.01 #RecPR
1936 1 4 0.482885 0.01 #RecPR
1937 1 4 0.335967 0.01 #RecPR
1938 1 4 0.564591 0.01 #RecPR
1939 1 4 0.4353 0.01 #RecPR
1940 1 4 0.403476 0.01 #RecPR
1941 1 4 0 0.01 #RecPR
1942 1 4 0 0.01 #RecPR
1943 1 4 0 0.01 #RecPR
1944 1 4 0 0.01 #RecPR
1945 1 4 0 0.01 #RecPR
1946 1 4 0 0.01 #RecPR
1947 1 4 1.757774 0.01 #RecPR
1948 1 4 3.651659 0.01 #RecPR
1949 1 4 2.583265 0.01 #RecPR
1950 1 4 3.384673 0.01 #RecPR
1951 1 4 2.105208 0.01 #RecPR
1952 1 4 2.28751 0.01 #RecPR
1953 1 4 1.925097 0.01 #RecPR
1954 1 4 2.263154 0.01 #RecPR
1955 1 4 1.934825 0.01 #RecPR
1956 1 4 1.7038 0.01 #RecPR
1957 1 4 0.94214 0.01 #RecPR
1958 1 4 0.960562 0.01 #RecPR
1959 1 4 0.802439 0.01 #RecPR
1960 1 4 1.056389 0.01 #RecPR
1961 1 4 1.86442 0.01 #RecPR
1962 1 4 2.32845 0.01 #RecPR
1963 1 4 3.765955 0.01 #RecPR
1964 1 4 5.160104 0.01 #RecPR
1965 1 4 5.023132 0.01 #RecPR
1966 1 4 6.436606 0.01 #RecPR
1967 1 4 7.338277 0.01 #RecPR
1968 1 4 8.463738 0.01 #RecPR
1969 1 4 10.622746 0.01 #RecPR
1970 1 4 16.320684 0.01 #RecPR
1971 1 4 19.459349 0.01 #RecPR
1972 1 4 15.799447 0.01 #RecPR
1973 1 4 25.014992 0.01 #RecPR
1974 1 4 29.181925 0.01 #RecPR
1975 1 4 31.188674 0.01 #RecPR
1976 1 4 20.439748 0.01 #RecPR
1977 1 4 35.194001 0.01 #RecPR
1978 1 4 23.819203 0.01 #RecPR
1979 1 4 49.764862 0.01 #RecPR
1980 1 4 53.268243 0.01 #RecPR
1981 1 4 41.079929 0.01 #RecPR
1982 1 4 49.042593 0.01 #RecPR
1983 1 4 12.652045 0.01 #RecPR
1984 1 4 27.060782 0.01 #RecPR
1985 1 4 28.772801 0.01 #RecPR
1986 1 4 24.072025 0.01 #RecPR
1987 1 4 23.045986 0.01 #RecPR
1988 1 4 106.56433 0.01 #RecPR
1989 1 4 56.786136 0.01 #RecPR
1990 1 4 95.630313 0.01 #RecPR
1991 1 4 107.404715 0.01 #RecPR
1992 1 4 31.906881 0.01 #RecPR
1993 1 4 23.31273 0.01 #RecPR
1994 1 4 45.618769 0.01 #RecPR
1995 1 4 28.437356 0.01 #RecPR
1996 1 4 30.455473 0.01 #RecPR
1997 1 4 24.39062 0.01 #RecPR
1998 1 4 32.124993 0.01 #RecPR
1999 1 4 50.108455 0.01 #RecPR
2000 1 4 35.858718 0.01 #RecPR
2001 1 4 56.198533 0.01 #RecPR
2002 1 4 43.385989 0.01 #RecPR
2003 1 4 31.492041 0.01 #RecPR
2004 1 4 5.293999 0.01 #RecPR
2005 1 4 21.338059 0.01 #RecPR
2006 1 4 14.441387 0.01 #RecPR
2007 1 4 14.236919 0.01 #RecPR
2008 1 4 8.377598 0.01 #RecPR
2009 1 4 14.681142 0.01 #RecPR
2010 1 4 8.070675 0.01 #RecPR
2011 1 4 6.837095 0.01 #RecPR
2012 1 4 6.21606 0.01 #RecPR
2013 1 4 8.181168 0.01 #RecPR
2014 1 4 5.876268 0.01 #RecPR
2015 1 4 4.153463 0.01 #RecPR
2016 1 4 3.856902 0.01 #RecPR
-999 1 5 0 0.01 #RecPC
1916 1 5 0 0.01 #RecPC
1917 1 5 0 0.01 #RecPC
1918 1 5 0 0.01 #RecPC
1919 1 5 0 0.01 #RecPC
1920 1 5 0 0.01 #RecPC
1921 1 5 0 0.01 #RecPC
1922 1 5 0 0.01 #RecPC
1923 1 5 0 0.01 #RecPC
1924 1 5 0 0.01 #RecPC
1925 1 5 0 0.01 #RecPC
1926 1 5 0 0.01 #RecPC
1927 1 5 0 0.01 #RecPC
1928 1 5 0 0.01 #RecPC
1929 1 5 0.54071 0.01 #RecPC
1930 1 5 1.081421 0.01 #RecPC
1931 1 5 1.622131 0.01 #RecPC
1932 1 5 2.162841 0.01 #RecPC
1933 1 5 2.703551 0.01 #RecPC
1934 1 5 3.244262 0.01 #RecPC
1935 1 5 3.784972 0.01 #RecPC
1936 1 5 4.325682 0.01 #RecPC
1937 1 5 3.009688 0.01 #RecPC
1938 1 5 5.057904 0.01 #RecPC
1939 1 5 3.899754 0.01 #RecPC
1940 1 5 3.614757 0.01 #RecPC
1941 1 5 0 0.01 #RecPC
1942 1 5 0 0.01 #RecPC
1943 1 5 0 0.01 #RecPC
1944 1 5 0 0.01 #RecPC
1945 1 5 0 0.01 #RecPC
1946 1 5 0 0.01 #RecPC
1947 1 5 15.730551 0.01 #RecPC
1948 1 5 32.67312 0.01 #RecPC
1949 1 5 23.117283 0.01 #RecPC
1950 1 5 30.293556 0.01 #RecPC
1951 1 5 18.844842 0.01 #RecPC
1952 1 5 20.479657 0.01 #RecPC
1953 1 5 17.236961 0.01 #RecPC
1954 1 5 20.266066 0.01 #RecPC
1955 1 5 17.327784 0.01 #RecPC
1956 1 5 15.260777 0.01 #RecPC
1957 1 5 8.439653 0.01 #RecPC
1958 1 5 8.604387 0.01 #RecPC
1959 1 5 7.188801 0.01 #RecPC
1960 1 5 9.465014 0.01 #RecPC
1961 1 5 16.706429 0.01 #RecPC
1962 1 5 20.866751 0.01 #RecPC
1963 1 5 33.752975 0.01 #RecPC
1964 1 5 46.253358 0.01 #RecPC
1965 1 5 45.028186 0.01 #RecPC
1966 1 5 43.735367 0.01 #RecPC
1967 1 5 39.636429 0.01 #RecPC
1968 1 5 37.496137 0.01 #RecPC
1969 1 5 39.467937 0.01 #RecPC
1970 1 5 51.68896 0.01 #RecPC
1971 1 5 53.186601 0.01 #RecPC
1972 1 5 37.622663 0.01 #RecPC
1973 1 5 52.280249 0.01 #RecPC
1974 1 5 53.8399 0.01 #RecPC
1975 1 5 51.00998 0.01 #RecPC
1976 1 5 29.745486 0.01 #RecPC
1977 1 5 45.686496 0.01 #RecPC
1978 1 5 27.62837 0.01 #RecPC
1979 1 5 40.229597 0.01 #RecPC
1980 1 5 52.353649 0.01 #RecPC
1981 1 5 44.421921 0.01 #RecPC
1982 1 5 40.918826 0.01 #RecPC
1983 1 5 35.558528 0.01 #RecPC
1984 1 5 31.248976 0.01 #RecPC
1985 1 5 39.926369 0.01 #RecPC
1986 1 5 42.530317 0.01 #RecPC
1987 1 5 31.780508 0.01 #RecPC
1988 1 5 76.880268 0.01 #RecPC
1989 1 5 79.319399 0.01 #RecPC
1990 1 5 92.268027 0.01 #RecPC
1991 1 5 103.628451 0.01 #RecPC
1992 1 5 44.096388 0.01 #RecPC
1993 1 5 43.49427 0.01 #RecPC
1994 1 5 54.402525 0.01 #RecPC
1995 1 5 57.032399 0.01 #RecPC
1996 1 5 67.480891 0.01 #RecPC
1997 1 5 77.233001 0.01 #RecPC
1998 1 5 75.910954 0.01 #RecPC
1999 1 5 132.497565 0.01 #RecPC
2000 1 5 109.63634 0.01 #RecPC
2001 1 5 114.900411 0.01 #RecPC
2002 1 5 61.567499 0.01 #RecPC
2003 1 5 58.464378 0.01 #RecPC
2004 1 5 42.417251 0.01 #RecPC
2005 1 5 57.148695 0.01 #RecPC
2006 1 5 129.579888 0.01 #RecPC
2007 1 5 118.866819 0.01 #RecPC
2008 1 5 89.654396 0.01 #RecPC
2009 1 5 93.162891 0.01 #RecPC
2010 1 5 92.547883 0.01 #RecPC
2011 1 5 91.17554 0.01 #RecPC
2012 1 5 107.627062 0.01 #RecPC
2013 1 5 101.314314 0.01 #RecPC
2014 1 5 113.828023 0.01 #RecPC
2015 1 5 73.777225 0.01 #RecPC
2016 1 5 64.558034 0.01 #RecPC
-999 1 6 0 0.01 #RecDD
1916 1 6 0 0.01 #RecDD
1917 1 6 0 0.01 #RecDD
1918 1 6 0 0.01 #RecDD
1919 1 6 0 0.01 #RecDD
1920 1 6 0 0.01 #RecDD
1921 1 6 0 0.01 #RecDD
1922 1 6 0 0.01 #RecDD
1923 1 6 0 0.01 #RecDD
1924 1 6 0 0.01 #RecDD
1925 1 6 0 0.01 #RecDD
1926 1 6 0 0.01 #RecDD
1927 1 6 0 0.01 #RecDD
1928 1 6 0 0.01 #RecDD
1929 1 6 0.004 0.01 #RecDD
1930 1 6 0.007 0.01 #RecDD
1931 1 6 0.011 0.01 #RecDD
1932 1 6 0.015 0.01 #RecDD
1933 1 6 0.019 0.01 #RecDD
1934 1 6 0.022 0.01 #RecDD
1935 1 6 0.026 0.01 #RecDD
1936 1 6 0.03 0.01 #RecDD
1937 1 6 0.021 0.01 #RecDD
1938 1 6 0.035 0.01 #RecDD
1939 1 6 0.027 0.01 #RecDD
1940 1 6 0.025 0.01 #RecDD
1941 1 6 0 0.01 #RecDD
1942 1 6 0 0.01 #RecDD
1943 1 6 0 0.01 #RecDD
1944 1 6 0 0.01 #RecDD
1945 1 6 0 0.01 #RecDD
1946 1 6 0 0.01 #RecDD
1947 1 6 0.109 0.01 #RecDD
1948 1 6 0.226 0.01 #RecDD
1949 1 6 0.16 0.01 #RecDD
1950 1 6 0.21 0.01 #RecDD
1951 1 6 0.13 0.01 #RecDD
1952 1 6 0.142 0.01 #RecDD
1953 1 6 0.119 0.01 #RecDD
1954 1 6 0.14 0.01 #RecDD
1955 1 6 0.12 0.01 #RecDD
1956 1 6 0.106 0.01 #RecDD
1957 1 6 0.058 0.01 #RecDD
1958 1 6 0.06 0.01 #RecDD
1959 1 6 0.05 0.01 #RecDD
1960 1 6 0.066 0.01 #RecDD
1961 1 6 0.116 0.01 #RecDD
1962 1 6 0.144 0.01 #RecDD
1963 1 6 0.234 0.01 #RecDD
1964 1 6 0.32 0.01 #RecDD
1965 1 6 0.312 0.01 #RecDD
1966 1 6 0.313 0.01 #RecDD
1967 1 6 0.294 0.01 #RecDD
1968 1 6 0.288 0.01 #RecDD
1969 1 6 0.315 0.01 #RecDD
1970 1 6 0.428 0.01 #RecDD
1971 1 6 0.458 0.01 #RecDD
1972 1 6 0.337 0.01 #RecDD
1973 1 6 0.488 0.01 #RecDD
1974 1 6 0.525 0.01 #RecDD
1975 1 6 0.52 0.01 #RecDD
1976 1 6 0.318 0.01 #RecDD
1977 1 6 0.513 0.01 #RecDD
1978 1 6 0.327 0.01 #RecDD
1979 1 6 0.576 0.01 #RecDD
1980 1 6 3.724 0.01 #RecDD
1981 1 6 2.855 0.01 #RecDD
1982 1 6 2.813 0.01 #RecDD
1983 1 6 0.927 0.01 #RecDD
1984 1 6 0.956 0.01 #RecDD
1985 1 6 1.711 0.01 #RecDD
1986 1 6 3.188 0.01 #RecDD
1987 1 6 3.025 0.01 #RecDD
1988 1 6 5.892 0.01 #RecDD
1989 1 6 7.899 0.01 #RecDD
1990 1 6 1.161 0.01 #RecDD
1991 1 6 1.304 0.01 #RecDD
1992 1 6 3.595 0.01 #RecDD
1993 1 6 2.259 0.01 #RecDD
1994 1 6 6.424 0.01 #RecDD
1995 1 6 6.208 0.01 #RecDD
1996 1 6 3.998 0.01 #RecDD
1997 1 6 2.621 0.01 #RecDD
1998 1 6 2.076 0.01 #RecDD
1999 1 6 2.828 0.01 #RecDD
2000 1 6 4.972 0.01 #RecDD
2001 1 6 8.329 0.01 #RecDD
2002 1 6 9.196 0.01 #RecDD
2003 1 6 9.559 0.01 #RecDD
2004 1 6 4.525 0.01 #RecDD
2005 1 6 5.041 0.01 #RecDD
2006 1 6 3.311 0.01 #RecDD
2007 1 6 2.89 0.01 #RecDD
2008 1 6 2.248 0.01 #RecDD
2009 1 6 2.09 0.01 #RecDD
2010 1 6 2.029 0.01 #RecDD
2011 1 6 2.663 0.01 #RecDD
2012 1 6 2.338 0.01 #RecDD
2013 1 6 2.943 0.01 #RecDD
2014 1 6 2.927 0.01 #RecDD
2015 1 6 3.587 0.01 #RecDD
2016 1 6 3.294 0.01 #RecDD
-999 1 8 0 0.01 #NWFSC
2003 1 8 0.028 0.01 #NWFSC
2004 1 8 0.073 0.01 #NWFSC
2005 1 8 0.059 0.01 #NWFSC
2006 1 8 0.015 0.01 #NWFSC
2007 1 8 0.081 0.01 #NWFSC
2008 1 8 0.016 0.01 #NWFSC
2009 1 8 0.218 0.01 #NWFSC
2010 1 8 0.02 0.01 #NWFSC
2011 1 8 0.064 0.01 #NWFSC
2012 1 8 0.102 0.01 #NWFSC
2013 1 8 0.183 0.01 #NWFSC
2014 1 8 0.023 0.01 #NWFSC
2015 1 8 0.052 0.01 #NWFSC
2016 1 8 0.025 0.01 #NWFSC
-9999 0 0 0  0  #EndOfCatch

#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 0 0 0 # ComHL
2 0 0 0 # ComNet
3 0 0 0 # ComTrawl
4 0 0 0 # RecPR
5 0 0 0 # RecPC
6 0 0 0 # RecDD
7 0 0 0 # Sanitation
8 1 0 0 # NWFSCTrawl
9 0 0 0 # GillnetSurvey
10 0 0 0 # Impingement
11 1 0 0 # SCBSurvey
12 0 0 0 # RecPCOBR

# Copied from Google sheet "Indices for SS"

# Dockside PR retained (retained length comps from RecFIN & CDFW, number of
#  kept fish)                                           
# Year Month Fleet Index se Comment                                      
2006 7 4 1.115362 0.053261 #RecPR                                      
2007 7 4 0.935251 0.049972 #RecPR                                      
2008 7 4 0.805229 0.048116 #RecPR                                      
2009 7 4 0.76446  0.051584 #RecPR                                      
2010 7 4 0.671627 0.065707 #RecPR                                      
2011 7 4 0.766032 0.073426 #RecPR                                      
2012 7 4 0.665097 0.080673 #RecPR                                      
2013 7 4 0.614316 0.070782 #RecPR                                      
2014 7 4 0.607615 0.082567 #RecPR                                      
2015 7 4 0.646518 0.090149 #RecPR                                      
2016 7 4 0.652972 0.127488 #RecPR                                      

# CPFV logbook (retained length comps from RecFIN, number of KEPT fish only
# )                                           
# Year Month Fleet Index  se Comment                                      
1980 7 5 0.015902 0.057937 #RecPC                                      
1981 7 5 0.012792 0.058042 #RecPC                                      
1982 7 5 0.014343 0.05829  #RecPC                                      
1983 7 5 0.013368 0.060982 #RecPC                                      
1984 7 5 0.011115 0.060531 #RecPC                                      
1985 7 5 0.018767 0.058839 #RecPC                                      
1986 7 5 0.016492 0.057878 #RecPC                                      
1987 7 5 0.016807 0.059271 #RecPC                                      
1988 7 5 0.029058 0.058376 #RecPC                                      
1989 7 5 0.029558 0.058089 #RecPC                                      
1990 7 5 0.029336 0.058475 #RecPC                                      
1991 7 5 0.034753 0.057922 #RecPC                                      
1992 7 5 0.017242 0.058713 #RecPC                                      
1993 7 5 0.016555 0.059035 #RecPC                                      
1994 7 5 0.022604 0.058839 #RecPC                                      
1995 7 5 0.029121 0.058681 #RecPC                                      
1996 7 5 0.03155  0.058289 #RecPC                                      
1997 7 5 0.049826 0.059228 #RecPC                                      
1998 7 5 0.028911 0.059543 #RecPC                                      
1999 7 5 0.048217 0.058251 #RecPC                                      
2000 7 5 0.033811 0.058716 #RecPC                                      
2001 7 5 0.034514 0.058575 #RecPC                                      
2002 7 5 0.02027  0.058818 #RecPC                                      
2003 7 5 0.01932  0.059307 #RecPC                                      
2004 7 5 0.016812 0.059483 #RecPC                                      
2005 7 5 0.014556 0.059196 #RecPC                                      
2006 7 5 0.045656 0.059229 #RecPC                                      
2007 7 5 0.048851 0.058912 #RecPC                                      
2008 7 5 0.035549 0.059331 #RecPC                                      
2009 7 5 0.039946 0.059466 #RecPC                                      
2010 7 5 0.039952 0.059703 #RecPC                                      
2011 7 5 0.03036  0.059323 #RecPC                                      
2012 7 5 0.029607 0.059144 #RecPC                                      
2013 7 5 0.032985 0.059174 #RecPC                                      
2014 7 5 0.031137 0.060202 #RecPC                                      
2015 7 5 0.025198 0.062178 #RecPC                                      
2016 7 5 0.025283 0.061467 #RecPC                                      

# RecPC Onboard discard (have discard length comps from onboard, index in n
# umbers)                                           
# Year Month Fleet Index se Comment                                      
2001 7 6 0.037299 0.223349 #RecDD                                      
2002 7 6 0.083568 0.127395 #RecDD                                      
2003 7 6 0.067031 0.117146 #RecDD                                      
2004 7 6 0.073584 0.100788 #RecDD                                      
2005 7 6 0.084193 0.093621 #RecDD                                      
2006 7 6 0.076607 0.092853 #RecDD                                      
2007 7 6 0.069059 0.092562 #RecDD                                      
2008 7 6 0.061095 0.086481 #RecDD                                      
2009 7 6 0.059618 0.082866 #RecDD                                      
2010 7 6 0.064047 0.080156 #RecDD                                      
2011 7 6 0.050583 0.088888 #RecDD                                      
2012 7 6 0.040019 0.102269 #RecDD                                      
2013 7 6 0.039229 0.09326  #RecDD                                      
2014 7 6 0.038658 0.104892 #RecDD                                      
2015 7 6 0.034921 0.113134 #RecDD                                      
2016 7 6 0.053503 0.098925 #RecDD                                      

# Sanitation (length comps converted from SL to TL, number of fish)        
#                                    
# Year Month Fleet Index se Comment                                      
1970 7 7 0.054782 0.597502 #Sanitation                                     
#  
1971 7 7 0.070322 0.455403 #Sanitation                                     
#  
1972 7 7 0.12611  0.370908 #Sanitation                                     
#  
1973 7 7 0.104654 0.334379 #Sanitation                                     
#  
1974 7 7 0.084072 0.297302 #Sanitation                                     
#  
1975 7 7 0.071948 0.357124 #Sanitation                                     
#  
1976 7 7 0.073713 0.27805  #Sanitation                                     
#  
1977 7 7 0.14085  0.203502 #Sanitation                                     
#  
1978 7 7 0.14264  0.213457 #Sanitation                                     
#  
1979 7 7 0.361674 0.159751 #Sanitation                                     
#  
1980 7 7 0.408503 0.164483 #Sanitation                                     
#  
1981 7 7 0.436047 0.154301 #Sanitation                                     
#  
1982 7 7 0.38406  0.205613 #Sanitation                                     
#  
1983 7 7 0.134323 0.211038 #Sanitation                                     
#  
1984 7 7 0.062749 0.281722 #Sanitation                                     
#  
1985 7 7 0.108711 0.174459 #Sanitation                                     
#  
1986 7 7 0.162392 0.217236 #Sanitation                                     
#  
1987 7 7 0.237652 0.164357 #Sanitation                                     
#  
1988 7 7 0.23822  0.147078 #Sanitation                                     
#  
1989 7 7 0.160547 0.15133  #Sanitation                                     
#  
1990 7 7 0.169121 0.155128 #Sanitation                                     
#  
1991 7 7 0.10373  0.180072 #Sanitation                                     
#  
1992 7 7 0.112551 0.159531 #Sanitation                                     
#  
1993 7 7 0.114686 0.105451 #Sanitation                                     
#  
1994 7 7 0.112006 0.12674  #Sanitation                                     
#  
1995 7 7 0.196973 0.108317 #Sanitation                                     
#  
1996 7 7 0.227608 0.100573 #Sanitation                                     
#  
1997 7 7 0.240679 0.103594 #Sanitation                                     
#  
1998 7 7 0.17952  0.114813 #Sanitation                                     
#  
1999 7 7 0.23434  0.100115 #Sanitation                                     
#  
2000 7 7 0.128106 0.143877 #Sanitation                                     
#  
2001 7 7 0.243333 0.094722 #Sanitation                                     
#  
2002 7 7 0.132923 0.141123 #Sanitation                                     
#  
2003 7 7 0.163153 0.16877  #Sanitation                                     
#  
2004 7 7 0.187314 0.131959 #Sanitation                                     
#  
2005 7 7 0.243478 0.167289 #Sanitation                                     
#  
2006 7 7 0.24975  0.1368  #Sanitation                                      
2007 7 7 0.134708 0.161528 #Sanitation                                     
#  
2008 7 7 0.11255  0.164329 #Sanitation                                     
#  
2009 7 7 0.124627 0.171723 #Sanitation                                     
#  
2010 7 7 0.079123 0.177237 #Sanitation                                     
#  
2011 7 7 0.108084 0.185132 #Sanitation                                     
#  
2012 7 7 0.046184 0.275983 #Sanitation                                     
#  
2013 7 7 0.018961 0.410489 #Sanitation                                     
#  
2014 7 7 0.067399 0.291722 #Sanitation                                     
#  
2015 7 7 0.128961 0.264097 #Sanitation                                     
#  
2016 7 7 0.116716 0.265989 #Sanitation                                     
#  

# copied from SCOR2017\NWFSCTrawlSurvey\VAST\NOVesselYear_nx_150\VAST_outpu
# t\Table_for_SS3.xlsx 6/9/2017                                           
#Year Month Fleet Estimate_metric_tons SD_log 
2003 7 8 615.6376413 0.570788515 #NWFSCTrawl
2004 7 8 1000.121805 0.450266837 #NWFSCTrawl
2005 7 8 936.223277 0.59433744 #NWFSCTrawl
2006 7 8 245.558053 0.50916696 #NWFSCTrawl
2007 7 8 1001.127719 0.50992436 #NWFSCTrawl
2008 7 8 195.6019928 0.448417622 #NWFSCTrawl
2009 7 8 1940.340988 0.513689236 #NWFSCTrawl
2010 7 8 277.3925736 0.533842912 #NWFSCTrawl
2011 7 8 710.0609731 0.374421757 #NWFSCTrawl
2012 7 8 561.1849159 0.536145373 #NWFSCTrawl
2013 7 8 3243.288675 0.572808627 #NWFSCTrawl
2014 7 8 370.3896108 0.699961306 #NWFSCTrawl
2015 7 8 409.8475855 0.404543842 #NWFSCTrawl
2016 7 8 366.7448701 0.480907641 #NWFSCTrawl


# Somehow this index causes some data reading problem, dont know why check 
# it later
# CSUN/VRG gillnet (Length comps converted from SL to TL, index in number o
# f fish)                                           
# Year Month Fleet Index se Comment                                      
1995 7 9 0.053666 0.227541 #GillnetSurvey                                  
#     
1996 7 9 0.040122 0.251146 #GillnetSurvey                                  
#     
1997 7 9 0.047771 0.207266 #GillnetSurvey                                  
#     
1998 7 9 0.027459 0.202261 #GillnetSurvey                                  
#     
1999 7 9 0.035986 0.218707 #GillnetSurvey                                  
#     
2000 7 9 0.029858 0.24053  #GillnetSurvey                                  
#     
2001 7 9 0.033126 0.230376 #GillnetSurvey                                  
#     
2002 7 9 0.034809 0.18358  #GillnetSurvey                                  
#     
2003 7 9 0.030426 0.233107 #GillnetSurvey                                  
#     
2004 7 9 0.054143 0.254863 #GillnetSurvey                                  
#     
2005 7 9 0.032426 0.294576 #GillnetSurvey                                  
#     
2006 7 9 0.057212 0.263808 #GillnetSurvey                                  
#     
2007 7 9 0.05081  0.239145 #GillnetSurvey                                  
#     
2008 7 9 0.061849 0.250158 #GillnetSurvey                                  
#     

#Southern California Bight survey (length comps converted from SL to TL, in
# dex in biomass)                                           
#Year Month Fleet Index se Comment                                      
1994 7 11 0.047488 0.304158 #SCBSurvey                                     
#  
1998 7 11 0.022329 0.249917 #SCBSurvey                                     
#  
2003 7 11 0.051404 0.235561 #SCBSurvey                                     
#  
2008 7 11 0.015594 0.318656 #SCBSurvey                                     
#  
2013 7 11 0.021383 0.302138 #SCBSurvey                                     
#  

#RecPC Onboard kept only (using as a survey index, index in numbers, no len
# gth comps, mirror selex of RecPC fleet 5)                                
#            
#Year Month Fleet Index se Comment                                      
2001 7 12 0.113431 0.161135 #RecPC                                      
2002 7 12 0.075914 0.156587 #RecPC                                      
2003 7 12 0.037393 0.15996  #RecPC                                      
2004 7 12 0.087975 0.141029 #RecPC                                      
2005 7 12 0.061517 0.144436 #RecPC                                      
2006 7 12 0.0898  0.102526 #RecPC                                      
2007 7 12 0.136035 0.07603  #RecPC                                      
2008 7 12 0.104843 0.072241 #RecPC                                      
2009 7 12 0.102695 0.072319 #RecPC                                      
2010 7 12 0.112145 0.070085 #RecPC                                      
2011 7 12 0.090505 0.077456 #RecPC                                      
2012 7 12 0.080737 0.073573 #RecPC                                      
2013 7 12 0.06539  0.076255 #RecPC                                      
2014 7 12 0.0663  0.089534 #RecPC                                      
2015 7 12 0.040313 0.10883  #RecPC                                      
2016 7 12 0.072003 0.102585 #RecPC                                      

-9999 1 1 1 1 # terminator for survey observations

#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with C
# V; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note, only have units and errtype for fleets with discard 
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  use positive partition value for mean body wt, negative partition 
# for mean body length 
#_yr month fleet part obs stderr
#  -9999 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using si
# ze data and using empirical wtatage
1 # length bin method: 1=use databins; 2=generate from binwidth,min,max bel
# ow; 3=read vector
# no additional input for option 1
# read binwidth, minsize, lastbin size for option 2
# read N poplen bins, then vector of bin lower boundaries, for option 3
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separatel
# y are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultan
# eous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_mintailcomp_addtocomp_combM+F_CompressBins_CompError_ParmSelect
-1 1e-007 8 5 0 0 0.001 #_fleet:1_ComHL
-1 1e-007 8 5 0 0 0.001 #_fleet:2_ComNet
-1 1e-007 8 5 0 0 0.001 #_fleet:3_ComTrawl
-1 1e-007 8 5 0 0 0.001 #_fleet:4_RecPR
-1 1e-007 8 5 0 0 0.001 #_fleet:5_RecPC
-1 1e-007 8 5 0 0 0.001 #_fleet:6_RecDD
-1 1e-007 8 5 0 0 0.001 #_fleet:7_Sanitation
-1 1e-007 8 5 0 0 0.001 #_fleet:8_NWFSCTrawl
-1 1e-007 8 5 0 0 0.001 #_fleet:9_GillnetSurvey
-1 1e-007 8 5 0 0 0.001 #_fleet:10_Impingement
-1 1e-007 8 5 0 0 0.001 #_fleet:11_SCBSurvey
-1 1e-007 8 5 0 0 0.001 #_fleet:12_RecPCOBR
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as
#  joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
45 #_N_LengthBins; then enter lower edge of each length bin
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
#_yr month fleet sex part Nsamp datavector(female-male)

## selection criteria: nTrip>=2 AND nFish >20
## All samples not selected commented out (not shown in outputs)
#Year Season Fleet Gender Part Nsample F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F
# 12 F13 F14 F15 F16 F17 F18 F19 F20 F21 F22 F23 F24 F25 F26 F27 F28 F29 F3
# 0 F31 F32 F33 F34 F35 F36 F37 F38 F39 F40 F41 F42 F43 F44 F45 M1 M2 M3 M4
#  M5 M6 M7 M8 M9 M10 M11 M12 M13 M14 M15 M16 M17 M18 M19 M20 M21 M22 M23 M
# 24 M25 M26 M27 M28 M29 M30 M31 M32 M33 M34 M35 M36 M37 M38 M39 M40 M41 M4
# 2 M43 M44 M45

# Commercial Hook and Line ComHL, CDFW market category study and CALCOM
-1996 7 1 0 2 4.45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.04 0.16 0.08 0.12 0.
32 0.08 0.16 0.04 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0.04 0.16 0.08 0.12 0.32 0.08 0.16 0.04 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0
1997 7 1 0 2 21.87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008696 0.026087 0.
034783 0.06087 0.078261 0.069565 0.069565 0.121739 0.13913 0.121739 0.10434
8 0.086957 0.017391 0.043478 0.008696 0 0.008696 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008696 0.026087 0.034783 0.06087 0.078261 0
.069565 0.069565 0.121739 0.13913 0.121739 0.104348 0.086957 0.017391 0.043
478 0.008696 0 0.008696 0 0 0 0 0 0 0 0 0 0
1998 7 1 0 2 43.186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.015228 0.035533 0
.071066 0.126904 0.121827 0.101523 0.091371 0.106599 0.06599 0.035533 0.040
609 0.081218 0.055838 0.015228 0.035533 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0.015228 0.035533 0.071066 0.126904 0.121827 0.101
523 0.091371 0.106599 0.06599 0.035533 0.040609 0.081218 0.055838 0.015228 
0.035533 0 0 0 0 0 0 0 0 0 0 0 0
1999 7 1 0 2 45.912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004464 0.02
6786 0.040179 0.116071 0.125 0.183036 0.133929 0.102679 0.09375 0.040179 0.
044643 0.049107 0.013393 0.022321 0.004464 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004464 0.026786 0.040179 0.116071 0.125 0.183
036 0.133929 0.102679 0.09375 0.040179 0.044643 0.049107 0.013393 0.022321 
0.004464 0 0 0 0 0 0 0 0 0
2000 7 1 0 2 5.312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.041667 0
.166667 0.25 0.208333 0.083333 0.083333 0.041667 0.041667 0.041667 0 0 0.04
1667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.04
1667 0.166667 0.25 0.208333 0.083333 0.083333 0.041667 0.041667 0.041667 0 
0 0.041667 0 0 0 0 0 0 0 0 0 0
2001 7 1 0 2 29.182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007194 0.
007194 0.064748 0.115108 0.165468 0.064748 0.107914 0.079137 0.122302 0.064
748 0.079137 0.028777 0.021583 0.057554 0.014388 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007194 0.007194 0.064748 0.115108 0.165
468 0.064748 0.107914 0.079137 0.122302 0.064748 0.079137 0.028777 0.021583
 0.057554 0.014388 0 0 0 0 0 0 0 0
2002 7 1 0 2 16.798 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.014085 0 0.
014085 0.084507 0.239437 0.239437 0.042254 0.098592 0.056338 0.070423 0.042
254 0.042254 0.028169 0.028169 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0.014085 0 0.014085 0.084507 0.239437 0.239437 0.042254 0
.098592 0.056338 0.070423 0.042254 0.042254 0.028169 0.028169 0 0 0 0 0 0 0
 0 0 0
-2003 7 1 0 2 1.828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0.5 0 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0.5 0 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0
-2013 7 1 0 2 7.06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0532 0
.3222 0.291139 0.125949 0.061392 0.061392 0.037342 0.043038 0.00443 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0532 0.3
222 0.291139 0.125949 0.061392 0.061392 0.037342 0.043038 0.00443 0 0 0 0 0
 0 0 0 0 0 0 0
-2014 7 1 0 2 7.06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0436 0
.3407 0.158693 0.140801 0.088292 0.14858 0.043563 0.008946 0.017892 0 0.008
946 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0
436 0.3407 0.158693 0.140801 0.088292 0.14858 0.043563 0.008946 0.017892 0 
0.008946 0 0 0 0 0 0 0 0 0 0
-2015 7 1 0 2 7.06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008292 0
.0184 0.1929 0.193287 0.210859 0.113919 0.068904 0.088055 0.024284 0.014808
 0 0.017966 0.048371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0.008292 0.0184 0.1929 0.193287 0.210859 0.113919 0.068904 0.0880
55 0.024284 0.014808 0 0.017966 0.048371 0 0 0 0 0 0 0 0 0
                                                                           
                    
#Commercial gillnet ComNet (CDFW market category study)                    
#                                                                          
#   
1996 1 2 0 2 9.106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.027027 0.108108 
0.081081 0.135135 0.054054 0 0.081081 0.081081 0.027027 0.108108 0.027027 0
.081081 0 0.054054 0.027027 0.027027 0 0 0.054054 0.027027 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.027027 0.108108 0.081081 0.135135 0.054
054 0 0.081081 0.081081 0.027027 0.108108 0.027027 0.081081 0 0.054054 0.02
7027 0.027027 0 0 0.054054 0.027027 0 0 0 0 0 0
1997 1 2 0 2 96.78 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006452 0.016129 0.0419
35 0.064516 0.080645 0.090323 0.083871 0.051613 0.051613 0.048387 0.041935 
0.035484 0.025806 0.045161 0.035484 0.074194 0.054839 0.032258 0.045161 0.0
32258 0.019355 0.012903 0.006452 0.003226 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0.006452 0.016129 0.041935 0.064516 0.080645 0.090323 0.083871 0.0
51613 0.051613 0.048387 0.041935 0.035484 0.025806 0.045161 0.035484 0.0741
94 0.054839 0.032258 0.045161 0.032258 0.019355 0.012903 0.006452 0.003226 
0 0 0 0 0
-1998 1 2 0 2 5.794 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15384
6 0 0.076923 0 0.076923 0.307692 0 0 0 0.153846 0.076923 0 0.076923 0 0.076
923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.153846 0 
0.076923 0 0.076923 0.307692 0 0 0 0.153846 0.076923 0 0.076923 0 0.076923 
0 0 0 0 0 0
1999 1 2 0 2 13.898 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
.047619 0.047619 0.095238 0.190476 0.047619 0.238095 0.095238 0.095238 0.09
5238 0.047619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0.047619 0.047619 0.095238 0.190476 0.047619 0.238095 0.095238 0.0
95238 0.095238 0.047619 0 0 0 0 0 0 0 0
-2000 1 2 0 2 7.07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.066667 0 0
.133333 0.266667 0.066667 0 0 0.066667 0.066667 0.066667 0.066667 0 0 0.066
667 0.066667 0 0.066667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0.066667 0 0.133333 0.266667 0.066667 0 0 0.066667 0.066667 0.066667 0
.066667 0 0 0.066667 0.066667 0 0.066667 0 0 0 0 0 0
2001 1 2 0 2 55.842 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.033493 
0.090909 0.172249 0.143541 0.100478 0.052632 0.047847 0.066986 0.047847 0.0
38278 0.038278 0.043062 0.014354 0.019139 0.023923 0.028708 0 0.014354 0.00
9569 0.009569 0 0.004785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.03
3493 0.090909 0.172249 0.143541 0.100478 0.052632 0.047847 0.066986 0.04784
7 0.038278 0.038278 0.043062 0.014354 0.019139 0.023923 0.028708 0 0.014354
 0.009569 0.009569 0 0.004785
2002 1 2 0 2 27.142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.01694
9 0.016949 0.016949 0.067797 0.033898 0.067797 0.118644 0.118644 0.118644 0
.050847 0.118644 0.067797 0.067797 0.067797 0.033898 0.016949 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.016949 0.016949 0.016949 0.0
67797 0.033898 0.067797 0.118644 0.118644 0.118644 0.050847 0.118644 0.0677
97 0.067797 0.067797 0.033898 0.016949 0 0 0 0 0
2003 1 2 0 2 19.038 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019608 
0 0.019608 0 0.019608 0.058824 0.019608 0.039216 0.058824 0.137255 0.058824
 0.078431 0.117647 0.196078 0.058824 0.039216 0.039216 0.019608 0 0.019608 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019608 0 0.019608 0 0.0
19608 0.058824 0.019608 0.039216 0.058824 0.137255 0.058824 0.078431 0.1176
47 0.196078 0.058824 0.039216 0.039216 0.019608 0 0.019608 0 0
2004 1 2 0 2 10.554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.030303 0 0 0 
0 0.030303 0.030303 0.121212 0 0.060606 0 0.090909 0.121212 0.030303 0.0606
06 0.121212 0.030303 0.090909 0.090909 0.030303 0.030303 0 0.030303 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.030303 0 0 0 0 0.030303 0.030303 0.1
21212 0 0.060606 0 0.090909 0.121212 0.030303 0.060606 0.121212 0.030303 0.
090909 0.090909 0.030303 0.030303 0 0.030303 0 0
                                                                           
                    
#Commercial trawl ComTrawl(shrimp trawl data only - majority of trawl fleet
#  catches), CDFW market category study                                    
#                                                            
1996 7 3 0 2 18.522 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.028986 0.1014
49 0.115942 0.115942 0.086957 0.130435 0.15942 0.043478 0.057971 0.043478 0
.057971 0.028986 0.028986 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0.028986 0.101449 0.115942 0.115942 0.086957 0.130435 0.1594
2 0.043478 0.057971 0.043478 0.057971 0.028986 0.028986 0 0 0 0 0 0 0 0 0 0
 0 0
1997 7 3 0 2 11.796 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.02381 0.02381 0
.142857 0.166667 0.071429 0.119048 0.095238 0.119048 0.071429 0.047619 0.02
381 0 0.02381 0.02381 0.02381 0 0 0.02381 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0.02381 0.02381 0.142857 0.166667 0.071429 0.119048 0.
095238 0.119048 0.071429 0.047619 0.02381 0 0.02381 0.02381 0.02381 0 0 0.0
2381 0 0 0 0 0 0 0 0
1998 7 3 0 2 27.318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018018 0.018018 0
.054054 0.027027 0.099099 0.072072 0.135135 0.108108 0.081081 0.117117 0.09
009 0.072072 0.018018 0.063063 0.018018 0 0.009009 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018018 0.018018 0.054054 0.027027 0.09909
9 0.072072 0.135135 0.108108 0.081081 0.117117 0.09009 0.072072 0.018018 0.
063063 0.018018 0 0.009009 0 0 0 0 0 0 0 0 0 0
1999 7 3 0 2 104.062 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005013 0.0
10025 0.030075 0.092732 0.112782 0.145363 0.150376 0.125313 0.125313 0.0776
94 0.062657 0.02005 0.017544 0.007519 0.010025 0.007519 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005013 0.010025 0.030075 0.092732 
0.112782 0.145363 0.150376 0.125313 0.125313 0.077694 0.062657 0.02005 0.01
7544 0.007519 0.010025 0.007519 0 0 0 0 0 0 0 0
2000 7 3 0 2 17.316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012195 0.
073171 0.158537 0.182927 0.182927 0.134146 0.121951 0.02439 0.036585 0.0365
85 0.012195 0.02439 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0.012195 0.073171 0.158537 0.182927 0.182927 0.134146 0.121951 0
.02439 0.036585 0.036585 0.012195 0.02439 0 0 0 0 0 0 0 0 0 0 0
2001 7 3 0 2 49.704 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004808 0 0 0.
043269 0.0625 0.158654 0.182692 0.177885 0.153846 0.096154 0.033654 0.04326
9 0.019231 0.014423 0.004808 0 0 0.004808 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0.004808 0 0 0.043269 0.0625 0.158654 0.182692 0.17788
5 0.153846 0.096154 0.033654 0.043269 0.019231 0.014423 0.004808 0 0 0.0048
08 0 0 0 0 0 0 0
2003 7 3 0 2 25.592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.03571
4 0.059524 0.166667 0.142857 0.142857 0.22619 0.107143 0.047619 0.02381 0.0
2381 0.011905 0 0 0.011905 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0.035714 0.059524 0.166667 0.142857 0.142857 0.22619 0.107143
 0.047619 0.02381 0.02381 0.011905 0 0 0.011905 0 0 0 0 0 0 0
-2004 7 3 0 2 4.036 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.04545
5 0.227273 0.227273 0.227273 0.090909 0.090909 0.045455 0.045455 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.045455 0.
227273 0.227273 0.227273 0.090909 0.090909 0.045455 0.045455 0 0 0 0 0 0 0 
0 0 0 0 0 0
2006 7 3 0 2 6.554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.030303 0
.212121 0.242424 0.181818 0.121212 0.090909 0.030303 0.030303 0.060606 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.03030
3 0.212121 0.242424 0.181818 0.121212 0.090909 0.030303 0.030303 0.060606 0
 0 0 0 0 0 0 0 0 0 0 0 0

#Recreational PR retained fish sample size is number of ID codes to 2003 an
# d trip numbers starting in 2004                                          
#                                                      
1980 7 4 0 2 68 0 0 0 0 0 0 0 0 0 0 0.007576 0 0 0 0 0.007576 0 0.007576 0.
007576 0.007576 0.007576 0.037879 0.037879 0.022727 0.015152 0.090909 0.143
939 0.136364 0.090909 0.068182 0.106061 0.05303 0.045455 0.030303 0.007576 
0.007576 0.022727 0.015152 0.007576 0.007576 0.007576 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0.007576 0 0 0 0 0.007576 0 0.007576 0.007576 0.007576 0.007576 0.03
7879 0.037879 0.022727 0.015152 0.090909 0.143939 0.136364 0.090909 0.06818
2 0.106061 0.05303 0.045455 0.030303 0.007576 0.007576 0.022727 0.015152 0.
007576 0.007576 0.007576 0 0 0 0
1981 7 4 0 2 76 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005236 0 0 0 0.015707 0.052
356 0.036649 0.031414 0.041885 0.062827 0.078534 0.109948 0.125654 0.115183
 0.109948 0.08377 0.036649 0.036649 0.010471 0.020942 0 0.005236 0.015707 0
 0 0.005236 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005236 0 0 0 0.015707 0
.052356 0.036649 0.031414 0.041885 0.062827 0.078534 0.109948 0.125654 0.11
5183 0.109948 0.08377 0.036649 0.036649 0.010471 0.020942 0 0.005236 0.0157
07 0 0 0.005236 0 0 0 0
1982 7 4 0 2 90 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005025 0.005025 0.015
075 0.01005 0.025126 0.01005 0.050251 0.070352 0.070352 0.105528 0.125628 0
.140704 0.120603 0.085427 0.050251 0.065327 0 0.01005 0.01005 0.015075 0.00
5025 0 0 0 0.005025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005025 0.0050
25 0.015075 0.01005 0.025126 0.01005 0.050251 0.070352 0.070352 0.105528 0.
125628 0.140704 0.120603 0.085427 0.050251 0.065327 0 0.01005 0.01005 0.015
075 0.005025 0 0 0 0.005025 0 0
1983 7 4 0 2 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.015873 0.0158
73 0 0.126984 0.095238 0.063492 0.111111 0.126984 0.142857 0.095238 0.03174
6 0.047619 0.031746 0.015873 0.063492 0.015873 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.015873 0.015873 0 0.126984 0.095238 0.06349
2 0.111111 0.126984 0.142857 0.095238 0.031746 0.047619 0.031746 0.015873 0
.063492 0.015873 0 0 0 0 0 0 0
1984 7 4 0 2 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012346 0.0370
37 0.024691 0.074074 0.061728 0.148148 0.08642 0.098765 0.098765 0.08642 0.
08642 0.074074 0.037037 0.049383 0.012346 0 0.012346 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012346 0.037037 0.024691 0.074074 0.061
728 0.148148 0.08642 0.098765 0.098765 0.08642 0.08642 0.074074 0.037037 0.
049383 0.012346 0 0.012346 0 0 0 0 0 0
1985 7 4 0 2 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.013158 0 0.026316 0 0.026
316 0.013158 0 0.078947 0.052632 0.013158 0.078947 0.052632 0.078947 0.0394
74 0.105263 0.118421 0.065789 0.078947 0.052632 0.065789 0.039474 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.013158 0 0.026316 0 0.026316 0.013
158 0 0.078947 0.052632 0.013158 0.078947 0.052632 0.078947 0.039474 0.1052
63 0.118421 0.065789 0.078947 0.052632 0.065789 0.039474 0 0 0 0 0 0 0 0
1986 7 4 0 2 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.029412 0 0 0 0 0.058824 0.058
824 0 0.058824 0.029412 0.088235 0 0.058824 0.058824 0.058824 0.029412 0.08
8235 0.088235 0.088235 0.029412 0.029412 0 0.088235 0.029412 0 0 0.029412 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.029412 0 0 0 0 0.058824 0.058824 0 0.0
58824 0.029412 0.088235 0 0.058824 0.058824 0.058824 0.029412 0.088235 0.08
8235 0.088235 0.029412 0.029412 0 0.088235 0.029412 0 0 0.029412 0 0 0 0
1987 7 4 0 2 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.02381 0.047619 0.02
381 0.02381 0.071429 0.095238 0.047619 0.02381 0.02381 0.071429 0.047619 0.
095238 0.166667 0.02381 0.071429 0.02381 0.047619 0.02381 0.02381 0.02381 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.02381 0.047619 0.02381 0
.02381 0.071429 0.095238 0.047619 0.02381 0.02381 0.071429 0.047619 0.09523
8 0.166667 0.02381 0.071429 0.02381 0.047619 0.02381 0.02381 0.02381 0 0 0 
0 0 0
1988 7 4 0 2 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00565 0 0.022599 0.0395
48 0.073446 0.056497 0.033898 0.107345 0.112994 0.096045 0.062147 0.096045 
0.050847 0.050847 0.022599 0.062147 0.028249 0.00565 0.039548 0 0.016949 0.
011299 0 0 0.00565 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00565 0 0.0225
99 0.039548 0.073446 0.056497 0.033898 0.107345 0.112994 0.096045 0.062147 
0.096045 0.050847 0.050847 0.022599 0.062147 0.028249 0.00565 0.039548 0 0.
016949 0.011299 0 0 0.00565 0 0 0
1989 7 4 0 2 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007353 0.014706 0.014
706 0.044118 0.066176 0.058824 0.073529 0.088235 0.125 0.139706 0.102941 0.
125 0.029412 0.051471 0.029412 0.014706 0.007353 0.007353 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007353 0.014706 0.014706 0.044118 0.
066176 0.058824 0.073529 0.088235 0.125 0.139706 0.102941 0.125 0.029412 0.
051471 0.029412 0.014706 0.007353 0.007353 0 0 0 0 0 0 0 0 0
1993 7 4 0 2 62 0 0 0 0 0 0 0 0 0 0 0.008929 0 0 0 0 0 0 0 0 0.008929 0.008
929 0 0.017857 0.053571 0.035714 0.044643 0.0625 0.053571 0.080357 0.151786
 0.098214 0.125 0.080357 0.053571 0.044643 0.026786 0.008929 0.026786 0 0.0
08929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008929 0 0 0 0 0 0 0 0 0.008929 0.008
929 0 0.017857 0.053571 0.035714 0.044643 0.0625 0.053571 0.080357 0.151786
 0.098214 0.125 0.080357 0.053571 0.044643 0.026786 0.008929 0.026786 0 0.0
08929 0 0 0 0 0
1994 7 4 0 2 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007353 0 0 0 0 0 0.007353 0.029
412 0.051471 0.036765 0.073529 0.022059 0.066176 0.036765 0.073529 0.051471
 0.102941 0.161765 0.066176 0.095588 0.029412 0.029412 0.007353 0.022059 0.
022059 0 0.007353 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007353 0 0 0 0 0 0.
007353 0.029412 0.051471 0.036765 0.073529 0.022059 0.066176 0.036765 0.073
529 0.051471 0.102941 0.161765 0.066176 0.095588 0.029412 0.029412 0.007353
 0.022059 0.022059 0 0.007353 0 0 0 0 0
1995 7 4 0 2 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019608 0.029412 0.049
02 0.019608 0.098039 0.039216 0.078431 0.078431 0.068627 0.078431 0.068627 
0.078431 0.068627 0.058824 0.058824 0.039216 0.019608 0.019608 0.009804 0.0
19608 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019608 0.029412 0
.04902 0.019608 0.098039 0.039216 0.078431 0.078431 0.068627 0.078431 0.068
627 0.078431 0.068627 0.058824 0.058824 0.039216 0.019608 0.019608 0.009804
 0.019608 0 0 0 0 0 0 0
1996 7 4 0 2 70 0 0 0 0 0 0 0 0 0 0 0 0.009901 0 0 0 0 0 0 0.019802 0.01980
2 0.019802 0.039604 0.049505 0.019802 0.069307 0.079208 0.108911 0.049505 0
.069307 0.079208 0.148515 0.049505 0.049505 0.039604 0.019802 0 0.019802 0.
029703 0 0.009901 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009901 0 0 0 0 0 0 0.01
9802 0.019802 0.019802 0.039604 0.049505 0.019802 0.069307 0.079208 0.10891
1 0.049505 0.069307 0.079208 0.148515 0.049505 0.049505 0.039604 0.019802 0
 0.019802 0.029703 0 0.009901 0 0 0 0 0
1997 7 4 0 2 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.022222 0.022222 0
.022222 0.033333 0.033333 0.111111 0.111111 0.133333 0.088889 0.133333 0.1 
0.066667 0.022222 0.011111 0.011111 0.044444 0.011111 0 0 0.022222 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.022222 0.022222 0.022222 0.0333
33 0.033333 0.111111 0.111111 0.133333 0.088889 0.133333 0.1 0.066667 0.022
222 0.011111 0.011111 0.044444 0.011111 0 0 0.022222 0 0 0 0 0
1998 7 4 0 2 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.017241 0.008621 0.008
621 0.017241 0.034483 0.068966 0.068966 0.077586 0.034483 0.094828 0.146552
 0.112069 0.086207 0.086207 0.034483 0.008621 0.034483 0.017241 0 0.025862 
0.008621 0.008621 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.017241 0.
008621 0.008621 0.017241 0.034483 0.068966 0.068966 0.077586 0.034483 0.094
828 0.146552 0.112069 0.086207 0.086207 0.034483 0.008621 0.034483 0.017241
 0 0.025862 0.008621 0.008621 0 0 0 0 0
1999 7 4 0 2 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003205 0.009615 0.0160
26 0.012821 0.016026 0.025641 0.028846 0.067308 0.054487 0.067308 0.099359 
0.13141 0.086538 0.096154 0.092949 0.051282 0.038462 0.032051 0.016026 0.02
2436 0.012821 0.00641 0.003205 0.003205 0.00641 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0.003205 0.009615 0.016026 0.012821 0.016026 0.025641 0.028846
 0.067308 0.054487 0.067308 0.099359 0.13141 0.086538 0.096154 0.092949 0.0
51282 0.038462 0.032051 0.016026 0.022436 0.012821 0.00641 0.003205 0.00320
5 0.00641 0 0 0
2000 7 4 0 2 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007042 0 0 0.007042 0 0
.014085 0.021127 0.028169 0.084507 0.042254 0.133803 0.140845 0.112676 0.13
3803 0.084507 0.049296 0.06338 0.042254 0.014085 0.014085 0.007042 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007042 0 0 0.007042 0 0.014085 0.
021127 0.028169 0.084507 0.042254 0.133803 0.140845 0.112676 0.133803 0.084
507 0.049296 0.06338 0.042254 0.014085 0.014085 0.007042 0 0 0 0 0 0 0
2001 7 4 0 2 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010417 0 0 0 0 0 0.03125 
0.03125 0.052083 0.041667 0.09375 0.052083 0.072917 0.166667 0.125 0.09375 
0.125 0.083333 0.020833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0.010417 0 0 0 0 0 0.03125 0.03125 0.052083 0.041667 0.09375 0.052083 0.07
2917 0.166667 0.125 0.09375 0.125 0.083333 0.020833 0 0 0 0 0 0 0 0 0 0
2002 7 4 0 2 94 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011236 0.0224
72 0.016854 0.022472 0.039326 0.078652 0.106742 0.123596 0.146067 0.146067 
0.11236 0.061798 0.033708 0.033708 0.022472 0.011236 0 0.011236 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011236 0.022472 0.016854 0.022
472 0.039326 0.078652 0.106742 0.123596 0.146067 0.146067 0.11236 0.061798 
0.033708 0.033708 0.022472 0.011236 0 0.011236 0 0 0 0 0
2003 7 4 0 2 82 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006757 0.006757 0.013
514 0 0.006757 0.013514 0.033784 0.054054 0.087838 0.067568 0.155405 0.1689
19 0.081081 0.114865 0.081081 0.027027 0.033784 0.027027 0.006757 0.006757 
0.006757 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006757 0.006757 
0.013514 0 0.006757 0.013514 0.033784 0.054054 0.087838 0.067568 0.155405 0
.168919 0.081081 0.114865 0.081081 0.027027 0.033784 0.027027 0.006757 0.00
6757 0.006757 0 0 0 0 0 0
2004 7 4 0 2 165 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006993 0.003497 0.00
3497 0 0.017483 0.020979 0.024476 0.066434 0.062937 0.06993 0.083916 0.0839
16 0.143357 0.129371 0.076923 0.073427 0.052448 0.027972 0.027972 0.017483 
0 0 0.003497 0 0.003497 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006993 0.
003497 0.003497 0 0.017483 0.020979 0.024476 0.066434 0.062937 0.06993 0.08
3916 0.083916 0.143357 0.129371 0.076923 0.073427 0.052448 0.027972 0.02797
2 0.017483 0 0 0.003497 0 0.003497 0 0
2005 7 4 0 2 171 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003367 0 0.003367 
0.003367 0.003367 0.03367 0.013468 0.03367 0.077441 0.104377 0.185185 0.134
68 0.124579 0.070707 0.06734 0.030303 0.050505 0.030303 0.013468 0.010101 0
.003367 0 0 0 0 0.003367 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003367 0 0
.003367 0.003367 0.003367 0.03367 0.013468 0.03367 0.077441 0.104377 0.1851
85 0.13468 0.124579 0.070707 0.06734 0.030303 0.050505 0.030303 0.013468 0.
010101 0.003367 0 0 0 0 0.003367
2006 7 4 0 2 314 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003017 0.00301
7 0.013575 0.027149 0.037707 0.060332 0.087481 0.107089 0.12368 0.131222 0.
107089 0.107089 0.066365 0.045249 0.034691 0.025641 0.012066 0.003017 0 0.0
03017 0 0.001508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003017 0.0
03017 0.013575 0.027149 0.037707 0.060332 0.087481 0.107089 0.12368 0.13122
2 0.107089 0.107089 0.066365 0.045249 0.034691 0.025641 0.012066 0.003017 0
 0.003017 0 0.001508 0 0
2007 7 4 0 2 253 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004854 0 0 0 0.012
136 0.012136 0.026699 0.053398 0.084951 0.084951 0.123786 0.116505 0.131068
 0.092233 0.075243 0.063107 0.048544 0.021845 0.019417 0.012136 0.009709 0.
002427 0 0.002427 0 0.002427 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004854
 0 0 0 0.012136 0.012136 0.026699 0.053398 0.084951 0.084951 0.123786 0.116
505 0.131068 0.092233 0.075243 0.063107 0.048544 0.021845 0.019417 0.012136
 0.009709 0.002427 0 0.002427 0 0.002427
2008 7 4 0 2 237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005618 0.002809 
0.005618 0.011236 0.02809 0.067416 0.061798 0.075843 0.08427 0.103933 0.137
64 0.095506 0.101124 0.078652 0.044944 0.042135 0.008427 0.008427 0.008427 
0.019663 0.005618 0.002809 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
005618 0.002809 0.005618 0.011236 0.02809 0.067416 0.061798 0.075843 0.0842
7 0.103933 0.13764 0.095506 0.101124 0.078652 0.044944 0.042135 0.008427 0.
008427 0.008427 0.019663 0.005618 0.002809 0 0 0
2009 7 4 0 2 280 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006369 0.014
862 0.023355 0.046709 0.044586 0.097665 0.123142 0.127389 0.121019 0.112527
 0.067941 0.063694 0.072187 0.025478 0.027601 0.014862 0.010616 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006369 0.014862 0.023355 0.0
46709 0.044586 0.097665 0.123142 0.127389 0.121019 0.112527 0.067941 0.0636
94 0.072187 0.025478 0.027601 0.014862 0.010616 0 0 0 0 0 0
2010 7 4 0 2 150 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004149 0.004149 0 0.
012448 0.004149 0.016598 0.049793 0.024896 0.074689 0.078838 0.095436 0.116
183 0.124481 0.136929 0.099585 0.06639 0.029046 0.033195 0.012448 0.012448 
0.004149 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004149 0.004149 
0 0.012448 0.004149 0.016598 0.049793 0.024896 0.074689 0.078838 0.095436 0
.116183 0.124481 0.136929 0.099585 0.06639 0.029046 0.033195 0.012448 0.012
448 0.004149 0 0 0 0 0 0
2011 7 4 0 2 131 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004098 0 0 0 0 0 0.004098 0 
0.004098 0.02459 0.012295 0.053279 0.098361 0.094262 0.081967 0.118852 0.12
2951 0.110656 0.081967 0.07377 0.020492 0.032787 0.036885 0.012295 0.008197
 0 0.004098 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004098 0 0 0 0 0 0.004098
 0 0.004098 0.02459 0.012295 0.053279 0.098361 0.094262 0.081967 0.118852 0
.122951 0.110656 0.081967 0.07377 0.020492 0.032787 0.036885 0.012295 0.008
197 0 0.004098 0 0 0 0
2012 7 4 0 2 95 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012658 0.01
8987 0.031646 0.113924 0.082278 0.139241 0.132911 0.120253 0.075949 0.07594
9 0.075949 0.044304 0.006329 0.044304 0.012658 0.006329 0.006329 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012658 0.018987 0.031646 0.
113924 0.082278 0.139241 0.132911 0.120253 0.075949 0.075949 0.075949 0.044
304 0.006329 0.044304 0.012658 0.006329 0.006329 0 0 0 0 0
2013 7 4 0 2 144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004425 0.00442
5 0.026549 0.026549 0.057522 0.048673 0.066372 0.115044 0.128319 0.119469 0
.106195 0.075221 0.09292 0.061947 0.026549 0.022124 0.00885 0.00885 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004425 0.004425 0.026549 0
.026549 0.057522 0.048673 0.066372 0.115044 0.128319 0.119469 0.106195 0.07
5221 0.09292 0.061947 0.026549 0.022124 0.00885 0.00885 0 0 0 0 0 0
2014 7 4 0 2 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006536 0 0 0 0.0130
72 0.03268 0.026144 0.091503 0.130719 0.104575 0.111111 0.078431 0.163399 0
.084967 0.045752 0.03268 0.03268 0.019608 0.019608 0 0 0.006536 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006536 0 0 0 0.013072 0.03268 0.026144
 0.091503 0.130719 0.104575 0.111111 0.078431 0.163399 0.084967 0.045752 0.
03268 0.03268 0.019608 0.019608 0 0 0.006536 0 0 0 0
2015 7 4 0 2 68 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009434 0.
018868 0.084906 0.150943 0.056604 0.113208 0.188679 0.04717 0.084906 0.0943
4 0.056604 0.028302 0.028302 0.009434 0 0 0 0.009434 0.009434 0.009434 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009434 0.018868 0.084906 0.
150943 0.056604 0.113208 0.188679 0.04717 0.084906 0.09434 0.056604 0.02830
2 0.028302 0.009434 0 0 0 0.009434 0.009434 0.009434 0
2016 7 4 0 2 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011236 0 0.011236 0
 0.011236 0 0.067416 0.067416 0.123596 0.089888 0.168539 0.089888 0.078652 
0.078652 0.078652 0.044944 0.033708 0.022472 0.011236 0 0.011236 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011236 0 0.011236 0 0.011236 0 0.06
7416 0.067416 0.123596 0.089888 0.168539 0.089888 0.078652 0.078652 0.07865
2 0.044944 0.033708 0.022472 0.011236 0 0.011236 0 0 0 0 0

#Recreational PC onboard retained catch RecPC (Collins and Crooke, Ally et 
# al and CDFW)                                                             
#                                   
# duplicated rows between 1984 and 1989, use Ally's onboard
# sample sizes are very large for some years with Stewart's numbers
1975 7 5 0 2 150 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003209 0.002139 0.005348
 0.009626 0.034225 0.050267 0.069519 0.084492 0.102674 0.105882 0.126203 0.
096257 0.096257 0.075936 0.041711 0.037433 0.014973 0.029947 0.007487 0.002
139 0.00107 0.002139 0.00107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
003209 0.002139 0.005348 0.009626 0.034225 0.050267 0.069519 0.084492 0.102
674 0.105882 0.126203 0.096257 0.096257 0.075936 0.041711 0.037433 0.014973
 0.029947 0.007487 0.002139 0.00107 0.002139 0.00107 0 0 0 0 0 0
1976 7 5 0 2 174 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002125 0.001063 0.001063 0 0
.005313 0.01169 0.021254 0.043571 0.047821 0.063762 0.086079 0.108395 0.095
643 0.095643 0.119022 0.087141 0.065887 0.056323 0.028693 0.030818 0.010627
 0.008502 0.006376 0.001063 0.001063 0 0 0 0.001063 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0.002125 0.001063 0.001063 0 0.005313 0.01169 0.021254 0.043571 0.
047821 0.063762 0.086079 0.108395 0.095643 0.095643 0.119022 0.087141 0.065
887 0.056323 0.028693 0.030818 0.010627 0.008502 0.006376 0.001063 0.001063
 0 0 0 0.001063 0 0
1977 7 5 0 2 194 0 0 0 0 0 0 0 0 0 0 0.000728 0.001457 0.003642 0.00437 0.0
05098 0.026948 0.034232 0.036417 0.046613 0.037145 0.034232 0.02622 0.02767
7 0.041515 0.06118 0.063365 0.088128 0.108521 0.088857 0.061908 0.077932 0.
050255 0.029133 0.019665 0.01311 0.00437 0.00437 0.001457 0 0.000728 0 0 0 
0 0.000728 0 0 0 0 0 0 0 0 0 0 0.000728 0.001457 0.003642 0.00437 0.005098 
0.026948 0.034232 0.036417 0.046613 0.037145 0.034232 0.02622 0.027677 0.04
1515 0.06118 0.063365 0.088128 0.108521 0.088857 0.061908 0.077932 0.050255
 0.029133 0.019665 0.01311 0.00437 0.00437 0.001457 0 0.000728 0 0 0 0 0.00
0728
1978 7 5 0 2 242 0 0 0 0 0 0 0 0 0 0 0.002892 0.005205 0.005784 0.002313 0.
004049 0.009832 0.012724 0.026027 0.041643 0.049161 0.046848 0.05668 0.0537
88 0.054945 0.054367 0.064199 0.062464 0.086755 0.079815 0.074031 0.068248 
0.042799 0.038751 0.025448 0.010411 0.008097 0.004049 0.002892 0.001735 0.0
01735 0.001735 0.000578 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002892 0.005205 0.00578
4 0.002313 0.004049 0.009832 0.012724 0.026027 0.041643 0.049161 0.046848 0
.05668 0.053788 0.054945 0.054367 0.064199 0.062464 0.086755 0.079815 0.074
031 0.068248 0.042799 0.038751 0.025448 0.010411 0.008097 0.004049 0.002892
 0.001735 0.001735 0.001735 0.000578 0 0 0


# Recreational CPFV retained RecPC (fish sample size is number of trips obs
# erving scorpionfish from Braden's algorithem from 1980-2003 and, 2004-200
# 5 is the # ID codes * .38 ( the average proportion of ID codes to trips f
# or known data), from 2006 on we have trip id                             
#                                                                   
1980 7 5 0 2 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004717 0 0 0.018868 0.009434 
0.028302 0.037736 0.037736 0.061321 0.080189 0.099057 0.075472 0.117925 0.0
80189 0.075472 0.084906 0.103774 0.042453 0.014151 0.004717 0.004717 0.0047
17 0 0.014151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004717 0 0 0.0188
68 0.009434 0.028302 0.037736 0.037736 0.061321 0.080189 0.099057 0.075472 
0.117925 0.080189 0.075472 0.084906 0.103774 0.042453 0.014151 0.004717 0.0
04717 0.004717 0 0.014151 0 0 0 0 0 0 0
1981 7 5 0 2 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010695 0 0.016043 0.0
05348 0.037433 0.074866 0.058824 0.090909 0.101604 0.128342 0.149733 0.0855
61 0.064171 0.064171 0.026738 0.026738 0.02139 0.02139 0.005348 0 0.010695 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010695 0 0.016043 0.00534
8 0.037433 0.074866 0.058824 0.090909 0.101604 0.128342 0.149733 0.085561 0
.064171 0.064171 0.026738 0.026738 0.02139 0.02139 0.005348 0 0.010695 0 0 
0 0 0 0
1982 7 5 0 2 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00361 0.00722 0.01805
1 0.054152 0.072202 0.079422 0.119134 0.097473 0.140794 0.075812 0.072202 0
.079422 0.072202 0.039711 0.036101 0.021661 0 0 0.00722 0.00361 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00361 0.00722 0.018051 0.054152 0.
072202 0.079422 0.119134 0.097473 0.140794 0.075812 0.072202 0.079422 0.072
202 0.039711 0.036101 0.021661 0 0 0.00722 0.00361 0 0 0 0 0 0 0
1983 7 5 0 2 113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003145 0.006289 0.00
9434 0.018868 0.031447 0.062893 0.078616 0.113208 0.078616 0.113208 0.11006
3 0.122642 0.084906 0.062893 0.056604 0.012579 0.015723 0.006289 0.006289 0
.003145 0 0.003145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003145 0
.006289 0.009434 0.018868 0.031447 0.062893 0.078616 0.113208 0.078616 0.11
3208 0.110063 0.122642 0.084906 0.062893 0.056604 0.012579 0.015723 0.00628
9 0.006289 0.003145 0 0.003145 0 0 0 0 0


#Recreational PC onboard retained catch RecPC (Collins and Crooke, Ally et 
# al and CDFW)                                                             
#                                   
1984 7 5 0 2 99 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002118644 0.008474576 0
.016949153 0.016949153 0.029661017 0.023305085 0.023305085 0.042372881 0.03
8135593 0.091101695 0.076271186 0.105932203 0.141949153 0.112288136 0.09322
0339 0.069915254 0.050847458 0.025423729 0.023305085 0.002118644 0.00211864
4 0.002118644 0 0 0.002118644 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002
118644 0.008474576 0.016949153 0.016949153 0.029661017 0.023305085 0.023305
085 0.042372881 0.038135593 0.091101695 0.076271186 0.105932203 0.141949153
 0.112288136 0.093220339 0.069915254 0.050847458 0.025423729 0.023305085 0.
002118644 0.002118644 0.002118644 0 0 0.002118644 0 0 0
1985 7 5 0 2 285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000918274 0.001836547 0.0045
91368 0.002754821 0.005509642 0.012855831 0.015610652 0.03030303 0.04591368
2 0.063360882 0.06795225 0.06795225 0.081726354 0.075298439 0.099173554 0.0
87235996 0.091827365 0.085399449 0.056014692 0.044077135 0.03030303 0.01836
5473 0.004591368 0.002754821 0.002754821 0 0 0 0.000918274 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0.000918274 0.001836547 0.004591368 0.002754821 0.005509642
 0.012855831 0.015610652 0.03030303 0.045913682 0.063360882 0.06795225 0.06
795225 0.081726354 0.075298439 0.099173554 0.087235996 0.091827365 0.085399
449 0.056014692 0.044077135 0.03030303 0.018365473 0.004591368 0.002754821 
0.002754821 0 0 0 0.000918274 0 0
1986 7 5 0 2 266 0 0 0 0 0 0 0 0 0 0 0 0.00104712 0 0 0 0.00104712 0.009424
084 0.015706806 0.015706806 0.02408377 0.042931937 0.031413613 0.033507853 
0.046073298 0.04921466 0.080628272 0.058638743 0.097382199 0.085863874 0.10
7853403 0.069109948 0.065968586 0.056544503 0.045026178 0.02513089 0.016753
927 0.008376963 0.005235602 0.005235602 0 0.00104712 0 0 0 0.00104712 0 0 0
 0 0 0 0 0 0 0 0 0.00104712 0 0 0 0.00104712 0.009424084 0.015706806 0.0157
06806 0.02408377 0.042931937 0.031413613 0.033507853 0.046073298 0.04921466
 0.080628272 0.058638743 0.097382199 0.085863874 0.107853403 0.069109948 0.
065968586 0.056544503 0.045026178 0.02513089 0.016753927 0.008376963 0.0052
35602 0.005235602 0 0.00104712 0 0 0 0.00104712
1987 7 5 0 2 241 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000666667 0.003333333 0.00
8 0.010666667 0.023333333 0.034666667 0.041333333 0.058666667 0.084666667 0
.097333333 0.109333333 0.112666667 0.086666667 0.086666667 0.070666667 0.05
5333333 0.038 0.024666667 0.023333333 0.014666667 0.008666667 0.003333333 0
.002 0.001333333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000666667 0.00
3333333 0.008 0.010666667 0.023333333 0.034666667 0.041333333 0.058666667 0
.084666667 0.097333333 0.109333333 0.112666667 0.086666667 0.086666667 0.07
0666667 0.055333333 0.038 0.024666667 0.023333333 0.014666667 0.008666667 0
.003333333 0.002 0.001333333 0 0 0 0 0 0
1988 7 5 0 2 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000297796 0.002680167 0.00
8636093 0.021143538 0.034842168 0.048540798 0.061048243 0.077724836 0.08755
2114 0.101250744 0.084276355 0.086360929 0.075938058 0.062239428 0.04407385
3 0.044967242 0.035735557 0.029779631 0.023228112 0.018463371 0.014294223 0
.012209649 0.007147111 0.001488982 0.000595593 0.001488982 0.00238237 0.004
169148 0.002680167 0.004764741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000297796 0.
002680167 0.008636093 0.021143538 0.034842168 0.048540798 0.061048243 0.077
724836 0.087552114 0.101250744 0.084276355 0.086360929 0.075938058 0.062239
428 0.044073853 0.044967242 0.035735557 0.029779631 0.023228112 0.018463371
 0.014294223 0.012209649 0.007147111 0.001488982 0.000595593 0.001488982 0.
1989 7 5 0 2 326 0 0 0 0 0 0 0 0 0 0.000221337 0.000442674 0.000664011 0.00
0221337 0.000442674 0.000221337 0.000221337 0.000442674 0.001106684 0.00553
3422 0.017042939 0.03187251 0.056219566 0.099822931 0.120849934 0.118415228
 0.117972554 0.119743249 0.081894644 0.060867641 0.046259407 0.036963258 0.
021027003 0.018813634 0.013944223 0.009960159 0.006640106 0.002213369 0.003
098716 0.001549358 0.001770695 0 0.000885347 0.002656042 0 0 0 0 0 0 0 0 0 
0 0 0.000221337 0.000442674 0.000664011 0.000221337 0.000442674 0.000221337
 0.000221337 0.000442674 0.001106684 0.005533422 0.017042939 0.03187251 0.0
56219566 0.099822931 0.120849934 0.118415228 0.117972554 0.119743249 0.0818
94644 0.060867641 0.046259407 0.036963258 0.021027003 0.018813634 0.0139442

# Recreational CPFV retained RecPC (fish sample size is number of trips obs
# erving scorpionfish from Braden's algorithem from 1980-2003 and, 2004-200
# 5 is the # ID codes * .38 ( the average proportion of ID codes to trips f
# or known data), from 2006 on we have trip id                             
#                                                                   
# 1984 7 5 0 2 111 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002976 0.002976 0.
# 005952 0.029762 0.026786 0.065476 0.068452 0.092262 0.125 0.113095 0.0922
# 62 0.089286 0.08631 0.071429 0.035714 0.041667 0.014881 0.017857 0.011905
#  0 0.002976 0 0 0.002976 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0029
# 76 0.002976 0.005952 0.029762 0.026786 0.065476 0.068452 0.092262 0.125 0
# .113095 0.092262 0.089286 0.08631 0.071429 0.035714 0.041667 0.014881 0.0
# 17857 0.011905 0 0.002976 0 0 0.002976 0 0 0
# 1985 7 5 0 2 115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00365 0 0 0.014599 0.00729
# 9 0.014599 0.029197 0.032847 0.047445 0.043796 0.065693 0.058394 0.080292
#  0.076642 0.076642 0.094891 0.094891 0.116788 0.051095 0.036496 0.025547 
# 0.018248 0.007299 0 0 0.00365 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003
# 65 0 0 0.014599 0.007299 0.014599 0.029197 0.032847 0.047445 0.043796 0.0
# 65693 0.058394 0.080292 0.076642 0.076642 0.094891 0.094891 0.116788 0.05
# 1095 0.036496 0.025547 0.018248 0.007299 0 0 0.00365 0 0 0 0 0
# 1986 7 5 0 2 124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003236 0.006472 0.009709
#  0.016181 0.006472 0.02589 0.038835 0.071197 0.05178 0.093851 0.087379 0.
# 119741 0.093851 0.061489 0.07767 0.064725 0.055016 0.055016 0.009709 0.01
# 2945 0.009709 0.006472 0.012945 0.003236 0.003236 0.003236 0 0 0 0 0 0 0 
# 0 0 0 0 0 0 0 0 0 0 0 0 0.003236 0.006472 0.009709 0.016181 0.006472 0.02
# 589 0.038835 0.071197 0.05178 0.093851 0.087379 0.119741 0.093851 0.06148
# 9 0.07767 0.064725 0.055016 0.055016 0.009709 0.012945 0.009709 0.006472 
# 0.012945 0.003236 0.003236 0.003236 0 0 0 0
# 1987 7 5 0 2 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.05 0.025 0.025 0.02
# 5 0.05 0.0375 0.075 0.0875 0.0375 0.0375 0.0625 0.1125 0.05 0.1125 0.05 0
# .0625 0.0375 0.0125 0.025 0.025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#  0 0 0 0 0.05 0.025 0.025 0.025 0.05 0.0375 0.075 0.0875 0.0375 0.0375 0.
# 0625 0.1125 0.05 0.1125 0.05 0.0625 0.0375 0.0125 0.025 0.025 0 0 0 0 0 0
#  0
# 1988 7 5 0 2 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002141 0.002141 0.002141 0.
# 002141 0.002141 0.004283 0.014989 0.008565 0.027837 0.034261 0.044968 0.0
# 51392 0.042827 0.055675 0.053533 0.08137 0.143469 0.192719 0.077088 0.064
# 24 0.038544 0.019272 0.017131 0.010707 0.002141 0.002141 0 0 0.002141 0 0
#  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002141 0.002141 0.002141 0.002141 0.002141
#  0.004283 0.014989 0.008565 0.027837 0.034261 0.044968 0.051392 0.042827 
# 0.055675 0.053533 0.08137 0.143469 0.192719 0.077088 0.06424 0.038544 0.0
# 19272 0.017131 0.010707 0.002141 0.002141 0 0 0.002141 0 0
# 1989 7 5 0 2 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001942 0.001942 0.005
# 825 0.025243 0.046602 0.097087 0.108738 0.133981 0.130097 0.151456 0.0834
# 95 0.060194 0.025243 0.046602 0.036893 0.017476 0.013592 0.007767 0.00194
# 2 0.001942 0 0.001942 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001
# 942 0.001942 0.005825 0.025243 0.046602 0.097087 0.108738 0.133981 0.1300
# 97 0.151456 0.083495 0.060194 0.025243 0.046602 0.036893 0.017476 0.01359
# 2 0.007767 0.001942 0.001942 0 0.001942 0 0 0 0 0 0

1993 7 5 0 2 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004292 0.004292 0 0.012876 
0.04721 0.04721 0.017167 0.038627 0.04721 0.051502 0.064378 0.051502 0.0600
86 0.094421 0.090129 0.077253 0.081545 0.038627 0.060086 0.038627 0.012876 
0.017167 0.021459 0.017167 0 0.004292 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0.004292 0.004292 0 0.012876 0.04721 0.04721 0.017167 0.038627 0.04721 0.0
51502 0.064378 0.051502 0.060086 0.094421 0.090129 0.077253 0.081545 0.0386
27 0.060086 0.038627 0.012876 0.017167 0.021459 0.017167 0 0.004292 0 0 0 0
1994 7 5 0 2 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004975 0 0.004975 0.004975 0.
029851 0.034826 0.0199 0.049751 0.044776 0.069652 0.054726 0.059701 0.09950
2 0.049751 0.059701 0.084577 0.079602 0.094527 0.044776 0.044776 0.0199 0.0
29851 0.00995 0 0.004975 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004975 0
 0.004975 0.004975 0.029851 0.034826 0.0199 0.049751 0.044776 0.069652 0.05
4726 0.059701 0.099502 0.049751 0.059701 0.084577 0.079602 0.094527 0.04477
6 0.044776 0.0199 0.029851 0.00995 0 0.004975 0 0 0 0 0 0
1995 7 5 0 2 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010204 0.005102 0.015306 0.
030612 0.010204 0.030612 0.020408 0.045918 0.056122 0.076531 0.081633 0.081
633 0.081633 0.117347 0.081633 0.05102 0.05102 0.05102 0.030612 0.035714 0.
015306 0.005102 0.005102 0 0.005102 0.005102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0.010204 0.005102 0.015306 0.030612 0.010204 0.030612 0.020408 0.04
5918 0.056122 0.076531 0.081633 0.081633 0.081633 0.117347 0.081633 0.05102
 0.05102 0.05102 0.030612 0.035714 0.015306 0.005102 0.005102 0 0.005102 0.
005102 0 0 0 0
1996 7 5 0 2 82 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011461 0.014327 0.054441 
0.067335 0.055874 0.093123 0.075931 0.060172 0.088825 0.074499 0.074499 0.0
57307 0.068768 0.047278 0.048711 0.037249 0.020057 0.027221 0.011461 0.0071
63 0.002865 0 0.001433 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011461
 0.014327 0.054441 0.067335 0.055874 0.093123 0.075931 0.060172 0.088825 0.
074499 0.074499 0.057307 0.068768 0.047278 0.048711 0.037249 0.020057 0.027
221 0.011461 0.007163 0.002865 0 0.001433 0 0 0 0 0 0
1997 7 5 0 2 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010724 0.018767 0.018767 
0.050938 0.107239 0.077748 0.077748 0.128686 0.077748 0.085791 0.091153 0.0
72386 0.053619 0.032172 0.02681 0.024129 0.021448 0.002681 0.008043 0.01072
4 0 0.002681 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010724 0.01876
7 0.018767 0.050938 0.107239 0.077748 0.077748 0.128686 0.077748 0.085791 0
.091153 0.072386 0.053619 0.032172 0.02681 0.024129 0.021448 0.002681 0.008
043 0.010724 0 0.002681 0 0 0 0 0 0 0
1998 7 5 0 2 89 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006098 0.006098 0.006
098 0.019817 0.032012 0.060976 0.085366 0.08689 0.10061 0.10061 0.102134 0.
11128 0.108232 0.064024 0.053354 0.02439 0.012195 0.009146 0.006098 0.00304
9 0 0.001524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006098 0.00609
8 0.006098 0.019817 0.032012 0.060976 0.085366 0.08689 0.10061 0.10061 0.10
2134 0.11128 0.108232 0.064024 0.053354 0.02439 0.012195 0.009146 0.006098 
0.003049 0 0.001524 0 0 0 0 0
1999 7 5 0 2 136 0 0 0 0 0 0 0 0 0 0 0 0.000486 0 0.000486 0.000486 0.00048
6 0.001945 0.006806 0.01264 0.024793 0.035975 0.061254 0.054448 0.089451 0.
076811 0.08702 0.086048 0.080214 0.085075 0.085561 0.060768 0.054448 0.0340
3 0.023335 0.017501 0.008264 0.007778 0.001945 0.001458 0.000486 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0.000486 0 0.000486 0.000486 0.000486 0.001945 0.0068
06 0.01264 0.024793 0.035975 0.061254 0.054448 0.089451 0.076811 0.08702 0.
086048 0.080214 0.085075 0.085561 0.060768 0.054448 0.03403 0.023335 0.0175
01 0.008264 0.007778 0.001945 0.001458 0.000486 0 0 0 0 0
2000 7 5 0 2 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002286 0 0 0.001143 0 0.001
143 0.001143 0.008 0.026286 0.104 0.108571 0.130286 0.149714 0.094857 0.096
 0.096 0.067429 0.036571 0.029714 0.022857 0.008 0.006857 0.003429 0.003429
 0.002286 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002286 0 0 0.001143 0 0
.001143 0.001143 0.008 0.026286 0.104 0.108571 0.130286 0.149714 0.094857 0
.096 0.096 0.067429 0.036571 0.029714 0.022857 0.008 0.006857 0.003429 0.00
3429 0.002286 0 0 0 0 0
2001 7 5 0 2 79 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002088 0.002088 0
 0.010438 0.058455 0.085595 0.118998 0.112735 0.096033 0.123173 0.096033 0.
083507 0.077244 0.043841 0.031315 0.033403 0.008351 0.010438 0.004175 0 0.0
02088 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002088 0.002088 0 0
.010438 0.058455 0.085595 0.118998 0.112735 0.096033 0.123173 0.096033 0.08
3507 0.077244 0.043841 0.031315 0.033403 0.008351 0.010438 0.004175 0 0.002
088 0 0 0 0
2002 7 5 0 2 102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001225 0 0 0 0.001225 0.0012
25 0.001225 0.002451 0.001225 0.022059 0.079657 0.104167 0.110294 0.121324 
0.134804 0.117647 0.096814 0.068627 0.039216 0.030637 0.029412 0.029412 0 0
.003676 0.003676 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001225 0 0 0 0.0
01225 0.001225 0.001225 0.002451 0.001225 0.022059 0.079657 0.104167 0.1102
94 0.121324 0.134804 0.117647 0.096814 0.068627 0.039216 0.030637 0.029412 
0.029412 0 0.003676 0.003676 0 0 0 0 0 0
2003 7 5 0 2 99 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000975 0 0 0.003899
 0.025341 0.073099 0.11306 0.14425 0.141326 0.132554 0.112086 0.081871 0.06
8226 0.040936 0.030214 0.01462 0.011696 0.003899 0.001949 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000975 0 0 0.003899 0.025341 0.073099 
0.11306 0.14425 0.141326 0.132554 0.112086 0.081871 0.068226 0.040936 0.030
214 0.01462 0.011696 0.003899 0.001949 0 0 0 0 0 0 0
2004 7 5 0 2 174 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000668 0.001336 0.
001336 0.005344 0.031396 0.087508 0.127589 0.144957 0.150969 0.134937 0.114
896 0.068136 0.050768 0.024716 0.027388 0.012024 0.00668 0.00668 0.001336 0
.001336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000668 0.001336
 0.001336 0.005344 0.031396 0.087508 0.127589 0.144957 0.150969 0.134937 0.
114896 0.068136 0.050768 0.024716 0.027388 0.012024 0.00668 0.00668 0.00133
6 0.001336 0 0 0 0 0 0
2005 7 5 0 2 163 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00067 0 0 0 0 0.00067 0.00
067 0.006028 0.022103 0.089752 0.141326 0.170797 0.158071 0.121232 0.101139
 0.069658 0.046216 0.026122 0.020094 0.012726 0.007368 0.002679 0 0.00067 0
.00134 0.00067 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00067 0 0 0 0 0.0006
7 0.00067 0.006028 0.022103 0.089752 0.141326 0.170797 0.158071 0.121232 0.
101139 0.069658 0.046216 0.026122 0.020094 0.012726 0.007368 0.002679 0 0.0
0067 0.00134 0.00067 0 0 0 0
2006 7 5 0 2 193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000982 0.000327 0.
001637 0.003274 0.020956 0.078913 0.148657 0.148003 0.141781 0.125737 0.112
312 0.071382 0.050098 0.038638 0.024231 0.01277 0.008841 0.004584 0.003929 
0.000982 0.001965 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000982 
0.000327 0.001637 0.003274 0.020956 0.078913 0.148657 0.148003 0.141781 0.1
25737 0.112312 0.071382 0.050098 0.038638 0.024231 0.01277 0.008841 0.00458
4 0.003929 0.000982 0.001965 0 0 0 0 0
2007 7 5 0 2 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000241 0.000483 
0.002172 0.01762 0.104272 0.161477 0.178615 0.149891 0.117065 0.089307 0.06
9998 0.034516 0.02993 0.016655 0.013275 0.007483 0.003138 0.001931 0.001207
 0.000483 0 0.000241 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000241
 0.000483 0.002172 0.01762 0.104272 0.161477 0.178615 0.149891 0.117065 0.0
89307 0.069998 0.034516 0.02993 0.016655 0.013275 0.007483 0.003138 0.00193
1 0.001207 0.000483 0 0.000241 0 0 0
2008 7 5 0 2 328 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000201 0.000201 0 0 0.0002
01 0.000604 0.000805 0.002816 0.021525 0.128143 0.18447 0.1724 0.126936 0.0
99779 0.085496 0.055321 0.044458 0.024341 0.020318 0.013277 0.009254 0.0054
32 0.002615 0.000805 0.000402 0 0.000201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0.000201 0.000201 0 0 0.000201 0.000604 0.000805 0.002816 0.021525 0.1281
43 0.18447 0.1724 0.126936 0.099779 0.085496 0.055321 0.044458 0.024341 0.0
20318 0.013277 0.009254 0.005432 0.002615 0.000805 0.000402 0 0.000201 0 0 
0
2009 7 5 0 2 303 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000243 0 0 0.000729 
0.001943 0.028412 0.125789 0.158572 0.141574 0.129675 0.104177 0.085236 0.0
7188 0.051967 0.037882 0.028655 0.015542 0.008014 0.004371 0.0034 0.001214 
0.000243 0.000486 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000243 0 0 
0.000729 0.001943 0.028412 0.125789 0.158572 0.141574 0.129675 0.104177 0.0
85236 0.07188 0.051967 0.037882 0.028655 0.015542 0.008014 0.004371 0.0034 
0.001214 0.000243 0.000486 0 0 0 0
2010 7 5 0 2 291 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00021 0 0 0 0.000419 0.0
00629 0.001676 0.024094 0.124031 0.174733 0.166143 0.140373 0.106432 0.0823
38 0.065368 0.036455 0.030589 0.020532 0.011314 0.006285 0.003352 0.001676 
0.002095 0.000629 0.00021 0.000419 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
00021 0 0 0 0.000419 0.000629 0.001676 0.024094 0.124031 0.174733 0.166143 
0.140373 0.106432 0.082338 0.065368 0.036455 0.030589 0.020532 0.011314 0.0
06285 0.003352 0.001676 0.002095 0.000629 0.00021 0.000419 0 0 0
2011 7 5 0 2 265 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000362 0 0 0.000362 0.
000724 0.003981 0.026421 0.096996 0.159609 0.160695 0.127036 0.100615 0.085
052 0.061527 0.053203 0.035469 0.02823 0.019182 0.010496 0.010858 0.00941 0
.005429 0.002895 0.001086 0.000362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0.000362 0 0 0.000362 0.000724 0.003981 0.026421 0.096996 0.159609 0.160695
 0.127036 0.100615 0.085052 0.061527 0.053203 0.035469 0.02823 0.019182 0.0
10496 0.010858 0.00941 0.005429 0.002895 0.001086 0.000362 0 0 0
2012 7 5 0 2 75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012658 0.01
8987 0.031646 0.113924 0.082278 0.139241 0.132911 0.120253 0.075949 0.07594
9 0.075949 0.044304 0.006329 0.044304 0.012658 0.006329 0.006329 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012658 0.018987 0.031646 0.
113924 0.082278 0.139241 0.132911 0.120253 0.075949 0.075949 0.075949 0.044
304 0.006329 0.044304 0.012658 0.006329 0.006329 0 0 0 0 0
2013 7 5 0 2 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004425 0.00442
5 0.026549 0.026549 0.057522 0.048673 0.066372 0.115044 0.128319 0.119469 0
.106195 0.075221 0.09292 0.061947 0.026549 0.022124 0.00885 0.00885 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004425 0.004425 0.026549 0
.026549 0.057522 0.048673 0.066372 0.115044 0.128319 0.119469 0.106195 0.07
5221 0.09292 0.061947 0.026549 0.022124 0.00885 0.00885 0 0 0 0 0 0
2014 7 5 0 2 82 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006452 0 0 0 0.0129
03 0.03871 0.025806 0.090323 0.129032 0.103226 0.109677 0.083871 0.16129 0.
083871 0.045161 0.032258 0.032258 0.019355 0.019355 0 0 0.006452 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006452 0 0 0 0.012903 0.03871 0.02580
6 0.090323 0.129032 0.103226 0.109677 0.083871 0.16129 0.083871 0.045161 0.
032258 0.032258 0.019355 0.019355 0 0 0.006452 0 0 0 0
2015 7 5 0 2 168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000577 0 0.000577 
0.004037 0.034025 0.095156 0.152826 0.155709 0.156863 0.095156 0.091696 0.0
73818 0.05767 0.035755 0.020761 0.011534 0.008651 0.002307 0.000577 0.00057
7 0.000577 0.000577 0.000577 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
000577 0 0.000577 0.004037 0.034025 0.095156 0.152826 0.155709 0.156863 0.0
95156 0.091696 0.073818 0.05767 0.035755 0.020761 0.011534 0.008651 0.00230
7 0.000577 0.000577 0.000577 0.000577 0.000577 0 0 0
2016 7 5 0 2 151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00052 0.004683
 0.012487 0.08845 0.151925 0.169615 0.148803 0.123309 0.079605 0.065036 0.0
60354 0.037981 0.028096 0.013007 0.008845 0.002081 0.003122 0.002081 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00052 0.004683 0.012487 0
.08845 0.151925 0.169615 0.148803 0.123309 0.079605 0.065036 0.060354 0.037
981 0.028096 0.013007 0.008845 0.002081 0.003122 0.002081 0 0 0 0 0 0

# Recreational PC discards only RecDD (Ally et al & CDFW) - early years
# very small sample sizes from 1984 and 1989
# data error on the google sheet for 1988 and 1989?
-1984 7 6 0 2 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.166666667 0 0 0.166666667 0
 0 0.666666667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0.166666667 0 0 0.166666667 0 0 0.666666667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0.004808 0.004808 0 0.000962 0 0 0 0.000962
1985 7 6 0 2 34 0 0 0 0 0 0 0 0 0 0 0 0.018181818 0.036363636 0.018181818 0
.072727273 0.127272727 0.109090909 0.163636364 0.090909091 0.090909091 0.10
9090909 0.036363636 0.018181818 0.018181818 0 0 0.054545455 0.018181818 0.0
18181818 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018181818 0.036363636 0.01
8181818 0.072727273 0.127272727 0.109090909 0.163636364 0.090909091 0.09090
9091 0.109090909 0.036363636 0.018181818 0.018181818 0 0 0.054545455 0.0181
81818 0.018181818 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001957 0.001305 0 0 0 0
 0 0                                                                       
                       
1986 7 6 0 2 30 0 0 0 0 0 0 0 0 0.011363636 0.022727273 0.034090909 0.01136
3636 0.011363636 0.045454545 0.034090909 0.045454545 0.181818182 0.11363636
4 0.193181818 0.090909091 0.045454545 0.045454545 0.045454545 0.011363636 0
.022727273 0 0.022727273 0.011363636 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.01
1363636 0.022727273 0.034090909 0.011363636 0.011363636 0.045454545 0.03409
0909 0.045454545 0.181818182 0.113636364 0.193181818 0.090909091 0.04545454
5 0.045454545 0.045454545 0.011363636 0.022727273 0 0.022727273 0.011363636
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006501 0.001478 0.000591 0.001182 0.00
2364 0.004137 0.00266 0.004728                                             
                                                 
1987 7 6 0 2 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0.083333333 0.055555556 0.0694444
44 0.069444444 0.125 0.138888889 0.166666667 0.111111111 0.083333333 0.0416
66667 0.027777778 0.013888889 0 0 0 0 0.013888889 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0.083333333 0.055555556 0.069444444 0.069444444 0.125 0.1388
88889 0.166666667 0.111111111 0.083333333 0.041666667 0.027777778 0.0138888
89 0 0 0 0 0.013888889 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003464 0.001732 0.00
198 0 0.00099 0.000495 0 0                                                 
                                             
1988 7 6 0 2 32 0 0 0 0 0 0 0 0 0 0 0 0.014285714 0.028571429 0.014285714 0
 0.042857143 0.071428571 0.1 0.114285714 0.157142857 0.185714286 0.08571428
6 0.085714286 0.042857143 0.014285714 0.028571429 0.014285714 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.014285714 0.028571429 0.014285714 0 0.042857
143 0.071428571 0.1 0.114285714 0.157142857 0.185714286 0.085714286 0.08571
4286 0.042857143 0.014285714 0.028571429 0.014285714 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0                                              
                                                
-1989 7 6 0 2 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.090909091 0 0 0.090909091 0.
090909091 0.181818182 0 0.090909091 0 0.090909091 0.181818182 0 0 0.0909090
91 0 0 0 0.090909091 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.090909091 0 0 
0.090909091 0.090909091 0.181818182 0 0.090909091 0 0.090909091 0.181818182
 0 0 0.090909091 0 0 0 0.090909091 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0                                                                          
                    

# Recreational PC discards from onboard obsever RecDD - recent years
# all sample sizes seem OK, but very small in 2015 and 2016
2003 7 6 0 2 41  0 0 0 0 0 0 0 0 0 0 0 0 0.008264 0.024793 0.024793 0.04132
2 0.016529 0.082645 0.049587 0.066116 0.049587 0.066116 0.057851 0.07438 0.
082645 0.016529 0.057851 0.024793 0.057851 0.057851 0.041322 0.033058 0.016
529 0.033058 0.008264 0 0.008264 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
008264 0.024793 0.024793 0.041322 0.016529 0.082645 0.049587 0.066116 0.049
587 0.066116 0.057851 0.07438 0.082645 0.016529 0.057851 0.024793 0.057851 
0.057851 0.041322 0.033058 0.016529 0.033058 0.008264 0 0.008264 0 0 0 0 0 
0 0 0                                                                      
                        
2004 7 6 0 2 13  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.025 0 0.05 0.025 0.125 0
.125 0.05 0.1 0 0.1 0.05 0.025 0.075 0.075 0.075 0.025 0.025 0.05 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.025 0 0.05 0.025 0.125 0.125
 0.05 0.1 0 0.1 0.05 0.025 0.075 0.075 0.075 0.025 0.025 0.05 0 0 0 0 0 0 0
 0 0 0 0                                                                   
                           
2005 7 6 0 2 31  0 0 0 0 0 0 0 0 0 0 0.006211 0 0.006211 0.006211 0.012422 
0 0.006211 0.043478 0.024845 0.018634 0.049689 0.093168 0.111801 0.15528 0.
086957 0.043478 0.043478 0.043478 0.049689 0.037267 0.074534 0.012422 0.012
422 0.012422 0.018634 0.024845 0.006211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0.006211 0 0.006211 0.006211 0.012422 0 0.006211 0.043478 0.024845 0.01863
4 0.049689 0.093168 0.111801 0.15528 0.086957 0.043478 0.043478 0.043478 0.
049689 0.037267 0.074534 0.012422 0.012422 0.012422 0.018634 0.024845 0.006
211 0 0 0 0 0 0 0 0                                                        
                                      
2006 7 6 0 2 58  0 0 0 0 0 0 0 0 0 0 0.004505 0 0 0.004505 0.009009 0.00450
5 0.009009 0.009009 0.022523 0.031532 0.072072 0.072072 0.166667 0.261261 0
.148649 0.004505 0.022523 0.022523 0.045045 0.018018 0.004505 0.013514 0.01
3514 0.009009 0.027027 0.004505 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004
505 0 0 0.004505 0.009009 0.004505 0.009009 0.009009 0.022523 0.031532 0.07
2072 0.072072 0.166667 0.261261 0.148649 0.004505 0.022523 0.022523 0.04504
5 0.018018 0.004505 0.013514 0.013514 0.009009 0.027027 0.004505 0 0 0 0 0 
0 0 0 0                                                                    
                          
2007 7 6 0 2 32  0 0 0 0 0 0 0 0 0 0 0 0 0 0.004831 0.019324 0.009662 0 0.0
09662 0.033816 0.038647 0.062802 0.130435 0.217391 0.285024 0.140097 0.0241
55 0.019324 0 0 0 0 0 0 0.004831 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0.004831 0.019324 0.009662 0 0.009662 0.033816 0.038647 0.062802 0.13
0435 0.217391 0.285024 0.140097 0.024155 0.019324 0 0 0 0 0 0 0.004831 0 0 
0 0 0 0 0 0 0 0 0                                                          
                                    
2008 7 6 0 2 58  0 0 0 0 0 0 0 0 0 0 0 0.004396 0 0.002198 0.004396 0 0.004
396 0.010989 0.046154 0.048352 0.076923 0.107692 0.210989 0.318681 0.140659
 0.010989 0 0.002198 0.004396 0.002198 0.002198 0 0.002198 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004396 0 0.002198 0.004396 0 0.004396 0.010
989 0.046154 0.048352 0.076923 0.107692 0.210989 0.318681 0.140659 0.010989
 0 0.002198 0.004396 0.002198 0.002198 0 0.002198 0 0 0 0 0 0 0 0 0 0 0 0  
                                                                           
                 
2009 7 6 0 2 75  0 0 0 0 0 0 0 0 0 0.010101 0.002525 0 0.007576 0.010101 0.
017677 0.007576 0.010101 0.025253 0.025253 0.045455 0.080808 0.118687 0.196
97 0.282828 0.123737 0.007576 0.007576 0.010101 0.002525 0.005051 0 0 0.002
525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010101 0.002525 0 0.007576 
0.010101 0.017677 0.007576 0.010101 0.025253 0.025253 0.045455 0.080808 0.1
18687 0.19697 0.282828 0.123737 0.007576 0.007576 0.010101 0.002525 0.00505
1 0 0 0.002525 0 0 0 0 0 0 0 0 0 0 0 0                                     
                                                         
2010 7 6 0 2 111  0 0 0 0 0 0 0 0 0 0 0 0 0 0.002291 0.002291 0.004582 0.01
1455 0.014891 0.026346 0.07331 0.090493 0.124857 0.185567 0.316151 0.128293
 0.009164 0.003436 0.002291 0 0 0 0 0.003436 0.001145 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002291 0.002291 0.004582 0.011455 0.014891 0.0
26346 0.07331 0.090493 0.124857 0.185567 0.316151 0.128293 0.009164 0.00343
6 0.002291 0 0 0 0 0.003436 0.001145 0 0 0 0 0 0 0 0 0 0 0                 
                                                                           
  
2011 7 6 0 2 32  0 0 0 0 0 0 0 0 0 0 0.009709 0.009709 0.097087 0.145631 0.
23301 0.019417 0 0.019417 0.009709 0.048544 0.009709 0.009709 0.058252 0.16
5049 0.145631 0 0 0 0.009709 0 0 0 0 0 0.009709 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0.009709 0.009709 0.097087 0.145631 0.23301 0.019417 0 0.01941
7 0.009709 0.048544 0.009709 0.009709 0.058252 0.165049 0.145631 0 0 0 0.00
9709 0 0 0 0 0 0.009709 0 0 0 0 0 0 0 0 0 0                                
                                                              
2012 7 6 0 2 18  0 0 0 0 0 0 0 0 0 0 0 0 0.048387 0.145161 0.129032 0.03225
8 0.048387 0.016129 0.048387 0.096774 0.080645 0.032258 0.096774 0.16129 0.
064516 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.04
8387 0.145161 0.129032 0.032258 0.048387 0.016129 0.048387 0.096774 0.08064
5 0.032258 0.096774 0.16129 0.064516 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0                                                                          
                    
2013 7 6 0 2 31  0 0 0 0 0 0 0 0 0 0 0 0 0.008065 0 0.008065 0.024194 0 0.0
24194 0.040323 0.064516 0.120968 0.120968 0.217742 0.241935 0.08871 0.01612
9 0.016129 0 0 0.008065 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0.008065 0 0.008065 0.024194 0 0.024194 0.040323 0.064516 0.120968 0.120
968 0.217742 0.241935 0.08871 0.016129 0.016129 0 0 0.008065 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0                                                            
                                  
2014 7 6 0 2 22  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.013699 0 0 0.013699 0 0.0273
97 0.082192 0.109589 0.287671 0.273973 0.123288 0 0.027397 0.013699 0 0 0.0
13699 0 0 0.013699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0136
99 0 0 0.013699 0 0.027397 0.082192 0.109589 0.287671 0.273973 0.123288 0 0
.027397 0.013699 0 0 0.013699 0 0 0.013699 0 0 0 0 0 0 0 0 0 0 0           
                                                                           
        
2015 7 6 0 2 10  0 0 0 0 0 0 0 0 0 0 0 0 0.052632 0 0 0.052632 0 0 0.052632
 0 0.052632 0.052632 0.052632 0.210526 0.052632 0.052632 0 0.105263 0.10526
3 0.105263 0 0 0.052632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0
52632 0 0 0.052632 0 0 0.052632 0 0.052632 0.052632 0.052632 0.210526 0.052
632 0.052632 0 0.105263 0.105263 0.105263 0 0 0.052632 0 0 0 0 0 0 0 0 0 0 
0 0                                                                        
                      
2016 7 6 0 2 8  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.054054 0.054054 0.054
054 0.108108 0.108108 0.243243 0.297297 0.054054 0 0 0 0 0 0 0 0.027027 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.054054 0.054054 0.
054054 0.108108 0.108108 0.243243 0.297297 0.054054 0 0 0 0 0 0 0 0.027027 
0 0 0 0 0 0 0 0 0 0 0                                                      
                                        

# Sanitation survey (converted from SL, all districts combined)            
#                                                                          
#           
# sample sizes vary a lot - small early and late years
1970 7 7 0 2 5  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.777778 0.0555
56 0.055556 0 0 0 0 0.111111 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0.777778 0 0.055556 0.055556 0 0 0 0 0.111111 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0
1971 7 7 0 2 8  0 0 0 0 0 0 0 0 0 0 0 0 0.173913 0 0 0 0 0 0 0 0 0 0 0 0.69
5652 0.043478 0 0.043478 0.043478 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0.173913 0 0 0 0 0 0 0 0 0 0 0 0.695652 0.043478 0.043478 0.
043478 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
1972 7 7 0 2 28  0 0 0 0 0 0 0 0 0 0.012987 0 0 0 0.012987 0 0 0 0 0 0.0129
87 0.025974 0.025974 0.272727 0.077922 0.233766 0.220779 0.012987 0.038961 
0.012987 0.012987 0.012987 0.012987 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0.012987 0 0 0 0.012987 0 0 0 0 0 0.012987 0.038961 0.272727 0 0.10389
6 0.246753 0.207792 0.038961 0.012987 0 0.012987 0.025974 0 0 0 0 0 0 0 0 0
 0 0 0 0 0
1973 7 7 0 2 30  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.361111 0.148
148 0.046296 0.175926 0.046296 0.092593 0.064815 0.037037 0 0.009259 0.0092
59 0 0.009259 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0.357798 0 0.146789 0.055046 0.201835 0.100917 0.06422 0 0.036697 0.009174
 0.009174 0 0 0.009174 0 0 0 0 0 0 0 0 0 0
1974 7 7 0 2 31  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.035088 0.03508
8 0.035088 0.192982 0.035088 0.035088 0.035088 0.105263 0.052632 0.087719 0
.052632 0.263158 0.017544 0 0 0 0 0 0 0.017544 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0.017544 0.035088 0 0.070175 0.210526 0.017544 0.052632
 0.105263 0 0.052632 0.122807 0.245614 0.052632 0 0 0 0 0 0 0 0.017544 0 0 
0 0
1975 7 7 0 2 25  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018519 0.0
37037 0.018519 0.074074 0.296296 0.240741 0.166667 0.12963 0 0 0.018519 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018519 0
.037037 0.037037 0.314815 0.277778 0 0.166667 0.12963 0 0.018519 0 0 0 0 0 
0 0 0 0 0 0 0
1976 7 7 0 2 37  0 0 0 0 0 0 0 0 0 0 0 0 0 0.016393 0.016393 0.016393 0.032
787 0.016393 0.016393 0 0 0.016393 0 0.016393 0.032787 0.245902 0.065574 0.
098361 0.163934 0.131148 0.065574 0 0 0.04918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0.016393 0.032787 0.016393 0.032787 0 0.016393 0 0.01639
3 0 0 0.016393 0.04918 0.262295 0.114754 0.180328 0 0.180328 0.016393 0 0.0
4918 0 0 0 0 0 0 0 0 0 0 0 0
1977 7 7 0 2 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.075269 0.075269 0.0752
69 0.096774 0.043011 0.053763 0.053763 0.107527 0.096774 0.032258 0.032258 
0.129032 0.032258 0.032258 0.021505 0.021505 0 0.021505 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.075269 0 0.086022 0.086022 0.096774 0.07
5269 0 0.064516 0.096774 0.096774 0.053763 0.139785 0 0.053763 0.021505 0.0
32258 0 0 0.021505 0 0 0 0 0 0 0 0 0 0
1978 7 7 0 2 32  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.024096 0.096386 0.06
0241 0.228916 0.144578 0 0.072289 0.072289 0 0.168675 0.036145 0.024096 0.0
12048 0 0.036145 0.012048 0 0.012048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0.084337 0.060241 0.228916 0.180723 0 0.060241 0.024096 0.0
60241 0.108434 0.096386 0 0.024096 0.012048 0.036145 0.012048 0 0 0.012048 
0 0 0 0 0 0 0 0 0
1979 7 7 0 2 100  0 0 0 0 0 0 0 0 0 0 0 0 0.002941 0 0.020588 0.017647 0.02
3529 0.044118 0.061765 0.073529 0.108824 0.079412 0.102941 0.094118 0.14705
9 0.058824 0.035294 0.061765 0.023529 0.011765 0.005882 0.008824 0.011765 0
.002941 0 0 0 0.002941 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002941 0.005
882 0.020588 0.026471 0.052941 0 0.070588 0.102941 0.132353 0.114706 0 0.10
8824 0.147059 0.058824 0.079412 0.032353 0 0.014706 0.005882 0.011765 0.008
824 0 0 0 0.002941 0 0 0 0 0 0 0 0
1980 7 7 0 2 107  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005682 0.008523 0.011364 0.
025568 0.053977 0.073864 0.102273 0.125 0.136364 0.164773 0.082386 0.051136
 0.039773 0.079545 0.022727 0.005682 0.002841 0.008523 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002841 0.005682 0.017045 0.025568 0 0.068
182 0.096591 0.161932 0.159091 0 0.173295 0.088068 0.073864 0.082386 0.0284
09 0 0.008523 0.005682 0.002841 0 0 0 0 0 0 0 0 0 0 0 0 0
1981 7 7 0 2 97  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005155 0.002577 0.005155 0
.030928 0.051546 0.059278 0.131443 0.17268 0.141753 0.087629 0.061856 0.059
278 0.097938 0.036082 0.015464 0.020619 0.005155 0.010309 0.002577 0 0.0025
77 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002577 0.002577 0.007732
 0 0.033505 0.06701 0.128866 0.208763 0 0.152062 0.115979 0.059278 0.123711
 0.041237 0 0.018041 0.023196 0.010309 0.002577 0 0 0.002577 0 0 0 0 0 0 0 
0 0
1982 7 7 0 2 103  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006339 0.009509 0.019
017 0.055468 0.049128 0.107765 0.115689 0.234548 0.103011 0.066561 0.091918
 0.044374 0.042789 0.020602 0.011094 0.014263 0.00317 0.004754 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006339 0 0.009509 0.034865 0.0697
31 0.118859 0 0.128368 0.264659 0.110935 0.099842 0.060222 0 0.050713 0.020
602 0.017433 0.00317 0 0.004754 0 0 0 0 0 0 0 0 0 0
1983 7 7 0 2 64  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008475 0.016949 0 0.008475
 0.016949 0.033898 0.059322 0.118644 0.067797 0.050847 0.076271 0.059322 0.
144068 0.084746 0.050847 0.084746 0.059322 0.042373 0 0.008475 0 0.008475 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.025424 0 0 0.008475 0.042373
 0.016949 0.161017 0 0.09322 0.059322 0.09322 0.152542 0.09322 0 0.076271 0
.084746 0.076271 0 0 0.008475 0 0.008475 0 0 0 0 0 0 0 0
1984 7 7 0 2 41  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.013889 0.027778 0 0.055556
 0.041667 0.027778 0.069444 0.097222 0 0.013889 0.222222 0.013889 0.166667 
0.041667 0.013889 0.083333 0.013889 0.027778 0.027778 0 0.027778 0.013889 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.027778 0.013889 0 0.055556 0
.069444 0.027778 0.125 0 0.013889 0.055556 0.180556 0.166667 0.055556 0 0.0
13889 0.097222 0.027778 0.027778 0 0.013889 0.027778 0 0 0 0 0 0 0 0 0
1985 7 7 0 2 67  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018349 0.036697 0.027523
 0.036697 0.027523 0.06422 0.137615 0.082569 0.036697 0.055046 0.045872 0.0
91743 0.036697 0.082569 0.018349 0.036697 0.091743 0.018349 0.027523 0 0.01
8349 0 0 0.009174 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009091 0.045455
 0 0.027273 0.045455 0.063636 0.109091 0.009091 0.127273 0.036364 0.072727 
0.109091 0.036364 0.009091 0.072727 0.036364 0.081818 0.045455 0 0.027273 0
.018182 0 0 0.009091 0 0 0 0 0 0
1986 7 7 0 2 105  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005848 0.023392 0.035088 
0.046784 0.076023 0.105263 0.064327 0.064327 0.081871 0.093567 0.064327 0.0
93567 0.040936 0.046784 0.040936 0.035088 0.052632 0 0.011696 0 0.005848 0.
005848 0 0 0.005848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.023392 0.0350
88 0.005848 0.070175 0.087719 0.099415 0.099415 0 0.087719 0.116959 0.09356
7 0.064327 0.052632 0.005848 0.05848 0.02924 0.040936 0.011696 0 0 0.011696
 0 0 0 0.005848 0 0 0 0 0
1987 7 7 0 2 143  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003623 0.007246 0.032609 
0.047101 0.036232 0.105072 0.119565 0.112319 0.072464 0.072464 0.065217 0.0
43478 0.07971 0.050725 0.039855 0.028986 0.025362 0.036232 0.007246 0.01087
 0 0 0 0 0 0 0 0 0.003623 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003623 0.036232
 0.003623 0.050725 0.083333 0.130435 0.148551 0.007246 0.083333 0.09058 0.0
61594 0.086957 0.057971 0.01087 0.043478 0.043478 0.021739 0.021739 0.00362
3 0.007246 0 0 0 0 0 0 0 0.003623 0 0
1988 7 7 0 2 174  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010791 0.028777 0.04676
3 0.082734 0.097122 0.089928 0.129496 0.118705 0.104317 0.064748 0.064748 0
.057554 0.053957 0.021583 0.003597 0.003597 0.003597 0.010791 0 0.003597 0 
0.003597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010791 0.028777 0.00
7194 0.046763 0.104317 0.122302 0.136691 0.028777 0.133094 0.122302 0.06474
8 0.068345 0.064748 0.010791 0.02518 0.003597 0.003597 0.007194 0.003597 0 
0.003597 0.003597 0 0 0 0 0 0 0 0
1989 7 7 0 2 138  0 0 0 0 0 0 0 0 0 0.004926 0 0 0.004926 0 0 0 0.004926 0.
004926 0.009852 0.024631 0.078818 0.093596 0.054187 0.133005 0.118227 0.133
005 0.08867 0.108374 0.029557 0.024631 0.014778 0.004926 0.019704 0.014778 
0.014778 0.009852 0.004926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004926 0 0 0
.004926 0 0 0.004926 0.004926 0 0.014778 0.044335 0.098522 0.098522 0.01477
8 0.123153 0.182266 0.118227 0.103448 0.073892 0 0.029557 0.014778 0.019704
 0.014778 0 0.014778 0.014778 0 0 0 0 0 0 0 0 0
1990 7 7 0 2 120  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008696 0.021739 0.0
69565 0.073913 0.078261 0.113043 0.16087 0.117391 0.1 0.069565 0.065217 0.0
65217 0.013043 0.017391 0.004348 0 0.008696 0 0 0 0 0 0 0.004348 0 0 0.0086
96 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008658 0.047619 0.077922 0.090909 
0.017316 0.142857 0.186147 0.12987 0.099567 0.069264 0.004329 0.069264 0.02
1645 0.008658 0 0 0.008658 0 0 0 0 0 0.004329 0 0 0 0.012987
1991 7 7 0 2 95  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006173 0.006173 0 0.0432
1 0.030864 0.04321 0.080247 0.166667 0.12963 0.135802 0.080247 0.067901 0.0
74074 0.024691 0.024691 0.018519 0.018519 0.012346 0.006173 0 0.012346 0.01
8519 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012346 0 0.006173 0.04
321 0.049383 0.08642 0.024691 0.197531 0.141975 0.141975 0.074074 0.080247 
0.006173 0.037037 0.018519 0.018519 0.018519 0.006173 0.006173 0 0.024691 0
.006173 0 0 0 0 0 0 0
1992 7 7 0 2 121  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004902 0 0.004902 0.00980
4 0.014706 0.014706 0.02451 0.102941 0.112745 0.127451 0.132353 0.107843 0.
078431 0.098039 0.039216 0.044118 0.044118 0.019608 0.009804 0 0.004902 0 0
.004902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004902 0 0 0.004902 0.0
09804 0.014706 0.034314 0.102941 0.004902 0.132353 0.171569 0.142157 0.1127
45 0.078431 0.019608 0.063725 0.044118 0.039216 0.004902 0 0.004902 0.00490
2 0 0.004902 0 0 0 0 0 0 0
1993 7 7 0 2 155  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010909 0.018182 0.032727 0.
036364 0.08 0.109091 0.029091 0.047273 0.072727 0.087273 0.087273 0.08 0.08
3636 0.069091 0.043636 0.04 0.018182 0.021818 0.007273 0.014545 0.003636 0.
007273 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010909 0.029091 0.04
7273 0.018182 0.112727 0.08 0.050909 0.072727 0.003636 0.123636 0.090909 0.
098182 0.090909 0.058182 0 0.043636 0.018182 0.025455 0.014545 0 0.007273 0
.003636 0 0 0 0 0 0 0 0 0
1994 7 7 0 2 177  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003344 0.013378 0.033445 0.
040134 0.086957 0.056856 0.103679 0.06689 0.083612 0.093645 0.076923 0.0769
23 0.060201 0.036789 0.056856 0.040134 0.006689 0.020067 0.010033 0.006689 
0.003344 0.003344 0.006689 0.010033 0 0 0 0 0 0 0.003344 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0.006689 0.036789 0.043478 0.020067 0.080268 0.093645 0.100334 0.
093645 0.006689 0.113712 0.093645 0.086957 0.050167 0.063545 0 0.040134 0.0
26756 0.010033 0.006689 0 0.003344 0.006689 0.006689 0.006689 0 0 0 0 0 0 0
.003344
1995 7 7 0 2 207  0 0.002695 0 0 0 0 0 0 0 0 0 0 0 0 0.005391 0.008086 0.02
965 0.059299 0.075472 0.086253 0.091644 0.09973 0.107817 0.056604 0.070081 
0.080863 0.067385 0.059299 0.032345 0.02965 0.010782 0.010782 0.005391 0.00
2695 0.002695 0.002695 0.002695 0 0 0 0 0 0 0 0 0 0.002695 0 0 0 0 0 0 0 0 
0 0 0 0 0.010782 0.021563 0.070081 0.005391 0.09973 0.086253 0.123989 0.129
38 0.002695 0.083558 0.078167 0.09973 0.072776 0.045822 0 0.040431 0.008086
 0.008086 0.002695 0 0.005391 0.002695 0 0 0 0 0 0 0 0 0
1996 7 7 0 2 215  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00409 0.006135 0.047035 0
.07362 0.128834 0.106339 0.096115 0.141104 0.09407 0.05317 0.06953 0.030675
 0.03681 0.03272 0.02454 0.02454 0.010225 0.00409 0.002045 0.00409 0 0.0020
45 0 0.006135 0.002045 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002045 0.004
09 0.047035 0.006135 0.09816 0.153374 0.130879 0.139059 0.014315 0.110429 0
.063395 0.063395 0.047035 0.03681 0.00409 0.02863 0.02454 0.010225 0.002045
 0 0.00409 0.002045 0 0.00409 0.00409 0 0 0 0 0 0
1997 7 7 0 2 229  0 0 0 0 0 0 0 0 0 0.002183 0 0 0 0 0 0.00655 0.008734 0.0
15284 0.050218 0.063319 0.09607 0.144105 0.131004 0.113537 0.063319 0.08733
6 0.048035 0.065502 0.026201 0.024017 0.021834 0.019651 0.008734 0.002183 0
 0 0 0 0 0 0 0 0 0 0.002183 0 0 0 0 0 0 0 0 0 0.002183 0 0 0 0 0.002183 0.0
08734 0.010917 0.024017 0.052402 0.08952 0.165939 0.144105 0.017467 0.11790
4 0.098253 0.080786 0.072052 0.034934 0.002183 0.026201 0.026201 0.015284 0
.00655 0 0 0 0 0 0 0 0 0 0 0 0.002183
1998 7 7 0 2 178  0 0 0 0 0 0.002793 0 0.002793 0 0 0 0 0 0 0.002793 0 0.02
7933 0.036313 0.058659 0.064246 0.069832 0.117318 0.086592 0.108939 0.10614
5 0.075419 0.072626 0.036313 0.044693 0.030726 0.011173 0.022346 0.00838 0.
005587 0.002793 0.005587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002793 0 0.002793 0 
0 0 0 0 0 0.002793 0.027933 0.036313 0 0.069832 0.078212 0.122905 0.111732 
0.005587 0.134078 0.114525 0.100559 0.055866 0.047486 0 0.036313 0.01676 0.
019553 0.002793 0 0.005587 0.005587 0 0 0 0 0 0 0 0 0
1999 7 7 0 2 240  0 0 0 0 0 0 0 0 0 0 0 0 0 0.002169 0 0.008677 0.021692 0.
017354 0.058568 0.060738 0.047722 0.119306 0.125813 0.13449 0.104121 0.0650
76 0.067245 0.045553 0.02603 0.030369 0.02603 0.008677 0.008677 0.008677 0.
006508 0 0.004338 0 0.002169 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.002169
 0.006508 0.015184 0.023861 0.002169 0.071584 0.062907 0.125813 0.138829 0.
006508 0.164859 0.101952 0.078091 0.069414 0.034707 0 0.045553 0.015184 0.0
10846 0.010846 0 0.006508 0 0.004338 0.002169 0 0 0 0 0 0 0
2000 7 7 0 2 209  0 0 0 0 0 0 0 0 0 0 0 0 0.003135 0 0.009404 0.015674 0.01
5674 0.025078 0.065831 0.062696 0.056426 0.115987 0.07837 0.090909 0.134796
 0.106583 0.0721 0.062696 0.025078 0.025078 0.012539 0.00627 0.009404 0.003
135 0 0 0 0 0 0 0 0 0 0.003135 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003135 0.003135 
0.009404 0.018809 0.034483 0.00627 0.081505 0.056426 0.094044 0.125392 0.01
8809 0.109718 0.159875 0.103448 0.084639 0.028213 0.00627 0.028213 0.009404
 0.00627 0.009404 0 0 0 0 0 0 0 0 0 0 0.003135 0
2001 7 7 0 2 266  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007843 0.011765 0.021569 
0.064706 0.056863 0.052941 0.115686 0.119608 0.111765 0.098039 0.082353 0.0
7451 0.062745 0.043137 0.02549 0.007843 0.017647 0.005882 0.009804 0.001961
 0.003922 0.001961 0.001961 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0
17647 0.021569 0.003922 0.070588 0.064706 0.090196 0.154902 0.015686 0.1392
16 0.127451 0.080392 0.080392 0.056863 0.001961 0.023529 0.011765 0.015686 
0.009804 0.001961 0.005882 0.003922 0.001961 0 0 0 0 0 0 0 0
2002 7 7 0 2 203  0 0 0 0 0 0 0 0 0 0 0 0 0 0.001289 0.001933 0.005155 0.00
7088 0.012887 0.048325 0.064433 0.100515 0.121778 0.125 0.146907 0.099227 0
.076675 0.060567 0.044459 0.02384 0.017397 0.018041 0.012887 0.005799 0.003
222 0.001289 0 0.000644 0.000644 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
001289 0.003866 0.008376 0.013531 0.003222 0.058634 0.080541 0.152062 0.153
995 0.003866 0.177835 0.112113 0.084407 0.053479 0.031572 0.001933 0.022552
 0.018041 0.012242 0.003866 0 0.001289 0 0.000644 0.000644 0 0 0 0 0 0 0
2003 7 7 0 2 206  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007979 0.013298 0.010638 0.
018617 0.031915 0.050532 0.06117 0.090426 0.085106 0.087766 0.114362 0.1436
17 0.06117 0.077128 0.045213 0.018617 0.021277 0.023936 0.010638 0.010638 0
.007979 0.00266 0.00266 0.00266 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0
0266 0.013298 0.007979 0.023936 0.005319 0.034574 0.066489 0.101064 0.09840
4 0.013298 0.101064 0.154255 0.135638 0.082447 0.058511 0 0.023936 0.034574
 0.013298 0.010638 0.00266 0.007979 0.005319 0 0.00266 0 0 0 0 0 0 0
2004 7 7 0 2 199  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001248 0.003745 0.007491 
0.024969 0.029963 0.047441 0.064919 0.104869 0.11236 0.137328 0.156055 0.09
4881 0.069913 0.057428 0.028714 0.026217 0.013733 0.006242 0.007491 0.00249
7 0.002497 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004994 0.00873
9 0 0.026217 0.042447 0.066167 0.117353 0.012484 0.143571 0.17603 0.151061 
0.089888 0.073658 0.001248 0.034956 0.024969 0.011236 0.008739 0 0.004994 0
.001248 0 0 0 0 0 0 0 0 0
2005 7 7 0 2 253  0 0 0 0 0 0 0 0 0 0 0 0 0 0.000774 0 0.000774 0.000774 0.
010836 0.020898 0.037926 0.056502 0.086687 0.120743 0.115325 0.151703 0.118
421 0.082043 0.065789 0.05418 0.033282 0.018576 0.014706 0.00387 0.003096 0
.002322 0 0 0 0.000774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000774 0.000
774 0 0.009288 0.002322 0.026316 0.05031 0.085139 0.136997 0.01548 0.141641
 0.180341 0.118421 0.089783 0.064241 0.00387 0.041796 0.017802 0.00774 0.00
3096 0 0.003096 0 0 0.000774 0 0 0 0 0 0 0
2006 7 7 0 2 271  0 0 0 0 0 0 0 0 0 0 0 0 0.001185 0.001185 0.003555 0.0011
85 0.009479 0.008294 0.020142 0.033175 0.055687 0.090047 0.135071 0.127962 
0.14455 0.10782 0.078199 0.056872 0.050948 0.029621 0.017773 0.010664 0.008
294 0.004739 0.003555 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001185 
0.00237 0.003555 0.005924 0.010664 0.005924 0.020142 0.043839 0.103081 0.13
981 0.030806 0.148104 0.148104 0.113744 0.084123 0.061611 0.004739 0.03436 
0.020142 0.009479 0.003555 0.001185 0.003555 0 0 0 0 0 0 0 0 0 0
2007 7 7 0 2 152  0 0 0 0 0.004132 0 0 0 0 0 0 0 0 0.004132 0.004132 0.0289
26 0.008264 0.033058 0.033058 0.045455 0.028926 0.057851 0.061983 0.107438 
0.099174 0.066116 0.132231 0.086777 0.095041 0.028926 0.033058 0.020661 0.0
04132 0.012397 0.004132 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004132 0 0 0 0 0 0 0 0 
0 0.004132 0.020661 0.020661 0.020661 0.024793 0.020661 0.061983 0.045455 0
.066116 0.020661 0.107438 0.132231 0.115702 0.119835 0.107438 0.004132 0.03
719 0.03719 0.012397 0.012397 0 0.004132 0 0 0 0 0 0 0 0 0 0
2008 7 7 0 2 145  0 0 0 0 0 0 0 0 0 0 0 0 0.004717 0 0.009434 0.004717 0.00
9434 0.014151 0.042453 0.042453 0.070755 0.103774 0.113208 0.113208 0.09434
 0.113208 0.080189 0.070755 0.037736 0.009434 0.028302 0.014151 0.004717 0.
004717 0.004717 0.009434 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004717
 0 0.014151 0 0.014151 0.014151 0.04717 0.070755 0.070755 0.127358 0.070755
 0.136792 0.09434 0.108491 0.103774 0.04717 0.004717 0.018868 0.028302 0.00
4717 0.004717 0 0.009434 0.004717 0 0 0 0 0 0 0 0 0
2009 7 7 0 2 140  0 0 0 0 0 0 0 0 0 0 0 0.004739 0 0.004739 0.004739 0.0379
15 0.028436 0.014218 0.047393 0.090047 0.061611 0.14218 0.109005 0.090047 0
.080569 0.056872 0.066351 0.056872 0.028436 0.023697 0.014218 0.009479 0.00
4739 0 0 0.009479 0.009479 0 0 0 0 0 0 0 0.004739 0 0 0 0 0 0 0 0 0 0 0.004
739 0 0 0.004739 0.014218 0.042654 0.028436 0.004739 0.080569 0.075829 0.12
3223 0.123223 0.052133 0.090047 0.104265 0.056872 0.080569 0.037915 0 0.028
436 0.014218 0.009479 0 0 0.004739 0.009479 0.004739 0 0 0 0 0 0 0 0.004739
2010 7 7 0 2 89         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008 0 0.008 0.04 0.03
2 0.048 0.024 0.096 0.104 0.096 0.128 0.112 0.104 0.048 0.064 0.032 0.024 0
 0.008 0.016 0.008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008 0.
008 0.032 0.008 0.048 0.04 0.064 0.12 0.024 0.136 0.144 0.104 0.104 0.072 0
.008 0.032 0.016 0.008 0.008 0 0.016 0 0 0 0 0 0 0 0 0 0
2011 7 7 0 2 107  0 0 0 0 0 0 0 0 0 0 0 0 0 0.007634 0 0.022901 0.038168 0.
015267 0.053435 0.045802 0.045802 0.099237 0.129771 0.122137 0.099237 0.083
969 0.083969 0.068702 0.022901 0.015267 0.015267 0.015267 0.007634 0.007634
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007634 0.007634 0.045802
 0.022901 0.007634 0.061069 0.053435 0.068702 0.129771 0.068702 0.152672 0.
10687 0.061069 0.114504 0.030534 0 0.015267 0.022901 0.015267 0.007634 0 0 
0 0 0 0 0 0 0 0 0 0
2012 7 7 0 2 40  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018868 0 0 0.018868 0.037736
 0.056604 0.056604 0.056604 0.056604 0.075472 0.056604 0.150943 0.075472 0.
075472 0.132075 0.018868 0.037736 0.037736 0 0 0.018868 0 0 0.018868 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018868 0 0.018868 0 0.056604 0.075472
 0.075472 0.056604 0 0.075472 0.09434 0.132075 0.113208 0.150943 0 0.037736
 0.056604 0 0 0 0.018868 0 0.018868 0 0 0 0 0 0 0 0
-2013 7 7 0 2 11  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.090909 0 0.090909 0.2
72727 0 0.090909 0.090909 0.181818 0 0 0 0 0 0.090909 0.090909 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.090909 0 0.090909 0.181818 
0.090909 0 0.090909 0.090909 0.181818 0 0 0 0 0.090909 0 0.090909 0 0 0 0 0
 0 0 0 0 0 0 0 0
2014 7 7 0 2 36  0 0 0 0 0 0 0 0 0 0 0 0 0 0.025 0 0 0 0 0 0.025 0.1 0.075 
0.025 0.15 0.05 0.05 0.1 0.125 0.125 0.05 0.05 0 0.025 0.025 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.025 0 0 0 0 0 0.1 0.1 0.025 0 0.15 0.07
5 0.075 0.175 0.125 0 0.05 0.05 0 0.05 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 7 0 2 46  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.050847 0.084746 0.050847 0.0
67797 0.067797 0.050847 0.050847 0.033898 0 0.084746 0.067797 0.118644 0.08
4746 0.067797 0.050847 0.016949 0.050847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0.101695 0.084746 0.067797 0 0.101695 0.033898 0.0508
47 0.016949 0 0.101695 0.101695 0.118644 0.101695 0.050847 0 0.033898 0.033
898 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 7 0 2 28  0 0 0 0 0 0.032258 0.064516 0 0 0 0 0.032258 0.064516 0.09
6774 0.096774 0.032258 0.032258 0.032258 0.096774 0.032258 0.032258 0.09677
4 0.032258 0 0.032258 0 0.064516 0 0 0 0.064516 0 0 0 0 0 0 0.032258 0 0 0 
0 0.032258 0 0 0 0 0 0 0 0.096774 0 0 0 0 0.032258 0 0.064516 0.129032 0.09
6774 0.032258 0.032258 0 0.096774 0.032258 0.129032 0.032258 0 0 0.032258 0
 0.064516 0 0 0.032258 0.032258 0 0 0 0 0 0.032258 0 0 0 0 0 0.032258 0 0

# NWFSC trawl survey length comps, copied from \SCOR2017\NWFSCTrawlSurvey\L
# engthFreq1\LengthCompsForSS.csv updated 6/9/2017
2003 7 8 3 0 7  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.589229849 0 0 0 6.32672
898 2.852195554 4.737499131 9.109438658 9.616086539 7.076377757 8.316820454
 5.704311239 5.704311239 1.426057843 2.66650054 0.64486088 4.441425403 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.372066518 1.24044
2697 1.885303577 2.480885394 4.497812792 3.721328091 5.152217997 1.17518986
8 1.426057843 2.66650054 2.350299867 1.175189868 0 0.64486088 0 0 0 0 0 0 0
 0 0 0 0 0
2004 7 8 3 0 12  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.35497863 3.055392557 1
.019356271 2.964251164 4.356746941 5.075222625 4.5245416 7.114860293 3.4788
35769 4.273039593 2.201617252 2.64098584 0.169149307 0.169149307 0.34669082
6 0.374774996 2.361399662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 3.153918436 2.151544828 2.791533515 6.596690826 3.570885768 7.769882
271 5.873705155 3.270665985 7.095977818 7.538898228 1.312406331 0.172717649
 2.87966825 0.169149307 0 0 0.171363001 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 8  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.08281431 0 0 0.541407155 2.
386208567 0.645791414 1.08281431 3.980811523 2.168266706 5.23887867 2.65043
6843 3.070611964 1.745393542 1.971009835 4.103722339 1.211061254 1.29158282
8 1.716314642 1.130479724 1.211061254 0.565209884 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0.541407155 0 0 1.08281431 0 2.16562862 6.165506309 6.
083665692 4.747834971 6.232537671 6.174080087 3.68282774 7.879482647 6.8772
49867 6.064299744 1.919627119 0.645791414 0.645791414 0.732368593 0 0.56520
9884 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 11  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.358157868 1.9720
79214 3.864128456 4.073613503 3.39960284 2.358157868 0 1.966626622 2.011478
585 0 4.162965647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 2.011478585 2.062134918 4.255659702 4.283098549 8.073704966 6.09898740
1 5.76356508 7.68270139 8.191903078 7.817784946 9.503339273 2.100654839 5.9
88176671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 12  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.409056982 0.711893029 
0.353203224 2.176920497 0.711893029 0 1.088441837 3.953909778 5.795964749 3
.59216369 3.200848984 2.923831901 1.42382288 0.394039585 0.706369625 0 0.41
1162135 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.376548808 0.7
29752032 0.753097617 2.629250397 4.35380417 0.753097617 11.61733715 8.45769
2757 11.5297728 5.436759427 11.16161956 6.10748469 3.620590805 2.156520727 
0 0.711893029 0.751256482 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.393479456 0 2.195293259 0 0 0
 3.832144277 1.844293163 0 6.147038913 1.875872282 0 7.326355679 0 4.313816
591 2.195293259 1.844293163 0 1.920337134 0 0 1.920337134 0 1.920337134 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.269351739 0 5.915640194 1.
844293163 12.81295542 3.688586326 9.406221812 5.532879489 8.47536375 4.1744
32892 1.956090505 2.195293259 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 11  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.059292447 0.271244536 1.40
9232266 0.361778803 0.845114752 2.104619822 1.64504862 2.065940738 1.727820
531 1.475510833 1.920645382 0.848803529 3.538081249 1.127173509 1.467655595
 2.192049146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2396
11283 0.206671034 0.281727032 1.322705232 0.98256814 4.530017291 6.69137528
1 6.529201779 7.790803348 10.45400752 10.58844885 7.212899362 7.967108316 5
.846459564 3.980455851 1.219897157 0 1.096031208 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 10  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3.530839887 7.236523
337 1.596007911 1.596007911 2.079500368 0 6.80286302 1.596007911 3.19218825
2 5.012182148 3.541875378 1.897759623 3.192188252 1.596007911 1.596007911 0
 0 1.924313773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3.192188252 1.93
4659546 0 1.934659546 0 1.596007911 3.530839887 1.934659546 3.192188252 3.5
30839887 3.416174237 10.47250869 15.44106617 1.536174857 0 0 0 1.897759623 
0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 16  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.414383187 0.417667019 2.20
8085526 1.196920495 1.163534863 2.774765571 2.425292808 3.103331266 1.51840
7706 2.584522202 1.266902616 1.241981975 1.179589156 0.891925421 1.61188747
4 0.477542234 0.828547451 0.955084467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 1.253037545 3.040172219 6.364870289 5.058598168 6.41277775
8 5.099025796 2.890028095 4.982887583 7.492538403 8.246177984 5.820994636 7
.31327763 4.167949794 2.254533513 1.432590214 0.955084467 0.955084467 0 0 0
 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 9  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.47567745 6.98893439
8 2.028091749 0.874938986 0.865496642 6.536630621 0.555292408 6.874181534 1
0.56309395 2.028091749 4.056183497 6.084326843 3.607801131 7.596030707 4.60
0743623 0 2.028091749 0 0 2.028091749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 2.480395526 1.327242763 1.327242763 1.832588781 0 4.960842649 0 2.
615529406 3.910575323 5.774019415 2.762633908 4.427375988 0.789854691 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 7  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.226642623 0.728075474
 0.663844056 1.832396911 2.702594519 2.410111059 1.489164816 2.38592304 2.0
82485143 0.780438719 1.907343948 0.218600717 0.347759236 0.109809143 0 0.10
9809143 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.113318716 0.614
751566 1.334790325 9.049101939 9.046428225 21.00246906 16.08444614 9.435482
054 3.857944941 5.924512406 4.02312331 0.952034 0.113318716 0.113318716 0.2
26642623 0.113318716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 6  0 0 0 0 0 0 0 0 0 0 0 0 0 0.41243938 1.049207657 0.41243938
 6.520094722 1.049207657 1.049207657 1.049207657 0.995313268 2.819491053 2.
548372814 1.820192027 1.649844165 5.696602314 4.914613784 2.815505295 0.995
313268 0.824878759 2.815505295 0 0 0.824878759 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 2.419615478 2.098415314 3.936369962 3.318664008 2.09841
5314 1.274143084 1.274143084 5.920931212 8.415322989 8.431179377 2.33920712
9 6.812354812 3.492997628 4.466909105 2.164873508 0 0 1.274143084 0 0 0 0 0
 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 14  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.163325299 0.448791441 2.6535
14222 5.995495906 5.626162033 1.867567425 1.429022775 0.714533859 1.6079820
7 1.429022775 2.143556634 2.143556634 1.429022775 2.858045551 0.714533859 0
.714533859 0.714533859 1.077575843 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0.448791441 0.448791441 2.653514222 5.768313778 5.899185066 3.964
339372 4.125231957 4.47820692 4.4599155 6.43062496 4.904572271 5.001602185 
6.869124668 6.247351227 0.943513669 1.911610647 0.714533859 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0
2016 7 8 3 0 12  0 0 0 0 0 0 0 0 0 0 0 0.69937469 1.480994534 4.866389801 1
.03173674 3.312058187 4.65052354 5.317574648 6.644623123 10.42870014 8.2040
08706 4.216100416 3.609478772 3.119425636 2.224400559 1.385150932 0 0 0.664
433225 1.789977435 0.664724101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0.69937469 1.480994534 2.363111994 5.866530149 4.054082552 2.13044765
1 2.888833784 1.559385583 1.398458503 0.779329197 2.104050665 2.108195646 0
.664433225 0 3.233739857 1.789977435 0 0.895025077 0.895025077 0 0.77932919
7 0 0 0 0 0 0 0 0 0 0 0 0 0

# CSUN/VRG Gillnet survey (lengths converted from SL to TL)                
#                                                                          
#       
1995 7 9 0 2   46 0 0 0 0 0 0 0 0 0.006757 0 0 0 0 0.006757 0.067568 0.0743
24 0.168919 0.195946 0.054054 0.128378 0.060811 0.060811 0.027027 0.027027 
0.02027 0.027027 0.006757 0.033784 0.013514 0 0.013514 0.006757 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.006757 0 0 0 0 0 0.033784 0.114865 0.16216
2 0.067568 0.189189 0.108108 0.081081 0.060811 0.006757 0.047297 0.013514 0
.02027 0.02027 0.033784 0.006757 0.006757 0.013514 0.006757 0 0 0 0 0 0 0 0
 0 0 0 0 0
1996 7 9 0 2 66 0 0 0 0 0 0 0 0 0 0.007246 0 0 0 0.014493 0.007246 0 0.0579
71 0.086957 0.028986 0.137681 0.094203 0.108696 0.07971 0.050725 0.108696 0
.07971 0.036232 0.043478 0.021739 0 0.007246 0.014493 0 0.014493 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007246 0 0 0 0.014493 0 0.007246 0.057971 0
.050725 0.065217 0.065217 0.130435 0.144928 0.028986 0.101449 0.108696 0.06
5217 0.050725 0.043478 0.007246 0.014493 0 0.014493 0.007246 0.007246 0.007
246 0 0 0 0 0 0 0 0 0 0
1997 7 9 0 2 62 0 0 0 0 0 0 0 0 0 0 0.005917 0.005917 0.011834 0.029586 0.0
65089 0.08284 0.076923 0.065089 0.005917 0.04142 0.047337 0.065089 0.12426 
0.059172 0.112426 0.053254 0.047337 0.023669 0.035503 0.005917 0.011834 0.0
11834 0 0.005917 0 0 0 0 0 0.005917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005917 
0 0.017751 0.029586 0.017751 0.12426 0.08284 0.017751 0.053254 0.023669 0.0
53254 0.071006 0.053254 0.136095 0.112426 0.04142 0.059172 0.023669 0.02366
9 0.017751 0.005917 0.011834 0.005917 0.005917 0 0 0 0 0 0 0.005917 0 0 0 0
1998 7 9 0 2 50 0 0 0 0 0 0 0 0 0 0 0 0.0125 0 0.0125 0.0875 0.0375 0.1125 
0.125 0.0125 0.075 0.0375 0.0375 0.05 0 0.0375 0.1 0.025 0.075 0.0625 0.025
 0 0 0.025 0.0125 0.025 0 0.0125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.
0125 0.0125 0.0375 0.0875 0.1 0.0625 0.0875 0.0625 0.025 0.05 0.05 0.0125 0
.0375 0.075 0.05 0.075 0.025 0.0625 0 0 0.025 0 0.0375 0 0.0125 0 0 0 0 0 0
 0 0
1999 7 9 0 2 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0.027027 0.054054 0.081081 0.1216
22 0.067568 0.027027 0.040541 0.054054 0.040541 0.054054 0.027027 0.108108 
0.040541 0.027027 0.027027 0.054054 0 0.040541 0.054054 0.013514 0.013514 0
 0.013514 0.013514 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.027027 0.040
541 0.094595 0.121622 0.027027 0.067568 0.013514 0.054054 0.067568 0.040541
 0.040541 0.108108 0.027027 0.040541 0.027027 0.013514 0.040541 0.040541 0.
040541 0.027027 0 0.013514 0.013514 0 0.013514 0 0 0 0 0 0 0
2000 7 9 0 2 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0.051724 0.051724 0.051724 0.0689
66 0.051724 0.017241 0.034483 0.12069 0.068966 0.086207 0.017241 0.103448 0
.017241 0 0.034483 0.051724 0.017241 0.068966 0.051724 0 0.017241 0 0 0.017
241 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.051724 0.034483 0.068966 0.
068966 0 0.068966 0.017241 0.068966 0.137931 0.017241 0.086207 0.103448 0.0
17241 0 0.034483 0.051724 0.017241 0.051724 0.068966 0 0.017241 0 0 0.01724
1 0 0 0 0 0 0 0 0
2001 7 9 0 2 41 0 0 0 0 0 0 0 0 0 0 0 0 0 0.015152 0.015152 0.015152 0.0757
58 0.060606 0.090909 0.106061 0.075758 0.090909 0.045455 0.015152 0.075758 
0.060606 0.045455 0.030303 0.015152 0.030303 0.015152 0.030303 0 0 0.030303
 0.045455 0 0 0 0 0.015152 0 0 0.015152 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.01515
2 0 0.030303 0.075758 0.015152 0.136364 0.075758 0.075758 0.106061 0.015152
 0.060606 0.075758 0.030303 0.075758 0.030303 0 0.045455 0.015152 0.030303 
0 0 0.030303 0.045455 0 0 0 0 0 0 0 0.015152 0
2002 7 9 0 2 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0.024096 0.084337 0.036145 0.0361
45 0.024096 0 0.048193 0.060241 0.096386 0.156627 0.048193 0.108434 0.02409
6 0.024096 0.036145 0.072289 0.012048 0.036145 0.024096 0.024096 0.012048 0
 0 0 0.012048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.024096 0.036145 0.0
84337 0.036145 0.012048 0.012048 0.012048 0.084337 0.108434 0.036145 0.1686
75 0.108434 0.012048 0.036145 0.036145 0.036145 0.048193 0.024096 0.036145 
0.024096 0 0.012048 0 0 0.012048 0 0 0 0 0 0 0
2003 7 9 0 2 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019231 0.057692 0.038462 0.0576
92 0.115385 0.076923 0.057692 0.076923 0.038462 0.057692 0.038462 0.038462 
0.096154 0.038462 0.038462 0.057692 0.038462 0.019231 0 0 0 0 0.019231 0 0 
0.019231 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019231 0 0.096154 0.057692
 0.076923 0.115385 0 0.096154 0.076923 0 0.096154 0.038462 0.057692 0.07692
3 0.038462 0.057692 0.038462 0.019231 0 0 0 0 0.019231 0 0 0.019231 0 0 0 0
 0 0
2004 7 9 0 2 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010638 0.021277 0.010638 0.0212
77 0.021277 0.010638 0.031915 0.085106 0.031915 0.202128 0.06383 0.095745 0
.085106 0.031915 0.095745 0.074468 0.010638 0.042553 0 0.021277 0.031915 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010638 0.021277 0.010638 0.
021277 0.010638 0.021277 0.010638 0.074468 0.06383 0.074468 0.191489 0.0957
45 0.06383 0.053191 0.095745 0.021277 0.06383 0.021277 0.021277 0.021277 0.
031915 0 0 0 0 0 0 0 0 0 0 0
2005 7 9 0 2 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.05 0 0.05 0.05 0 0.05 0.05 0.
05 0.15 0 0 0.05 0.05 0 0.15 0 0.05 0.05 0.1 0.05 0 0 0.05 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.05 0 0.05 0 0.05 0.05 0.05 0.05 0.05 0.1 0 0.
05 0.05 0 0 0.15 0.05 0.05 0.1 0 0.05 0 0.05 0 0 0 0 0 0 0 0
2006 7 9 0 2 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0.053571 0.035714 0.107143 0.1428
57 0.053571 0.053571 0.053571 0.053571 0.035714 0.142857 0.017857 0.017857 
0.089286 0.017857 0.017857 0.035714 0 0 0.017857 0.017857 0 0 0.017857 0 0 
0 0 0 0.017857 0 0 0.017857 0 0 0 0 0 0 0 0 0 0 0 0 0 0.053571 0.017857 0.1
25 0.142857 0 0.107143 0.053571 0.017857 0.071429 0.053571 0.107143 0.01785
7 0.071429 0.035714 0.017857 0.017857 0.017857 0 0.017857 0.017857 0 0 0.01
7857 0 0 0 0 0 0 0 0 0.017857
2007 7 9 0 2 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.152174 0.065217 0.130435 0.10
8696 0 0.152174 0.021739 0.021739 0.043478 0 0.043478 0.021739 0.065217 0.0
43478 0.065217 0.021739 0.021739 0.021739 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0.108696 0.108696 0.130435 0.043478 0.065217 0.130435 
0.021739 0.043478 0 0.043478 0.043478 0.021739 0.065217 0.043478 0.021739 0
.065217 0.021739 0.021739 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 9 0 2 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0.021739 0.021739 0.021739 0.0652
17 0.108696 0.021739 0.108696 0.173913 0.021739 0.108696 0.021739 0.108696 
0.043478 0.043478 0.043478 0 0 0 0.043478 0.021739 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0.021739 0 0.043478 0.065217 0.043478 0.086957 0.
065217 0.108696 0.130435 0.021739 0.108696 0.108696 0.021739 0.065217 0.043
478 0 0 0 0.021739 0.043478 0 0 0 0 0 0 0 0 0 0 0 0

# Impingement survey (no index, converted from SL to TL)                   
#                                                                          
#    
-1974 7 10 0 2 3  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 
0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0.25 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
1975 7 10 0 2 12  0 0 0 0 0 0 0 0 0.103448 0.034483 0.103448 0 0.034483 0 0
 0 0 0 0.034483 0 0 0 0 0 0.034483 0.206897 0.034483 0.103448 0.103448 0.03
4483 0.068966 0 0 0.034483 0.068966 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1
03448 0.034483 0.103448 0 0.034483 0 0 0 0 0 0.034483 0 0 0 0 0 0.034483 0.
206897 0.034483 0.103448 0.103448 0.034483 0.068966 0 0 0.034483 0.068966 0
 0 0 0 0 0 0 0 0 0
1976 7 10 0 2 9  0 0 0 0 0 0 0 0 0.019231 0 0 0 0.019231 0 0.057692 0.03846
2 0.019231 0.096154 0.153846 0.076923 0.096154 0.076923 0.038462 0.057692 0
.019231 0.019231 0.038462 0.019231 0.076923 0.019231 0 0.019231 0 0.038462 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.019231 0 0 0 0.019231 0 0.057692 0.
038462 0.019231 0.096154 0.153846 0.076923 0.096154 0.076923 0.038462 0.057
692 0.019231 0.019231 0.038462 0.019231 0.076923 0.019231 0 0.019231 0 0.03
8462 0 0 0 0 0 0 0 0 0 0 0
1977 7 10 0 2 28  0 0 0 0 0 0 0 0 0 0.017391 0.026087 0 0.008696 0.043478 0
.052174 0.008696 0.034783 0.06087 0.182609 0.104348 0.130435 0.06087 0.0695
65 0.078261 0.052174 0.034783 0 0 0 0.008696 0 0.008696 0 0.008696 0 0 0 0.
008696 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.017391 0.026087 0 0.008696 0.04347
8 0.052174 0.008696 0.034783 0.06087 0.182609 0.104348 0.130435 0.06087 0.0
69565 0.078261 0.052174 0.034783 0 0 0 0.008696 0 0.008696 0 0.008696 0 0 0
 0.008696 0 0 0 0 0 0 0
1978 7 10 0 2 23  0 0 0 0 0 0 0 0 0 0 0.050633 0.063291 0.101266 0.075949 0
.025316 0.037975 0.037975 0.050633 0.075949 0.088608 0.088608 0.050633 0.08
8608 0.088608 0.050633 0 0 0 0 0 0 0 0.012658 0 0.012658 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0.050633 0.063291 0.101266 0.075949 0.025316 0.037975
 0.037975 0.050633 0.075949 0.088608 0.088608 0.050633 0.088608 0.088608 0.
050633 0 0 0 0 0 0 0 0.012658 0 0.012658 0 0 0 0 0 0 0 0 0 0
-1983 7 10 0 2 1  0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
-1990 7 10 0 2 1  0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
1992 7 10 0 2 39  0 0 0.004237 0.008475 0.012712 0.012712 0.012712 0 0 0.00
4237 0.033898 0.008475 0.063559 0.09322 0.148305 0.194915 0.084746 0.084746
 0.042373 0.042373 0.021186 0.021186 0 0.004237 0.004237 0.008475 0.012712 
0.021186 0.004237 0.025424 0.008475 0.008475 0.004237 0 0 0 0.004237 0 0 0 
0 0 0 0 0 0 0 0.004237 0.008475 0.012712 0.012712 0.012712 0 0 0.004237 0.0
33898 0.008475 0.063559 0.09322 0.148305 0.194915 0.084746 0.084746 0.04237
3 0.042373 0.021186 0.021186 0 0.004237 0.004237 0.008475 0.012712 0.021186
 0.004237 0.025424 0.008475 0.008475 0.004237 0 0 0 0.004237 0 0 0 0 0 0 0 
0
1993 7 10 0 2 52  0 0 0 0 0.028634 0.028634 0.015419 0.008811 0.011013 0.02
2026 0.03304 0.050661 0.055066 0.03304 0.03304 0.0837 0.092511 0.110132 0.1
27753 0.090308 0.048458 0.050661 0.015419 0.013216 0.008811 0 0 0.002203 0.
004405 0.006608 0.002203 0.008811 0 0.002203 0.002203 0.008811 0 0 0.002203
 0 0 0 0 0 0 0 0 0 0 0.028634 0.028634 0.015419 0.008811 0.011013 0.022026 
0.03304 0.050661 0.055066 0.03304 0.03304 0.0837 0.092511 0.110132 0.127753
 0.090308 0.048458 0.050661 0.015419 0.013216 0.008811 0 0 0.002203 0.00440
5 0.006608 0.002203 0.008811 0 0.002203 0.002203 0.008811 0 0 0.002203 0 0 
0 0 0 0
1994 7 10 0 2 68  0 0 0 0 0.001559 0.006235 0.018706 0.016368 0.016368 0.03
0398 0.061574 0.070928 0.059236 0.047545 0.069369 0.070928 0.084957 0.08106
 0.102884 0.076383 0.038971 0.028059 0.035074 0.030398 0.014809 0.01403 0.0
08574 0.007015 0 0.003118 0.000779 0 0.000779 0.000779 0.003118 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0.001559 0.006235 0.018706 0.016368 0.016368 0.030398 0.06
1574 0.070928 0.059236 0.047545 0.069369 0.070928 0.084957 0.08106 0.102884
 0.076383 0.038971 0.028059 0.035074 0.030398 0.014809 0.01403 0.008574 0.0
07015 0 0.003118 0.000779 0 0.000779 0.000779 0.003118 0 0 0 0 0 0 0 0 0 0
1995 7 10 0 2 30  0 0 0 0 0 0 0.002252 0 0 0.006757 0.006757 0.009009 0.011
261 0.011261 0.045045 0.074324 0.112613 0.121622 0.166667 0.117117 0.096847
 0.051802 0.04955 0.033784 0.013514 0.015766 0.009009 0.009009 0.006757 0.0
04505 0.006757 0.002252 0.015766 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0022
52 0 0 0.006757 0.006757 0.009009 0.011261 0.011261 0.045045 0.074324 0.112
613 0.121622 0.166667 0.117117 0.096847 0.051802 0.04955 0.033784 0.013514 
0.015766 0.009009 0.009009 0.006757 0.004505 0.006757 0.002252 0.015766 0 0
 0 0 0 0 0 0 0 0 0 0
1996 7 10 0 2 40  0 0 0 0.001397 0.00419 0.022346 0.018156 0.034916 0.01257
 0.011173 0.013966 0.005587 0.022346 0.00838 0.02095 0.030726 0.057263 0.09
0782 0.094972 0.135475 0.101955 0.087989 0.051676 0.058659 0.026536 0.01815
6 0.02514 0.022346 0.001397 0.005587 0.006983 0.001397 0.002793 0.002793 0.
001397 0 0 0 0 0 0 0 0 0 0 0 0 0 0.001397 0.00419 0.022346 0.018156 0.03491
6 0.01257 0.011173 0.013966 0.005587 0.022346 0.00838 0.02095 0.030726 0.05
7263 0.090782 0.094972 0.135475 0.101955 0.087989 0.051676 0.058659 0.02653
6 0.018156 0.02514 0.022346 0.001397 0.005587 0.006983 0.001397 0.002793 0.
002793 0.001397 0 0 0 0 0 0 0 0 0 0
1997 7 10 0 2 26  0 0 0.007463 0.003731 0 0.014925 0.014925 0.003731 0.0037
31 0.003731 0 0.011194 0 0.022388 0.014925 0.033582 0.041045 0.041045 0.123
134 0.029851 0.089552 0.048507 0.108209 0.097015 0.085821 0.044776 0.037313
 0.052239 0.041045 0.003731 0.007463 0.011194 0 0 0 0.003731 0 0 0 0 0 0 0 
0 0 0 0 0.007463 0.003731 0 0.014925 0.014925 0.003731 0.003731 0.003731 0 
0.011194 0 0.022388 0.014925 0.033582 0.041045 0.041045 0.123134 0.029851 0
.089552 0.048507 0.108209 0.097015 0.085821 0.044776 0.037313 0.052239 0.04
1045 0.003731 0.007463 0.011194 0 0 0 0.003731 0 0 0 0 0 0 0 0 0
1998 7 10 0 2 35  0 0 0 0 0.009174 0.018349 0.03211 0.036697 0 0 0.013761 0
.018349 0.068807 0.087156 0.082569 0.114679 0.12844 0.105505 0.087156 0.018
349 0.055046 0.027523 0.009174 0.004587 0.018349 0.009174 0.027523 0.009174
 0.004587 0.009174 0 0 0.004587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009174 0.
018349 0.03211 0.036697 0 0 0.013761 0.018349 0.068807 0.087156 0.082569 0.
114679 0.12844 0.105505 0.087156 0.018349 0.055046 0.027523 0.009174 0.0045
87 0.018349 0.009174 0.027523 0.009174 0.004587 0.009174 0 0 0.004587 0 0 0
 0 0 0 0 0 0 0 0 0
1999 7 10 0 2 49  0 0 0 0 0.04698 0.087248 0.040268 0.053691 0.067114 0.020
134 0.006711 0.006711 0.006711 0.060403 0.100671 0.04698 0.060403 0.060403 
0.080537 0.026846 0.033557 0.053691 0.026846 0.020134 0.006711 0.006711 0.0
13423 0.020134 0 0.026846 0.013423 0.006711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0.04698 0.087248 0.040268 0.053691 0.067114 0.020134 0.006711 0.006711 0
.006711 0.060403 0.100671 0.04698 0.060403 0.060403 0.080537 0.026846 0.033
557 0.053691 0.026846 0.020134 0.006711 0.006711 0.013423 0.020134 0 0.0268
46 0.013423 0.006711 0 0 0 0 0 0 0 0 0 0 0 0 0
2000 7 10 0 2 26  0 0 0 0.004202 0 0 0.004202 0 0 0 0.012605 0.004202 0.016
807 0.033613 0.033613 0.121849 0.105042 0.079832 0.184874 0.113445 0.037815
 0.088235 0.029412 0.046218 0.016807 0.021008 0.004202 0.012605 0.008403 0 
0 0.021008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.004202 0 0 0.004202 0 0 0 0.01
2605 0.004202 0.016807 0.033613 0.033613 0.121849 0.105042 0.079832 0.18487
4 0.113445 0.037815 0.088235 0.029412 0.046218 0.016807 0.021008 0.004202 0
.012605 0.008403 0 0 0.021008 0 0 0 0 0 0 0 0 0 0 0 0 0
2001 7 10 0 2 30  0 0 0 0 0.014184 0.035461 0.007092 0.007092 0.010638 0.01
0638 0.014184 0.014184 0.007092 0.014184 0.028369 0.074468 0.095745 0.08865
2 0.134752 0.095745 0.088652 0.067376 0.053191 0.01773 0.024823 0.024823 0.
01773 0.010638 0.010638 0.010638 0.003546 0.010638 0.003546 0 0 0 0 0 0 0 0
 0 0.003546 0 0 0 0 0 0 0.014184 0.035461 0.007092 0.007092 0.010638 0.0106
38 0.014184 0.014184 0.007092 0.014184 0.028369 0.074468 0.095745 0.088652 
0.134752 0.095745 0.088652 0.067376 0.053191 0.01773 0.024823 0.024823 0.01
773 0.010638 0.010638 0.010638 0.003546 0.010638 0.003546 0 0 0 0 0 0 0 0 0
 0.003546 0 0
2002 7 10 0 2 25  0 0 0.006452 0 0.006452 0.03871 0 0.051613 0.019355 0.006
452 0.03871 0.070968 0.019355 0.051613 0.064516 0.032258 0.064516 0.070968 
0.070968 0.070968 0.045161 0.058065 0.051613 0.032258 0.025806 0.006452 0.0
3871 0 0.019355 0.006452 0.012903 0.006452 0 0.006452 0 0 0 0.006452 0 0 0 
0 0 0 0 0 0 0.006452 0 0.006452 0.03871 0 0.051613 0.019355 0.006452 0.0387
1 0.070968 0.019355 0.051613 0.064516 0.032258 0.064516 0.070968 0.070968 0
.070968 0.045161 0.058065 0.051613 0.032258 0.025806 0.006452 0.03871 0 0.0
19355 0.006452 0.012903 0.006452 0 0.006452 0 0 0 0.006452 0 0 0 0 0 0 0
2003 7 10 0 2 25  0 0 0 0 0 0.007407 0.014815 0.014815 0.007407 0 0.007407 
0 0 0.014815 0.044444 0.037037 0.074074 0.074074 0.148148 0.074074 0.088889
 0.066667 0.044444 0.059259 0.022222 0.044444 0.014815 0.02963 0.02963 0.01
4815 0.044444 0.014815 0.007407 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.007407 
0.014815 0.014815 0.007407 0 0.007407 0 0 0.014815 0.044444 0.037037 0.0740
74 0.074074 0.148148 0.074074 0.088889 0.066667 0.044444 0.059259 0.022222 
0.044444 0.014815 0.02963 0.02963 0.014815 0.044444 0.014815 0.007407 0 0 0
 0 0 0 0 0 0 0 0 0
2004 7 10 0 2 23  0 0 0.003717 0.011152 0.007435 0.003717 0.003717 0.026022
 0.003717 0 0.003717 0 0.003717 0.003717 0.011152 0.01487 0.033457 0.048327
 0.078067 0.04461 0.063197 0.115242 0.089219 0.092937 0.092937 0.063197 0.0
37175 0.055762 0.033457 0.018587 0.007435 0.018587 0.011152 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0.003717 0.011152 0.007435 0.003717 0.003717 0.026022 0.003717
 0 0.003717 0 0.003717 0.003717 0.011152 0.01487 0.033457 0.048327 0.078067
 0.04461 0.063197 0.115242 0.089219 0.092937 0.092937 0.063197 0.037175 0.0
55762 0.033457 0.018587 0.007435 0.018587 0.011152 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 10 0 2 31  0 0 0 0 0.028205 0.082051 0.089744 0.028205 0.010256 0.03
3333 0.020513 0.025641 0.005128 0.007692 0.010256 0.007692 0.010256 0.02307
7 0.064103 0.089744 0.058974 0.079487 0.053846 0.071795 0.038462 0.053846 0
.030769 0.020513 0.007692 0.023077 0.002564 0 0 0.005128 0.010256 0 0 0 0.0
07692 0 0 0 0 0 0 0 0 0 0 0.028205 0.082051 0.089744 0.028205 0.010256 0.03
3333 0.020513 0.025641 0.005128 0.007692 0.010256 0.007692 0.010256 0.02307
7 0.064103 0.089744 0.058974 0.079487 0.053846 0.071795 0.038462 0.053846 0
.030769 0.020513 0.007692 0.023077 0.002564 0 0 0.005128 0.010256 0 0 0 0.0
07692 0 0 0 0 0 0
2006 7 10 0 2 52  0 0 0.003425 0.017123 0.027397 0.113014 0.05137 0.023973 
0.013699 0.027397 0.05137 0.061644 0.065068 0.075342 0.030822 0.020548 0.03
0822 0.054795 0.044521 0.027397 0.030822 0.027397 0.041096 0.023973 0.02054
8 0.034247 0.027397 0.006849 0.020548 0.003425 0.013699 0.003425 0.003425 0
 0 0.003425 0 0 0 0 0 0 0 0 0 0 0 0.003425 0.017123 0.027397 0.113014 0.051
37 0.023973 0.013699 0.027397 0.05137 0.061644 0.065068 0.075342 0.030822 0
.020548 0.030822 0.054795 0.044521 0.027397 0.030822 0.027397 0.041096 0.02
3973 0.020548 0.034247 0.027397 0.006849 0.020548 0.003425 0.013699 0.00342
5 0.003425 0 0 0.003425 0 0 0 0 0 0 0 0 0
2007 7 10 0 2 37  0 0 0 0.028986 0.060386 0.07971 0.043478 0.060386 0.02657
 0.016908 0.009662 0.014493 0.021739 0.038647 0.038647 0.048309 0.067633 0.
043478 0.060386 0.050725 0.038647 0.041063 0.038647 0.021739 0.038647 0.019
324 0.028986 0 0.019324 0.009662 0.004831 0.024155 0 0.002415 0.002415 0 0 
0 0 0 0 0 0 0 0 0 0 0 0.028986 0.060386 0.07971 0.043478 0.060386 0.02657 0
.016908 0.009662 0.014493 0.021739 0.038647 0.038647 0.048309 0.067633 0.04
3478 0.060386 0.050725 0.038647 0.041063 0.038647 0.021739 0.038647 0.01932
4 0.028986 0 0.019324 0.009662 0.004831 0.024155 0 0.002415 0.002415 0 0 0 
0 0 0 0 0 0 0
2008 7 10 0 2 41  0 0 0.008621 0.051724 0.094828 0.056034 0.021552 0 0.0043
1 0 0.017241 0.008621 0.043103 0.034483 0.043103 0.056034 0.081897 0.025862
 0.068966 0.086207 0.034483 0.025862 0.064655 0.034483 0.060345 0.025862 0.
008621 0.025862 0.012931 0 0.00431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.008621
 0.051724 0.094828 0.056034 0.021552 0 0.00431 0 0.017241 0.008621 0.043103
 0.034483 0.043103 0.056034 0.081897 0.025862 0.068966 0.086207 0.034483 0.
025862 0.064655 0.034483 0.060345 0.025862 0.008621 0.025862 0.012931 0 0.0
0431 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 10 0 2 34  0 0 0.004785 0 0.038278 0.124402 0.08134 0.066986 0.03827
8 0.028708 0.019139 0 0 0.014354 0.043062 0.057416 0.086124 0.07177 0.04784
7 0.023923 0.038278 0.009569 0.033493 0.019139 0.009569 0.023923 0.038278 0
.023923 0.004785 0.033493 0.004785 0.009569 0 0 0 0.004785 0 0 0 0 0 0 0 0 
0 0 0 0.004785 0 0.038278 0.124402 0.08134 0.066986 0.038278 0.028708 0.019
139 0 0 0.014354 0.043062 0.057416 0.086124 0.07177 0.047847 0.023923 0.038
278 0.009569 0.033493 0.019139 0.009569 0.023923 0.038278 0.023923 0.004785
 0.033493 0.004785 0.009569 0 0 0 0.004785 0 0 0 0 0 0 0 0 0
2010 7 10 0 2 27  0.006579 0 0 0.032895 0.085526 0.052632 0.052632 0.078947
 0.026316 0.039474 0.039474 0.059211 0.039474 0.046053 0.065789 0.013158 0.
019737 0.039474 0.065789 0 0.052632 0.032895 0.019737 0.019737 0.013158 0.0
19737 0.006579 0.013158 0.019737 0.006579 0.006579 0.006579 0.006579 0.0065
79 0.006579 0 0 0 0 0 0 0 0 0 0 0.006579 0 0 0.032895 0.085526 0.052632 0.0
52632 0.078947 0.026316 0.039474 0.039474 0.059211 0.039474 0.046053 0.0657
89 0.013158 0.019737 0.039474 0.065789 0 0.052632 0.032895 0.019737 0.01973
7 0.013158 0.019737 0.006579 0.013158 0.019737 0.006579 0.006579 0.006579 0
.006579 0.006579 0.006579 0 0 0 0 0 0 0 0 0 0
2011 7 10 0 2 24  0 0 0 0.010417 0 0 0 0.010417 0 0 0.041667 0.052083 0.010
417 0.020833 0 0.083333 0.114583 0.072917 0.072917 0.072917 0.052083 0.0312
5 0.041667 0.03125 0.03125 0.052083 0.020833 0.041667 0.03125 0.03125 0.020
833 0.010417 0.010417 0.010417 0.010417 0 0 0 0 0 0 0 0.010417 0 0 0 0 0 0.
010417 0 0 0 0.010417 0 0 0.041667 0.052083 0.010417 0.020833 0 0.083333 0.
114583 0.072917 0.072917 0.072917 0.052083 0.03125 0.041667 0.03125 0.03125
 0.052083 0.020833 0.041667 0.03125 0.03125 0.020833 0.010417 0.010417 0.01
0417 0.010417 0 0 0 0 0 0 0 0.010417 0 0
2012 7 10 0 2 12  0 0 0 0 0 0.153846 0.076923 0 0 0 0 0 0.038462 0.038462 0
 0.038462 0.038462 0.038462 0.076923 0.038462 0.038462 0.115385 0.076923 0 
0.038462 0.076923 0.038462 0 0.076923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0.153846 0.076923 0 0 0 0 0 0.038462 0.038462 0 0.038462 0.038462 0.03
8462 0.076923 0.038462 0.038462 0.115385 0.076923 0 0.038462 0.076923 0.038
462 0 0.076923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 10 0 2 14  0 0 0 0 0.121212 0.257576 0.090909 0.121212 0.045455 0.04
5455 0 0 0.015152 0.015152 0 0.015152 0.015152 0 0.030303 0 0 0.030303 0.03
0303 0.030303 0 0.030303 0.015152 0.045455 0 0.030303 0 0 0.015152 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0.121212 0.257576 0.090909 0.121212 0.045455 0.0454
55 0 0 0.015152 0.015152 0 0.015152 0.015152 0 0.030303 0 0 0.030303 0.0303
03 0.030303 0 0.030303 0.015152 0.045455 0 0.030303 0 0 0.015152 0 0 0 0 0 
0 0 0 0 0 0 0
2014 7 10 0 2 9  0 0 0.041667 0.125 0.083333 0.166667 0.083333 0 0.041667 0
 0 0 0.041667 0.041667 0 0 0.041667 0.041667 0.083333 0.041667 0 0 0 0 0 0.
041667 0.041667 0 0.041667 0.041667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.041
667 0.125 0.083333 0.166667 0.083333 0 0.041667 0 0 0 0.041667 0.041667 0 0
 0.041667 0.041667 0.083333 0.041667 0 0 0 0 0 0.041667 0.041667 0 0.041667
 0.041667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 10 0 2 10  0 0 0.035714 0.107143 0.107143 0.071429 0.035714 0 0 0 0 
0.035714 0.035714 0 0.071429 0.035714 0.035714 0.035714 0.071429 0 0.178571
 0.035714 0.035714 0.035714 0 0 0 0 0 0.035714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0.035714 0.107143 0.107143 0.071429 0.035714 0 0 0 0 0.035714 0.03571
4 0 0.071429 0.035714 0.035714 0.035714 0.071429 0 0.178571 0.035714 0.0357
14 0.035714 0 0 0 0 0 0.035714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
-2016 7 10 0 2 4  0 0 0 0 0 0.0625 0 0.0625 0 0.0625 0.0625 0.125 0 0.125 0
 0.0625 0 0.0625 0.125 0.0625 0 0 0.0625 0 0 0.0625 0 0 0 0 0.0625 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0625 0 0.0625 0 0.0625 0.0625 0.125 0 0.125
 0 0.0625 0 0.0625 0.125 0.0625 0 0 0.0625 0 0 0.0625 0 0 0 0 0.0625 0 0 0 
0 0 0 0 0 0 0 0 0 0 0

# Southern California Bight trawl survey (converted from SL to TL)         
#                                                                          
#              
# 
1994 7 11 0 2 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0.01 0 0 0 0.04 0.15 0.17 0.15 0
.16 0.09 0.06 0.07 0.03 0.02 0.01 0 0.01 0.01 0 0.02 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.01 0 0 0 0.04 0.15 0.17 0.15 0.16 0.09 0.06 0
.07 0.03 0.02 0.01 0 0.01 0.01 0 0.02 0 0 0 0 0 0 0 0 0 0 0 0
1998 7 11 0 2 36 0 0 0 0 0 0 0 0 0 0 0 0 0.01087 0 0 0.021739 0.054348 0.09
7826 0.097826 0.086957 0.076087 0.163043 0.065217 0.086957 0.032609 0.08695
7 0.021739 0.032609 0.032609 0.021739 0 0.01087 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0.01087 0 0 0.021739 0.054348 0.097826 0.097826 0.08
6957 0.076087 0.163043 0.065217 0.086957 0.032609 0.086957 0.021739 0.03260
9 0.032609 0.021739 0 0.01087 0 0 0 0 0 0 0 0 0 0 0 0 0
2003 7 11 0 2 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012739 0.050955 0.0509
55 0.10828 0.095541 0.10828 0.089172 0.076433 0.127389 0.057325 0.063694 0.
050955 0.044586 0.019108 0.012739 0.019108 0.006369 0.006369 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012739 0.050955 0.050955 0.10828 
0.095541 0.10828 0.089172 0.076433 0.127389 0.057325 0.063694 0.050955 0.04
4586 0.019108 0.012739 0.019108 0.006369 0.006369 0 0 0 0 0 0 0 0 0 0
2008 7 11 0 2 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.04 0 0.04 0.08 0.04 0.2 
0.2 0.04 0.12 0.12 0 0 0.04 0.04 0 0 0 0 0 0 0 0 0 0.04 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0.04 0 0.04 0.08 0.04 0.2 0.2 0.04 0.12 0.12 0 0 0.0
4 0.04 0 0 0 0 0 0 0 0 0 0.04 0 0 0 0 0
2013 7 11 0 2 18 0 0 0 0 0 0.018868 0.018868 0 0 0 0 0.018868 0 0 0 0 0.018
868 0 0.037736 0.075472 0.075472 0.132075 0.075472 0.150943 0.132075 0.0754
72 0.018868 0.018868 0.018868 0.037736 0 0.037736 0.018868 0 0 0 0 0 0 0.01
8868 0 0 0 0 0 0 0 0 0 0 0.018868 0.018868 0 0 0 0 0.018868 0 0 0 0 0.01886
8 0 0.037736 0.075472 0.075472 0.132075 0.075472 0.150943 0.132075 0.075472
 0.018868 0.018868 0.018868 0.037736 0 0.037736 0.018868 0 0 0 0 0 0 0.0188
68 0 0 0 0 0

-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#

22 #_N_age_bins
 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
2 #_N_ageerror_definitions
## Ageing error matrix copied from "SCOR2017\nwfscAgeingError\BASE MODEL AG
# E ERROR\SS3_format_Reader 1.csv"
0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 
17.5 18.5 19.5 20.5 21.5
0.001 0.001 0.464258 0.808131 1.06339 1.25286 1.3935 1.4979 1.5754 1.63292 
1.67562 1.70731 1.73084 1.74831 1.76127 1.77089 1.77803 1.78334 1.78727 1.7
9019 1.79236 1.79397
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.0
01 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separatel
# y are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultan
# eous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_mintailcomp_addtocomp_combM+F_CompressBins_CompError_ParmSelect
-1 1e-007 0 0 0 0 0.001 #_fleet:1_ComHL
-1 1e-007 0 0 0 0 0.001 #_fleet:2_ComNet
-1 1e-007 0 0 0 0 0.001 #_fleet:3_ComTrawl
-1 1e-007 0 0 0 0 0.001 #_fleet:4_RecPR
-1 1e-007 0 0 0 0 0.001 #_fleet:5_RecPC
-1 1e-007 0 0 0 0 0.001 #_fleet:6_RecDD
-1 1e-007 0 0 0 0 0.001 #_fleet:7_Sanitation
-1 1e-007 0 0 0 0 0.001 #_fleet:8_NWFSCTrawl
-1 1e-007 0 0 0 0 0.001 #_fleet:9_GillnetSurvey
-1 1e-007 0 0 0 0 0.001 #_fleet:10_Impingement
-1 1e-007 0 0 0 0 0.001 #_fleet:11_SCBSurvey
-1 1e-007 0 0 0 0 0.001 #_fleet:12_RecPCOBR
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as
#  joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-ma
# le)
# copied from \SCOR2017\NWFSCTrawlSurvey\AgeAndCAAL\AllCAALData.csv
#Yr  Mo Fi Ge Pa AE LL LH NS F0 F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 F13 
# F14 F15 F16 F17 F18 F19 F20 F21 M0 M1 M2 M3 M4 M5 M6 M7 M8 M9 M10 M11 M12
#  M13 M14 M15 M16 M17 M18 M19 M20 M21
2005 7 8 3 0 1 20 20 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 21 21 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 
0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 22 22 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 23 23 5 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 24 24 8 0 0 0 0 0 2 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 2 
1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 25 25 9 0 0 0 1 0 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 1 1 0 0 0 2 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 26 26 7 0 0 1 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 27 27 7 0 0 0 1 0 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 1 0 0
2005 7 8 3 0 1 28 28 7 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 1 1 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0
2005 7 8 3 0 1 29 29 4 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0
2005 7 8 3 0 1 30 30 8 0 0 0 0 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0
2005 7 8 3 0 1 31 31 2 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 32 32 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 33 33 4 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
2005 7 8 3 0 1 34 34 2 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 35 35 3 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
2005 7 8 3 0 1 36 36 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 18 18 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 19 19 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 20 20 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 21 21 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 22 22 5 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 23 23 5 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 24 24 5 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 25 25 4 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0
2006 7 8 3 0 1 26 26 5 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 0 0
2006 7 8 3 0 1 27 27 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 2 0 0 0 0 0 0 1 0 1 0 0 0 0
2006 7 8 3 0 1 28 28 5 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 1 0 1 0 0 1 0 0 0 0
2006 7 8 3 0 1 29 29 2 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
2006 7 8 3 0 1 30 30 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
2006 7 8 3 0 1 31 31 2 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 17 17 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 18 18 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 19 19 4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 20 20 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 22 22 9 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 1 1 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 23 23 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 
1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 24 24 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 2 0 0 2 1 1 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 25 25 8 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
0 1 0 2 0 2 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 26 26 7 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 1 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 27 27 7 0 0 0 0 0 0 0 0 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 1 0 1 0 0 1 1 0 0 0 0 0 0 0
2007 7 8 3 0 1 28 28 5 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 1 0 1 1 1 0 0 0 0 0 0 0
2007 7 8 3 0 1 29 29 5 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 31 31 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2007 7 8 3 0 1 32 32 4 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0
2007 7 8 3 0 1 34 34 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 15 15 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 17 17 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 19 19 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 21 21 5 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 22 22 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 23 23 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 24 24 5 0 0 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 25 25 6 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 2 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 26 26 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 27 27 8 0 0 0 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 0 1 2 0 0 0 0 0 0 0
2008 7 8 3 0 1 28 28 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0
2008 7 8 3 0 1 29 29 3 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 30 30 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
2008 7 8 3 0 1 31 31 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 33 33 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2008 7 8 3 0 1 38 38 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 15 15 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 17 17 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 18 18 5 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 19 19 8 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 20 20 11 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 1
 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 21 21 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3
 5 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 22 22 11 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 0 2 2 0 1 0 0 1 1 0 0 0 0 0 0 0 1 0
2009 7 8 3 0 1 23 23 11 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 2 2 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2009 7 8 3 0 1 24 24 16 0 0 0 4 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 1 3 0 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
2009 7 8 3 0 1 25 25 18 0 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 1 2 0 1 1 2 5 0 1 0 0 0 0 0 0 0 0 1
2009 7 8 3 0 1 26 26 6 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 2 0 0 1 0 0 1 0 0 0 0 0 0
2009 7 8 3 0 1 27 27 11 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 2 0 1 1 2 0 0 1 2 0 0 0 0 0 0
2009 7 8 3 0 1 28 28 7 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 0 0 1 0 0 2 0 0 0 0 0 0 0 0 1
2009 7 8 3 0 1 29 29 4 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0
2009 7 8 3 0 1 30 30 5 0 0 0 0 0 0 0 0 1 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 16 16 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 18 18 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 20 20 2 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 21 21 5 0 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 22 22 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 23 23 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 24 24 3 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 25 25 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 26 26 6 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 
0 0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0
2010 7 8 3 0 1 27 27 7 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 0 1 0 1 1 0 1 0 1 0 0 0 0 0 0
2010 7 8 3 0 1 28 28 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
2010 7 8 3 0 1 29 29 3 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 30 30 2 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 31 31 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 32 32 3 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 33 33 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 34 34 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010 7 8 3 0 1 37 37 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 16 16 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 17 17 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 18 18 5 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 19 19 6 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 20 20 11 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 5 1
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 21 21 10 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 1
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 22 22 9 0 0 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 23 23 6 0 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 24 24 11 0 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 1 1 2 0 0 0 0 2 0 0 0 1 0 0 0 0 0 0
2011 7 8 3 0 1 25 25 13 0 0 0 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1 0 1 0 1 0 1 0 0 3 2 0 0 0 1 0 0 0
2011 7 8 3 0 1 26 26 11 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 0 0 0 0 4 0 0 1 1 1 1 0 0 0 0 0 0 0
2011 7 8 3 0 1 27 27 12 0 0 0 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 1 1 3 0 3 0 0 0 1 0 0 0 0 0 0
2011 7 8 3 0 1 28 28 5 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0
2011 7 8 3 0 1 29 29 4 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1
2011 7 8 3 0 1 30 30 4 0 0 0 0 0 0 0 0 0 1 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2011 7 8 3 0 1 31 31 2 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
2011 7 8 3 0 1 32 32 3 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
2012 7 8 3 0 1 18 18 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 19 19 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 20 20 4 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 21 21 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 23 23 4 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 24 24 2 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 25 25 9 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 
0 0 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 26 26 4 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0
2012 7 8 3 0 1 27 27 9 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 2 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1
2012 7 8 3 0 1 28 28 6 0 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1
2012 7 8 3 0 1 29 29 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 1 0 0 1 0 2 0 2 0 0
2012 7 8 3 0 1 30 30 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0
2012 7 8 3 0 1 31 31 2 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 32 32 4 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 33 33 4 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 2 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 34 34 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 36 36 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2012 7 8 3 0 1 39 39 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 17 17 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 18 18 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 19 19 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 20 20 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 21 21 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 
3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 22 22 5 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 
0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 23 23 8 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
2 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 24 24 10 0 0 0 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 25 25 4 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 26 26 6 0 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 27 27 3 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 28 28 5 0 0 0 0 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 29 29 5 0 0 0 2 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 30 30 2 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 31 31 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 32 32 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2013 7 8 3 0 1 34 34 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 14 14 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 15 15 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 16 16 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 17 17 7 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 18 18 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 19 19 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 21 21 3 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 22 22 8 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 
1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 23 23 7 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
2 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 24 24 4 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 25 25 8 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
0 0 1 0 0 2 1 0 0 0 0 0 1 0 0 0 0 0
2014 7 8 3 0 1 26 26 6 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0
2014 7 8 3 0 1 27 27 9 0 0 0 0 0 2 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0 0 0
2014 7 8 3 0 1 28 28 4 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0
2014 7 8 3 0 1 29 29 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 30 30 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 31 31 3 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2014 7 8 3 0 1 34 34 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 15 15 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 16 16 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 17 17 6 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 18 18 5 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 19 19 10 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0
 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 20 20 5 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 21 21 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 22 22 3 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 23 23 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 24 24 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 25 25 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 26 26 4 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 27 27 3 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0
2015 7 8 3 0 1 28 28 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0
2015 7 8 3 0 1 29 29 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 14 14 5 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 15 15 6 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 16 16 6 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 17 17 5 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 18 18 5 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 19 19 6 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 20 20 8 0 0 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 21 21 8 0 0 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 22 22 7 0 0 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 
0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 23 23 8 0 0 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 24 24 4 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 25 25 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 26 26 6 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 1 0 0
2016 7 8 3 0 1 27 27 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 29 29 2 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 30 30 3 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
2016 7 8 3 0 1 31 31 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2016 7 8 3 0 1 32 32 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
#Yr Variable Value
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

