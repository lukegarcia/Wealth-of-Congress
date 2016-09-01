## Wealth of Congress research, GOV2474
## studying members of US Congress stock value by district
## Office of the Clerk, Fin Disclosure Reports
## Section 8 of the STOCK Act of 2012, requires
## members of Congress to make financial disclosure
## forms public; securities transactions are reported
## roughly every 30 days, at most 45 days
## http://www.opensecrets.org/myos/bulk.php

getwd()
setwd("/Users/lugarcia/Desktop/")

###############CLEAN DATA!!!

pfd_data <- read.csv("pfdasset.csv")

dim(pfd_data)

##tells how many objects and variables, e.g. 391212 obs. of  68 variables
str(pfd_data)
length(pfd_data)
nchar(pfd_data)

##looking at pfd_data
head(pfd_data)

colnames(pfd_data)
pfd_data[1, 3]
unique(pfd_data$X2)

pfd_data[[3]]
pfd_data[pfd_data$X3 == "N00001003",]
pfd_data$X3 == "N00001003"

##extracting specific columns
old_data <- data.frame(pfd_data$X2, pfd_data$X3, pfd_data$X4, pfd_data$X6, pfd_data$X7, pfd_data$X8, pfd_data$X30)
## verify
head(old_data)
## verify
length(old_data)
colnames(old_data)
# order by REP ID
old_data[order(pfd_data$X3), ]

##add names to columns!
colnames(old_data) <- c("Branch", "REPID", "Year", "Asset Range", "Asset Type", "Asset Name", "Income Range")

#verify column names
head(old_data)

##load CRP names to match with REPID
CRPdata <- read.csv("CRPName.csv")

head(CRPdata)

colnames(CRPdata)

##merge data ----this keeps crashing comeback later!
#m <- merge(old_data[, ("CID")], CRPdata[, ("CID")])

## To DO
## add column names, selecting only columns with "S" code for stock
## find data that identifies Rep by district and/or committee membership
## match Reps with district/committee data
## plot by RepID and value of stocks over time
## plot by RepID and value of district/committee stocks over time
## run descriptive statistics against avg rate of return, benchmarked with SPX

install.packages("dplyr")
##Explore dplyr package
##http://genomicsclass.github.io/book/pages/dplyr_tutorial.html



