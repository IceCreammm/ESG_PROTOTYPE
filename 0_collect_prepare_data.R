rm(list = ls())
source("fun_generic.R")
source("fun_getData.R")
######################################################################
######## here we source some data for illustration purpose ###########
######################################################################

# dict.dataDict <- data.frame(nameR="pric.UK.GDP", dataSource=c("ONS"), dataId="YBEZ", type="price", 
#                             desc="UK Gross domestic product index: CVM: Seasonally adjusted; Series ID: YBEZ; Units: Index, base year = 100")


dict.data <- data.frame(nameR=c("index.EZ.GDP", "rate.EZ.Unemp", "rate.EZ.Inflation", "price.US.GDP", "rate.US.Unemp","index.US.Inflation"), 
                        dataSource=c("ECB", "ECB", "ECB", "FRED", "FRED", "FRED"), 
                        dataId=c("MNA.Q.Y.I8.W2.S1.S1.B.B1GQ._Z._Z._Z.IX.LR.N", "STS.M.I8.S.UNEH.RTT000.4.000", "ICP.M.U2.N.000000.4.ANR", 
                                 "GDPC1", "NEIM156SFRBRIC","CPIAUCSL"),
                        type=c("index", "rate", "rate", "price", "rate", "index"), 
                        freq=c("Quarterly", "Monthly", "Monthly", "Quarterly", "Monthly", "Monthly"), 
                        unit=c("100 as 2010 price", "%", "%", "Billions of Chained 2009 Dollars", "%", "100 as 1984 price"), 
                        desc=c("Gross domestic product at market prices - Euro area 19 (fixed composition) - Domestic (home or reference area), 
                                Total economy, Index, Chain linked volume (rebased), Non transformed data, Calendar and seasonally adjusted data",
                               "Euro area 19 (fixed composition) - Standardised unemployment, Rate, Total (all ages), Total (male and female); 
                               unspecified; Eurostat; Seasonally adjusted, not working day adjusted, percentage of civilian workforce",
                               "Euro area (changing composition) - HICP - Overall index, Annual rate of change, 
                               Eurostat, Neither seasonally nor working day adjusted",
                               "US. Bureau of Economic Analysis, Real Gross Domestic Product [GDPC1], retrieved from FRED, Federal Reserve Bank of St. Louis 
                               https://research.stlouisfed.org/fred2/series/GDPC1, June 11, 2016",
                               "US. Bureau of Labor Statistics, Consumer Price Index for All Urban Consumers: All Items [CPIAUCSL], retrieved from FRED, 
                               Federal Reserve Bank of St. Louis https://research.stlouisfed.org/fred2/series/CPIAUCSL, June 11, 2016.", 
                               "Federal Reserve Bank of Richmond, Hornstein-Kudlyak-Lange Non-Employment Index [NEIM156SFRBRIC], retrieved from FRED, 
                               Federal Reserve Bank of St. Louis https://research.stlouisfed.org/fred2/series/NEIM156SFRBRIC, June 12, 2016."),
                        stringsAsFactors=F)

GetData.Pdfetch(dict.data[4, ])



