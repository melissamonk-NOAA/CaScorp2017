# Preamble R info for the assessment 
# This is where you'll edit some of the specifics for your assessment

#start fresh here
rm(list=ls(all=TRUE))

# Load necessary packages

requiredPackages = c('xtable', 'ggplot2', 'reshape2', 'scales')
for(p in requiredPackages){
  library(p,character.only = TRUE)
}

# Change options  
options(xtable.comment = FALSE)  # turns off xtable comments
options(scipen=999)              # turns off scientific notation


# Load workspace image of the BASE MODEL(S) from SS_output in r4ss    
load("./r4ss/SS_output.RData")
  
# =============================================================================  
# VARIABLES TO EDIT  
# ============================================================================= 

# Species, common and scientific
spp = "California scorpionfish"
spp.sci = "Scorpaena guttata"
  
# minimum vulnerable age class
min_age = "1+"


# number of independent assessment models to include in the document
n_models = 1 


# model names; if you only have one model the label will just be "model"
mod1_label = "base model" 
#mod2_label = "Central model"  # (north of $40^\\circ 10^\\prime$ N. latitude to the OR-WA border)"
#mod3_label = "Southern model" # (south of $40^\\circ 10^\\prime$ N. latitude)"
  

# Management targets
MT   = 0.4   # management target; .4 for rockfish
MSST = 0.25  # minimum stock size threshold; 0.25 for rockfish

# -----------------------------------------------------------------------------
# Fecundity relationship
# whether spawning output is billions of eggs (fecundity relationship on) or 
# mt (no fecundity relationship)
fecund = mod1$SpawnOutputUnits  
# Fecundity text depending on the input value above (can change this line if you like)
if(fecund == 'numbers'){fecund_unit='billion eggs'} else {fecund_unit = 'mt'}

# Change these years either here or in the table code if you need to

# First and last years of model model 1
Dat_start_mod1 =  mod1$startyr          # year model 1 data starts 
Dat_end_mod1   =  mod1$endyr            # year model 1 data ends

# First and last years of model 2
if(n_models>1){
   Dat_start_mod2  = mod2$startyr      # year model 2 data starts 
   Dat_end_mod2    = mod2$endyr        # year model 2 data ends
}

# First and last years of model 3
if(n_models>2){
   Dat_start_mod3 = mod3$startyr       # year model 3 data starts 
   Dat_end_mod3   = mod3$endyr         # year model 3 data ends
}

# First and last years for the the "recent" 10 years data tables  
FirstYR = mod1$endyr - 9 #Dat_end_mod1 - 8       # first year of recent     
LastYR  = mod1$endyr     #Dat_end_mod1 + 1       # last year   

# Projection years - years where Era is "forecast"
Project_firstyr = min(mod1$timeseries$Yr[mod1$timeseries$Era=='FORE'])
Project_lastyr  = max(mod1$timeseries$Yr[mod1$timeseries$Era=='FORE'])
# -----------------------------------------------------------------------------



# =============================================================================
# Load in the plotInfoTable and parse the table as an option to use for figures


for(imod in 1:n_models) {
  if (imod==1) {
      mod_num = 'mod1'
    } else {
    if (imod==2) {
      mod_num = 'mod2'
    } else {
      mod_num = 'mod3'
    }}
  
  
  # Read in the plotInfoTable.csv containining the list of plots created from r4SS
  plotInfoTable = read.csv(paste0('./r4ss/plots_',mod_num,'/plotInfoTable_',mod_num,'_final.csv'))
  
  # Replace the @ in A@L with AAL and the - in S-R with S_R
  # And get rid of other funny characters
  plotInfoTable$category = gsub('@', 'A', plotInfoTable$category)
  plotInfoTable$category = gsub('-', '_', plotInfoTable$category)
  plotInfoTable$caption  = gsub('@', 'A', plotInfoTable$caption)
  plotInfoTable$caption  = gsub('-', '_', plotInfoTable$caption)
  plotInfoTable$caption  = gsub('<br>|<blockquote>|</i>|<i>|</blockquote>', 
                                ' ',plotInfoTable$caption)
  
  # Change factors to strings
  plotInfoTable = data.frame(lapply(plotInfoTable, as.character), stringsAsFactors=FALSE)
  
  # Pull out the different categories of plots, e.g., Bio, Sel, Timeseries, etc
  categories = as.vector(unique(plotInfoTable$category))
  
  # Create a dataframe for each category - because you're running these from a 
  # .R file, you can view all of these dataframes in the Environment
  
  for(icat in 1:length(categories)){
    dummy_df = data.frame()
    dummy_df = subset(plotInfoTable,category==categories[icat])
    dummy_df = data.frame(lapply(dummy_df, as.character), stringsAsFactors=FALSE)
    dummy_df$label = substr(dummy_df$basename,1, nchar(dummy_df$basename)-4)
    dummy_df$filepath = paste0('./r4ss/plots_',mod_num,'/',dummy_df$basename)
    assign(paste0(categories[icat],'_',mod_num),dummy_df)
  }
} # end n_models

# multiple models
multi_page_fig = c('page2', 'page3', 'page4', 'page5', 'page6', 'page7')

# Give plotInfoTable columns to use to paste in info for the 
# caption, label and file path
caption_col = 2
label_col = 10
path_col =  11



# =============================================================================
# Read in the Francis weights table from the default weighting 
Fweights = read.csv('./txt_files/suggested_tuning.csv')

