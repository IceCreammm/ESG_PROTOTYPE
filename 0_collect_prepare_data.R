rm(list = ls())
source("fun_generic.R")
source("fun_getData.R")
######################################################################
######## here we source some data for illustration purpose ###########
######################################################################

dict.data <- DataP.DfFactor2Character(read.csv("dictDataImport.csv"))
tmp <- GetData.Quandl(dict.data[2, ], FALSE)
### 2DO: update the data dictinary



