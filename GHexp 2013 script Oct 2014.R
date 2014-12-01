setwd("/Users/mac/Google Drive/R Datasets/GH Exp") #home computer
#note need to change user if working on diff computer
setwd("/Users/brittany/Google Drive/R Datasets/GH Exp") #lab computer
GHexp  <- read.csv("GHexp 2013_fin.csv")

#read this http://www.rpubs.com/GGranath/25354

#additional columns- NOTE: these columns are already attached to dataset
#ghexp$SeedDm <- ghexp$MEANSEEDD #change column names
#ghexp$SeedPm <- ghexp$MEANSEEDP #change column names
#ghexp$TFCs <- ghexp$TFC*ghexp$PrpnPD #adjust fruit count for prpn seed produced
#ghexp$WatC <- ghexp$Water.Wt/ghexp$Wet.Wt #percentage of total weight
#ghexp$TRTMTL <- ghexp$SSTRTMT:ghexp$DTRTMT #column that combines treatment types


#Columns
str(GHexp)
GHexp$Tote  <- as.factor(GHexp$Tote)
class(GHexp$Tote)
GHexp$Position  <- as.factor(GHexp$Position)
class(GHexp$Position)
GHexp$Tote.Pos  <- as.factor(GHexp$Tote.Pos)
class(GHexp$Tote.Pos)
GHexp$Zone  <- as.factor(GHexp$Zone)
class(GHexp$Zone)
GHexp$Replant  <- as.factor(GHexp$Replant)
class(GHexp$Replant)
GHexp$TRTMT  <- as.factor(GHexp$TRTMT)
class(GHexp$TRTMT)
GHexp$J.Date.Em  <- as.numeric(GHexp$J.Date.Em)
class(GHexp$J.Date.Em)
GHexp$J.Date.TruL  <- as.numeric(GHexp$J.Date.TruL)
class(GHexp$J.Date.TruL)
GHexp$J.Date.FL  <- as.numeric(GHexp$J.Date.FL)
class(GHexp$J.Date.FL)
GHexp$J.Date.FR  <- as.numeric(GHexp$J.Date.FR)
class(GHexp$J.Date.FR)
GHexp$J.Date.F  <- as.numeric(GHexp$J.Date.F)
class(GHexp$J.Date.F)
GHexp$DDFLWF  <- as.numeric(GHexp$DDFLWF)
class(GHexp$DDFLWF)
GHexp$Leaves.FL  <- as.numeric(GHexp$Leaves.FL)
class(GHexp$Leaves.FL)
GHexp$Leaves.FR  <- as.numeric(GHexp$Leaves.FR)
class(GHexp$Leaves.FR)
GHexp$Buds.T <- as.numeric(GHexp$Buds.T)
class(GHexp$Buds.T)
GHexp$Flw.T <- as.numeric(GHexp$Flw.T)
class(GHexp$Flw.T)
GHexp$TFC <- as.numeric(GHexp$TFC)
class(GHexp$TFC)
GHexp$BR.T <- as.numeric(GHexp$BR.T)
class(GHexp$BR.T)
GHexp$Algae.Cov. <- as.factor(GHexp$Algae.Cov.)
class(GHexp$Algae.Cov.)
GHexp$Node.F <- as.numeric(GHexp$Node.F)
class(GHexp$Node.F)

write.table(GHexp, file = "GHexp 2013_fin.csv", sep = ",", col.names = TRUE, row.names = FALSE)

##subsets
#by replant
GHexpR0  <- subset(GHexp, Replant =="0")
GHexpR  <- subset(GHexp, subset = Replant %in% c(1, 2))

#by replant by site by zone
GHexpR0D  <- subset(GHexpR0, Site == "D")
GHexpR0D1  <- subset(GHexpR0D, Zone == "1")
GHexpR0D2  <- subset(GHexpR0D, Zone == "2")

GHexpR0M  <- subset(GHexpR0, Site == "M")
GHexpR0M1  <- subset(GHexpR0M, Zone == "1")
GHexpR0M2  <- subset(GHexpR0M, Zone == "2")

GHexpRD  <- subset(GHexpR, Site == "D")
GHexpRD1  <- subset(GHexpRD, Zone == "1")
GHexpRD2  <- subset(GHexpRD, Zone == "2")

GHexpRM  <- subset(GHexpR, Site == "M")
GHexpRM1  <- subset(GHexpRM, Zone == "1")
GHexpRM2  <- subset(GHexpRM, Zone == "2")

#by site by zone
GHexpD  <- subset(GHexp, Site == "D")
GHexpD1  <- subset(GHexpD, Zone == "1")
GHexpD2  <- subset(GHexpD, Zone == "2")

GHexpM  <- subset(GHexp, Site == "M")
GHexpM1  <- subset(GHexpM, Zone == "1")
GHexpM2  <- subset(GHexpM, Zone == "2")

write.table(GHexpR0, file = "GHexp 2013_R0.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR, file = "GHexp 2013_R.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D, file = "GHexp 2013_R0D.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D1, file = "GHexp 2013_R0D1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D2, file = "GHexp 2013_R0D2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M, file = "GHexp 2013_R0M.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M1, file = "GHexp 2013_R0M1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M2, file = "GHexp 2013_R0M2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD, file = "GHexp 2013_RD.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD1, file = "GHexp 2013_RD1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD2, file = "GHexp 2013_RD2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM, file = "GHexp 2013_RM.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM1, file = "GHexp 2013_RM1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM2, file = "GHexp 2013_RM2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD, file = "GHexp 2013_D.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD1, file = "GHexp 2013_D1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD2, file = "GHexp 2013_D2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM, file = "GHexp 2013_M.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM1, file = "GHexp 2013_M1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM2, file = "GHexp 2013_M2.csv", sep = ",", col.names = TRUE, row.names = FALSE)


#***********************************************
###FUNCTIONS
#***********************

# Set Fuction to Summarize data for plotting ggplot with standard error bars.
# Gives count, mean, standard deviation, standard error of the mean, and confidence interval (default 95%).
#   data: a data frame.
#   measurevar: the name of a column that contains the variable to be summariezed
#   groupvars: a vector containing names of columns that contain grouping variables
#   na.rm: a boolean that indicates whether to ignore NA's
#   conf.interval: the percent range of the confidence interval (default is 95%)
summarySE <- function(data=NULL, measurevar, groupvars=NULL, na.rm=TRUE,
                      conf.interval=.95, .drop=TRUE) {
  require(plyr)
  length2 <- function (x, na.rm=TRUE) {
    if (na.rm) sum(!is.na(x))
    else       length(x)
  }
  datac <- ddply(data, groupvars, .drop=.drop,
                 .fun = function(xx, col) {
                   c(N    = length2(xx[[col]], na.rm=na.rm),
                     mean = mean   (xx[[col]], na.rm=na.rm),
                     sd   = sd     (xx[[col]], na.rm=na.rm)
                   )
                 },
                 measurevar
  )
  datac <- rename(datac, c("mean" = measurevar))
  datac$se <- datac$sd / sqrt(datac$N)
  ciMult <- qt(conf.interval/2 + .5, datac$N-1)
  datac$ci <- datac$se * ciMult
  return(datac)
}


#******************************************
#TRANSFORMATIONS
#**********************************
#variables: DDFLWF, NewL.D, Cot.FR, Cot.GR, TFC, BR.T, Chl.Diff, StemD.Diff, Node.F, WatC, PrpnPD

##DDFLWF
#ALL
GHexp$logDDFLWF  <- log10(GHexp$DDFLWF+1)
GHexp$sqrtDDFLWF  <- sqrt(GHexp$DDFLWF+0.5)
GHexp$rankDDFLWF  <- rank(GHexp$DDFLWF, na.last="keep")
#R0
GHexpR0$logDDFLWF  <- log10(GHexpR0$DDFLWF+1)
GHexpR0$sqrtDDFLWF  <- sqrt(GHexpR0$DDFLWF+0.5)
GHexpR0$rankDDFLWF  <- rank(GHexpR0$DDFLWF, na.last="keep")
#R
GHexpR$logDDFLWF  <- log10(GHexpR$DDFLWF+1)
GHexpR$sqrtDDFLWF  <- sqrt(GHexpR$DDFLWF+0.5)
GHexpR$rankDDFLWF  <- rank(GHexpR$DDFLWF, na.last="keep")
#D
GHexpD$logDDFLWF  <- log10(GHexpD$DDFLWF+1)
GHexpD$sqrtDDFLWF  <- sqrt(GHexpD$DDFLWF+0.5)
GHexpD$rankDDFLWF  <- rank(GHexpD$DDFLWF, na.last="keep")
#D1
GHexpD1$logDDFLWF  <- log10(GHexpD1$DDFLWF+1)
GHexpD1$sqrtDDFLWF  <- sqrt(GHexpD1$DDFLWF+0.5)
GHexpD1$rankDDFLWF  <- rank(GHexpD1$DDFLWF, na.last="keep")
#D2
GHexpD2$logDDFLWF  <- log10(GHexpD2$DDFLWF+1)
GHexpD2$sqrtDDFLWF  <- sqrt(GHexpD2$DDFLWF+0.5)
GHexpD2$rankDDFLWF  <- rank(GHexpD2$DDFLWF, na.last="keep")
#R0D
GHexpR0D$logDDFLWF  <- log10(GHexpR0D$DDFLWF+1)
GHexpR0D$sqrtDDFLWF  <- sqrt(GHexpR0D$DDFLWF+0.5)
GHexpR0D$rankDDFLWF  <- rank(GHexpR0D$DDFLWF, na.last="keep")
#R0D1
GHexpR0D1$logDDFLWF  <- log10(GHexpR0D1$DDFLWF+1)
GHexpR0D1$sqrtDDFLWF  <- sqrt(GHexpR0D1$DDFLWF+0.5)
GHexpR0D1$rankDDFLWF  <- rank(GHexpR0D1$DDFLWF, na.last="keep")
#R0D2
GHexpR0D2$logDDFLWF  <- log10(GHexpR0D2$DDFLWF+1)
GHexpR0D2$sqrtDDFLWF  <- sqrt(GHexpR0D2$DDFLWF+0.5)
GHexpR0D2$rankDDFLWF  <- rank(GHexpR0D2$DDFLWF, na.last="keep")
#RD
GHexpRD$logDDFLWF  <- log10(GHexpRD$DDFLWF+1)
GHexpRD$sqrtDDFLWF  <- sqrt(GHexpRD$DDFLWF+0.5)
GHexpRD$rankDDFLWF  <- rank(GHexpRD$DDFLWF, na.last="keep")
#RD1
GHexpRD1$logDDFLWF  <- log10(GHexpRD1$DDFLWF+1)
GHexpRD1$sqrtDDFLWF  <- sqrt(GHexpRD1$DDFLWF+0.5)
GHexpRD1$rankDDFLWF  <- rank(GHexpRD1$DDFLWF, na.last="keep")
#RD2
GHexpRD2$logDDFLWF  <- log10(GHexpRD2$DDFLWF+1)
GHexpRD2$sqrtDDFLWF  <- sqrt(GHexpRD2$DDFLWF+0.5)
GHexpRD2$rankDDFLWF  <- rank(GHexpRD2$DDFLWF, na.last="keep")
#M
GHexpM$logDDFLWF  <- log10(GHexpM$DDFLWF+1)
GHexpM$sqrtDDFLWF  <- sqrt(GHexpM$DDFLWF+0.5)
GHexpM$rankDDFLWF  <- rank(GHexpM$DDFLWF, na.last="keep")
#M1
GHexpM1$logDDFLWF  <- log10(GHexpM1$DDFLWF+1)
GHexpM1$sqrtDDFLWF  <- sqrt(GHexpM1$DDFLWF+0.5)
GHexpM1$rankDDFLWF  <- rank(GHexpM1$DDFLWF, na.last="keep")
#M2
GHexpM2$logDDFLWF  <- log10(GHexpM2$DDFLWF+1)
GHexpM2$sqrtDDFLWF  <- sqrt(GHexpM2$DDFLWF+0.5)
GHexpM2$rankDDFLWF  <- rank(GHexpM2$DDFLWF, na.last="keep")
#R0M
GHexpR0M$logDDFLWF  <- log10(GHexpR0M$DDFLWF+1)
GHexpR0M$sqrtDDFLWF  <- sqrt(GHexpR0M$DDFLWF+0.5)
GHexpR0M$rankDDFLWF  <- rank(GHexpR0M$DDFLWF, na.last="keep")
#R0M1
GHexpR0M1$logDDFLWF  <- log10(GHexpR0M1$DDFLWF+1)
GHexpR0M1$sqrtDDFLWF  <- sqrt(GHexpR0M1$DDFLWF+0.5)
GHexpR0M1$rankDDFLWF  <- rank(GHexpR0M1$DDFLWF, na.last="keep")
#R0M2
GHexpR0M2$logDDFLWF  <- log10(GHexpR0M2$DDFLWF+1)
GHexpR0M2$sqrtDDFLWF  <- sqrt(GHexpR0M2$DDFLWF+0.5)
GHexpR0M2$rankDDFLWF  <- rank(GHexpR0M2$DDFLWF, na.last="keep")
#RM
GHexpRM$logDDFLWF  <- log10(GHexpRM$DDFLWF+1)
GHexpRM$sqrtDDFLWF  <- sqrt(GHexpRM$DDFLWF+0.5)
GHexpRM$rankDDFLWF  <- rank(GHexpRM$DDFLWF, na.last="keep")
#RM1
GHexpRM1$logDDFLWF  <- log10(GHexpRM1$DDFLWF+1)
GHexpRM1$sqrtDDFLWF  <- sqrt(GHexpRM1$DDFLWF+0.5)
GHexpRM1$rankDDFLWF  <- rank(GHexpRM1$DDFLWF, na.last="keep")
#RM2
GHexpRM2$logDDFLWF  <- log10(GHexpRM2$DDFLWF+1)
GHexpRM2$sqrtDDFLWF  <- sqrt(GHexpRM2$DDFLWF+0.5)
GHexpRM2$rankDDFLWF  <- rank(GHexpRM2$DDFLWF, na.last="keep")

##NewL.D
#ALL
GHexp$logNewL.D  <- log10(GHexp$NewL.D+1)
GHexp$sqrtNewL.D  <- sqrt(GHexp$NewL.D+0.5)
GHexp$rankNewL.D  <- rank(GHexp$NewL.D, na.last="keep")
#R0
GHexpR0$logNewL.D  <- log10(GHexpR0$NewL.D+1)
GHexpR0$sqrtNewL.D  <- sqrt(GHexpR0$NewL.D+0.5)
GHexpR0$rankNewL.D  <- rank(GHexpR0$NewL.D, na.last="keep")
#R
GHexpR$logNewL.D  <- log10(GHexpR$NewL.D+1)
GHexpR$sqrtNewL.D  <- sqrt(GHexpR$NewL.D+0.5)
GHexpR$rankNewL.D  <- rank(GHexpR$NewL.D, na.last="keep")
#D
GHexpD$logNewL.D  <- log10(GHexpD$NewL.D+1)
GHexpD$sqrtNewL.D  <- sqrt(GHexpD$NewL.D+0.5)
GHexpD$rankNewL.D  <- rank(GHexpD$NewL.D, na.last="keep")
#D1
GHexpD1$logNewL.D  <- log10(GHexpD1$NewL.D+1)
GHexpD1$sqrtNewL.D  <- sqrt(GHexpD1$NewL.D+0.5)
GHexpD1$rankNewL.D  <- rank(GHexpD1$NewL.D, na.last="keep")
#D2
GHexpD2$logNewL.D  <- log10(GHexpD2$NewL.D+1)
GHexpD2$sqrtNewL.D  <- sqrt(GHexpD2$NewL.D+0.5)
GHexpD2$rankNewL.D  <- rank(GHexpD2$NewL.D, na.last="keep")
#R0D
GHexpR0D$logNewL.D  <- log10(GHexpR0D$NewL.D+1)
GHexpR0D$sqrtNewL.D  <- sqrt(GHexpR0D$NewL.D+0.5)
GHexpR0D$rankNewL.D  <- rank(GHexpR0D$NewL.D, na.last="keep")
#R0D1
GHexpR0D1$logNewL.D  <- log10(GHexpR0D1$NewL.D+1)
GHexpR0D1$sqrtNewL.D  <- sqrt(GHexpR0D1$NewL.D+0.5)
GHexpR0D1$rankNewL.D  <- rank(GHexpR0D1$NewL.D, na.last="keep")
#R0D2
GHexpR0D2$logNewL.D  <- log10(GHexpR0D2$NewL.D+1)
GHexpR0D2$sqrtNewL.D  <- sqrt(GHexpR0D2$NewL.D+0.5)
GHexpR0D2$rankNewL.D  <- rank(GHexpR0D2$NewL.D, na.last="keep")
#RD
GHexpRD$logNewL.D  <- log10(GHexpRD$NewL.D+1)
GHexpRD$sqrtNewL.D  <- sqrt(GHexpRD$NewL.D+0.5)
GHexpRD$rankNewL.D  <- rank(GHexpRD$NewL.D, na.last="keep")
#RD1
GHexpRD1$logNewL.D  <- log10(GHexpRD1$NewL.D+1)
GHexpRD1$sqrtNewL.D  <- sqrt(GHexpRD1$NewL.D+0.5)
GHexpRD1$rankNewL.D  <- rank(GHexpRD1$NewL.D, na.last="keep")
#RD2
GHexpRD2$logNewL.D  <- log10(GHexpRD2$NewL.D+1)
GHexpRD2$sqrtNewL.D  <- sqrt(GHexpRD2$NewL.D+0.5)
GHexpRD2$rankNewL.D  <- rank(GHexpRD2$NewL.D, na.last="keep")
#M
GHexpM$logNewL.D  <- log10(GHexpM$NewL.D+1)
GHexpM$sqrtNewL.D  <- sqrt(GHexpM$NewL.D+0.5)
GHexpM$rankNewL.D  <- rank(GHexpM$NewL.D, na.last="keep")
#M1
GHexpM1$logNewL.D  <- log10(GHexpM1$NewL.D+1)
GHexpM1$sqrtNewL.D  <- sqrt(GHexpM1$NewL.D+0.5)
GHexpM1$rankNewL.D  <- rank(GHexpM1$NewL.D, na.last="keep")
#M2
GHexpM2$logNewL.D  <- log10(GHexpM2$NewL.D+1)
GHexpM2$sqrtNewL.D  <- sqrt(GHexpM2$NewL.D+0.5)
GHexpM2$rankNewL.D  <- rank(GHexpM2$NewL.D, na.last="keep")
#R0M
GHexpR0M$logNewL.D  <- log10(GHexpR0M$NewL.D+1)
GHexpR0M$sqrtNewL.D  <- sqrt(GHexpR0M$NewL.D+0.5)
GHexpR0M$rankNewL.D  <- rank(GHexpR0M$NewL.D, na.last="keep")
#R0M1
GHexpR0M1$logNewL.D  <- log10(GHexpR0M1$NewL.D+1)
GHexpR0M1$sqrtNewL.D  <- sqrt(GHexpR0M1$NewL.D+0.5)
GHexpR0M1$rankNewL.D  <- rank(GHexpR0M1$NewL.D, na.last="keep")
#R0M2
GHexpR0M2$logNewL.D  <- log10(GHexpR0M2$NewL.D+1)
GHexpR0M2$sqrtNewL.D  <- sqrt(GHexpR0M2$NewL.D+0.5)
GHexpR0M2$rankNewL.D  <- rank(GHexpR0M2$NewL.D, na.last="keep")
#RM
GHexpRM$logNewL.D  <- log10(GHexpRM$NewL.D+1)
GHexpRM$sqrtNewL.D  <- sqrt(GHexpRM$NewL.D+0.5)
GHexpRM$rankNewL.D  <- rank(GHexpRM$NewL.D, na.last="keep")
#RM1
GHexpRM1$logNewL.D  <- log10(GHexpRM1$NewL.D+1)
GHexpRM1$sqrtNewL.D  <- sqrt(GHexpRM1$NewL.D+0.5)
GHexpRM1$rankNewL.D  <- rank(GHexpRM1$NewL.D, na.last="keep")
#RM2
GHexpRM2$logNewL.D  <- log10(GHexpRM2$NewL.D+1)
GHexpRM2$sqrtNewL.D  <- sqrt(GHexpRM2$NewL.D+0.5)
GHexpRM2$rankNewL.D  <- rank(GHexpRM2$NewL.D, na.last="keep")

##Cot.FR
#ALL
GHexp$logCot.FR  <- log10(GHexp$Cot.FR+1)
GHexp$sqrtCot.FR  <- sqrt(GHexp$Cot.FR+0.5)
GHexp$rankCot.FR <- rank(GHexp$Cot.FR, na.last="keep")
#R0
GHexpR0$logCot.FR  <- log10(GHexpR0$Cot.FR+1)
GHexpR0$sqrtCot.FR  <- sqrt(GHexpR0$Cot.FR+0.5)
GHexpR0$rankCot.FR  <- rank(GHexpR0$Cot.FR, na.last="keep")
#R
GHexpR$logCot.FR  <- log10(GHexpR$Cot.FR+1)
GHexpR$sqrtCot.FR  <- sqrt(GHexpR$Cot.FR+0.5)
GHexpR$rankCot.FR  <- rank(GHexpR$Cot.FR, na.last="keep")
#D
GHexpD$logCot.FR  <- log10(GHexpD$Cot.FR+1)
GHexpD$sqrtCot.FR  <- sqrt(GHexpD$Cot.FR+0.5)
GHexpD$rankCot.FR  <- rank(GHexpD$Cot.FR, na.last="keep")
#D1
GHexpD1$logCot.FR  <- log10(GHexpD1$Cot.FR+1)
GHexpD1$sqrtCot.FR  <- sqrt(GHexpD1$Cot.FR+0.5)
GHexpD1$rankCot.FR  <- rank(GHexpD1$Cot.FR, na.last="keep")
#D2
GHexpD2$logCot.FR  <- log10(GHexpD2$Cot.FR+1)
GHexpD2$sqrtCot.FR  <- sqrt(GHexpD2$Cot.FR+0.5)
GHexpD2$rankCot.FR  <- rank(GHexpD2$Cot.FR, na.last="keep")
#R0D
GHexpR0D$logCot.FR  <- log10(GHexpR0D$Cot.FR+1)
GHexpR0D$sqrtCot.FR  <- sqrt(GHexpR0D$Cot.FR+0.5)
GHexpR0D$rankCot.FR  <- rank(GHexpR0D$Cot.FR, na.last="keep")
#R0D1
GHexpR0D1$logCot.FR  <- log10(GHexpR0D1$Cot.FR+1)
GHexpR0D1$sqrtCot.FR  <- sqrt(GHexpR0D1$Cot.FR+0.5)
GHexpR0D1$rankCot.FR  <- rank(GHexpR0D1$Cot.FR, na.last="keep")
#R0D2
GHexpR0D2$logCot.FR  <- log10(GHexpR0D2$Cot.FR+1)
GHexpR0D2$sqrtCot.FR  <- sqrt(GHexpR0D2$Cot.FR+0.5)
GHexpR0D2$rankCot.FR  <- rank(GHexpR0D2$Cot.FR, na.last="keep")
#RD
GHexpRD$logCot.FR  <- log10(GHexpRD$Cot.FR+1)
GHexpRD$sqrtCot.FR  <- sqrt(GHexpRD$Cot.FR+0.5)
GHexpRD$rankCot.FR  <- rank(GHexpRD$Cot.FR, na.last="keep")
#RD1
GHexpRD1$logCot.FR  <- log10(GHexpRD1$Cot.FR+1)
GHexpRD1$sqrtCot.FR  <- sqrt(GHexpRD1$Cot.FR+0.5)
GHexpRD1$rankCot.FR  <- rank(GHexpRD1$Cot.FR, na.last="keep")
#RD2
GHexpRD2$logCot.FR  <- log10(GHexpRD2$Cot.FR+1)
GHexpRD2$sqrtCot.FR  <- sqrt(GHexpRD2$Cot.FR+0.5)
GHexpRD2$rankCot.FR  <- rank(GHexpRD2$Cot.FR, na.last="keep")
#M
GHexpM$logCot.FR  <- log10(GHexpM$Cot.FR+1)
GHexpM$sqrtCot.FR  <- sqrt(GHexpM$Cot.FR+0.5)
GHexpM$rankCot.FR  <- rank(GHexpM$Cot.FR, na.last="keep")
#M1
GHexpM1$logCot.FR  <- log10(GHexpM1$Cot.FR+1)
GHexpM1$sqrtCot.FR  <- sqrt(GHexpM1$Cot.FR+0.5)
GHexpM1$rankCot.FR  <- rank(GHexpM1$Cot.FR, na.last="keep")
#M2
GHexpM2$logCot.FR  <- log10(GHexpM2$Cot.FR+1)
GHexpM2$sqrtCot.FR  <- sqrt(GHexpM2$Cot.FR+0.5)
GHexpM2$rankCot.FR  <- rank(GHexpM2$Cot.FR, na.last="keep")
#R0M
GHexpR0M$logCot.FR <- log10(GHexpR0M$Cot.FR+1)
GHexpR0M$sqrtCot.FR  <- sqrt(GHexpR0M$Cot.FR+0.5)
GHexpR0M$rankCot.FR  <- rank(GHexpR0M$Cot.FR, na.last="keep")
#R0M1
GHexpR0M1$logCot.FR  <- log10(GHexpR0M1$Cot.FR+1)
GHexpR0M1$sqrtCot.FR  <- sqrt(GHexpR0M1$Cot.FR+0.5)
GHexpR0M1$rankCot.FR  <- rank(GHexpR0M1$Cot.FR, na.last="keep")
#R0M2
GHexpR0M2$logCot.FR  <- log10(GHexpR0M2$Cot.FR+1)
GHexpR0M2$sqrtCot.FR  <- sqrt(GHexpR0M2$Cot.FR+0.5)
GHexpR0M2$rankCot.FR  <- rank(GHexpR0M2$Cot.FR, na.last="keep")
#RM
GHexpRM$logCot.FR  <- log10(GHexpRM$Cot.FR+1)
GHexpRM$sqrtCot.FR  <- sqrt(GHexpRM$Cot.FR+0.5)
GHexpRM$rankCot.FR  <- rank(GHexpRM$Cot.FR, na.last="keep")
#RM1
GHexpRM1$logCot.FR  <- log10(GHexpRM1$Cot.FR+1)
GHexpRM1$sqrtCot.FR  <- sqrt(GHexpRM1$Cot.FR+0.5)
GHexpRM1$rankCot.FR  <- rank(GHexpRM1$Cot.FR, na.last="keep")
#RM2
GHexpRM2$logCot.FR  <- log10(GHexpRM2$Cot.FR+1)
GHexpRM2$sqrtCot.FR  <- sqrt(GHexpRM2$Cot.FR+0.5)
GHexpRM2$rankCot.FR  <- rank(GHexpRM2$Cot.FR, na.last="keep")

##Cot.GR
#ALL
GHexp$logCot.GR  <- log10(GHexp$Cot.GR+1)
GHexp$sqrtCot.GR  <- sqrt(GHexp$Cot.GR+0.5)
GHexp$rankCot.GR <- rank(GHexp$Cot.GR, na.last="keep")
#R0
GHexpR0$logCot.GR  <- log10(GHexpR0$Cot.GR+1)
GHexpR0$sqrtCot.GR  <- sqrt(GHexpR0$Cot.GR+0.5)
GHexpR0$rankCot.GR  <- rank(GHexpR0$Cot.GR, na.last="keep")
#R
GHexpR$logCot.GR  <- log10(GHexpR$Cot.GR+1)
GHexpR$sqrtCot.GR  <- sqrt(GHexpR$Cot.GR+0.5)
GHexpR$rankCot.GR  <- rank(GHexpR$Cot.GR, na.last="keep")
#D
GHexpD$logCot.GR  <- log10(GHexpD$Cot.GR+1)
GHexpD$sqrtCot.GR  <- sqrt(GHexpD$Cot.GR+0.5)
GHexpD$rankCot.GR  <- rank(GHexpD$Cot.GR, na.last="keep")
#D1
GHexpD1$logCot.GR  <- log10(GHexpD1$Cot.GR+1)
GHexpD1$sqrtCot.GR  <- sqrt(GHexpD1$Cot.GR+0.5)
GHexpD1$rankCot.GR  <- rank(GHexpD1$Cot.GR, na.last="keep")
#D2
GHexpD2$logCot.GR  <- log10(GHexpD2$Cot.GR+1)
GHexpD2$sqrtCot.GR  <- sqrt(GHexpD2$Cot.GR+0.5)
GHexpD2$rankCot.GR  <- rank(GHexpD2$Cot.GR, na.last="keep")
#R0D
GHexpR0D$logCot.GR  <- log10(GHexpR0D$Cot.GR+1)
GHexpR0D$sqrtCot.GR  <- sqrt(GHexpR0D$Cot.GR+0.5)
GHexpR0D$rankCot.GR  <- rank(GHexpR0D$Cot.GR, na.last="keep")
#R0D1
GHexpR0D1$logCot.GR  <- log10(GHexpR0D1$Cot.GR+1)
GHexpR0D1$sqrtCot.GR  <- sqrt(GHexpR0D1$Cot.GR+0.5)
GHexpR0D1$rankCot.GR  <- rank(GHexpR0D1$Cot.GR, na.last="keep")
#R0D2
GHexpR0D2$logCot.GR  <- log10(GHexpR0D2$Cot.GR+1)
GHexpR0D2$sqrtCot.GR  <- sqrt(GHexpR0D2$Cot.GR+0.5)
GHexpR0D2$rankCot.GR  <- rank(GHexpR0D2$Cot.GR, na.last="keep")
#RD
GHexpRD$logCot.GR <- log10(GHexpRD$Cot.GR+1)
GHexpRD$sqrtCot.GR  <- sqrt(GHexpRD$Cot.GR+0.5)
GHexpRD$rankCot.GR  <- rank(GHexpRD$Cot.GR, na.last="keep")
#RD1
GHexpRD1$logCot.GR  <- log10(GHexpRD1$Cot.GR+1)
GHexpRD1$sqrtCot.GR  <- sqrt(GHexpRD1$Cot.GR+0.5)
GHexpRD1$rankCot.GR <- rank(GHexpRD1$Cot.GR, na.last="keep")
#RD2
GHexpRD2$logCot.GR  <- log10(GHexpRD2$Cot.GR+1)
GHexpRD2$sqrtCot.GR <- sqrt(GHexpRD2$Cot.GR+0.5)
GHexpRD2$rankCot.GR <- rank(GHexpRD2$Cot.GR, na.last="keep")
#M
GHexpM$logCot.GR  <- log10(GHexpM$Cot.GR+1)
GHexpM$sqrtCot.GR  <- sqrt(GHexpM$Cot.GR+0.5)
GHexpM$rankCot.GR  <- rank(GHexpM$Cot.GR, na.last="keep")
#M1
GHexpM1$logCot.GR  <- log10(GHexpM1$Cot.GR+1)
GHexpM1$sqrtCot.GR  <- sqrt(GHexpM1$Cot.GR+0.5)
GHexpM1$rankCot.GR  <- rank(GHexpM1$Cot.GR, na.last="keep")
#M2
GHexpM2$logCot.GR  <- log10(GHexpM2$Cot.GR+1)
GHexpM2$sqrtCot.GR <- sqrt(GHexpM2$Cot.GR+0.5)
GHexpM2$rankCot.GR  <- rank(GHexpM2$Cot.GR, na.last="keep")
#R0M
GHexpR0M$logCot.GR <- log10(GHexpR0M$Cot.GR+1)
GHexpR0M$sqrtCot.GR  <- sqrt(GHexpR0M$Cot.GR+0.5)
GHexpR0M$rankCot.GR  <- rank(GHexpR0M$Cot.GR, na.last="keep")
#R0M1
GHexpR0M1$logCot.GR  <- log10(GHexpR0M1$Cot.GR+1)
GHexpR0M1$sqrtCot.GR  <- sqrt(GHexpR0M1$Cot.GR+0.5)
GHexpR0M1$rankCot.GR  <- rank(GHexpR0M1$Cot.GR, na.last="keep")
#R0M2
GHexpR0M2$logCot.GR  <- log10(GHexpR0M2$Cot.GR+1)
GHexpR0M2$sqrtCot.GR  <- sqrt(GHexpR0M2$Cot.GR+0.5)
GHexpR0M2$rankCot.GR <- rank(GHexpR0M2$Cot.GR, na.last="keep")
#RM
GHexpRM$logCot.GR  <- log10(GHexpRM$Cot.GR+1)
GHexpRM$sqrtCot.GR  <- sqrt(GHexpRM$Cot.GR+0.5)
GHexpRM$rankCot.GR <- rank(GHexpRM$Cot.GR, na.last="keep")
#RM1
GHexpRM1$logCot.GR  <- log10(GHexpRM1$Cot.GR+1)
GHexpRM1$sqrtCot.GR  <- sqrt(GHexpRM1$Cot.GR+0.5)
GHexpRM1$rankCot.GR  <- rank(GHexpRM1$Cot.GR, na.last="keep")
#RM2
GHexpRM2$logCot.GR  <- log10(GHexpRM2$Cot.GR+1)
GHexpRM2$sqrtCot.GR  <- sqrt(GHexpRM2$Cot.GR+0.5)
GHexpRM2$rankCot.GR <- rank(GHexpRM2$Cot.GR, na.last="keep")

##TFC
#ALL
GHexp$logTFC  <- log10(GHexp$TFC+1)
GHexp$sqrtTFC  <- sqrt(GHexp$TFC+0.5)
GHexp$rankTFC  <- rank(GHexp$TFC, na.last="keep")
#R0
GHexpR0$logTFC  <- log10(GHexpR0$TFC+1)
GHexpR0$sqrtTFC  <- sqrt(GHexpR0$TFC+0.5)
GHexpR0$rankTFC  <- rank(GHexpR0$TFC, na.last="keep")
#R
GHexpR$logTFC  <- log10(GHexpR$TFC+1)
GHexpR$sqrtTFC  <- sqrt(GHexpR$TFC+0.5)
GHexpR$rankTFC  <- rank(GHexpR$TFC, na.last="keep")
#D
GHexpD$logTFC  <- log10(GHexpD$TFC+1)
GHexpD$sqrtTFC  <- sqrt(GHexpD$TFC+0.5)
GHexpD$rankTFC  <- rank(GHexpD$TFC, na.last="keep")
#D1
GHexpD1$logTFC  <- log10(GHexpD1$TFC+1)
GHexpD1$sqrtTFC  <- sqrt(GHexpD1$TFC+0.5)
GHexpD1$rankTFC  <- rank(GHexpD1$TFC, na.last="keep")
#D2
GHexpD2$logTFC  <- log10(GHexpD2$TFC+1)
GHexpD2$sqrtTFC  <- sqrt(GHexpD2$TFC+0.5)
GHexpD2$rankTFC  <- rank(GHexpD2$TFC, na.last="keep")
#R0D
GHexpR0D$logTFC  <- log10(GHexpR0D$TFC+1)
GHexpR0D$sqrtTFC  <- sqrt(GHexpR0D$TFC+0.5)
GHexpR0D$rankTFC  <- rank(GHexpR0D$TFC, na.last="keep")
#R0D1
GHexpR0D1$logTFC  <- log10(GHexpR0D1$TFC+1)
GHexpR0D1$sqrtTFC  <- sqrt(GHexpR0D1$TFC+0.5)
GHexpR0D1$rankTFC  <- rank(GHexpR0D1$TFC, na.last="keep")
#R0D2
GHexpR0D2$logTFC  <- log10(GHexpR0D2$TFC+1)
GHexpR0D2$sqrtTFC  <- sqrt(GHexpR0D2$TFC+0.5)
GHexpR0D2$rankTFC  <- rank(GHexpR0D2$TFC, na.last="keep")
#RD
GHexpRD$logTFC  <- log10(GHexpRD$TFC+1)
GHexpRD$sqrtTFC  <- sqrt(GHexpRD$TFC+0.5)
GHexpRD$rankTFC  <- rank(GHexpRD$TFC, na.last="keep")
#RD1
GHexpRD1$logTFC  <- log10(GHexpRD1$TFC+1)
GHexpRD1$sqrtTFC  <- sqrt(GHexpRD1$TFC+0.5)
GHexpRD1$rankTFC  <- rank(GHexpRD1$TFC, na.last="keep")
#RD2
GHexpRD2$logTFC  <- log10(GHexpRD2$TFC+1)
GHexpRD2$sqrtTFC  <- sqrt(GHexpRD2$TFC+0.5)
GHexpRD2$rankTFC  <- rank(GHexpRD2$TFC, na.last="keep")
#M
GHexpM$logTFC  <- log10(GHexpM$TFC+1)
GHexpM$sqrtTFC  <- sqrt(GHexpM$TFC+0.5)
GHexpM$rankTFC  <- rank(GHexpM$TFC, na.last="keep")
#M1
GHexpM1$logTFC  <- log10(GHexpM1$TFC+1)
GHexpM1$sqrtTFC  <- sqrt(GHexpM1$TFC+0.5)
GHexpM1$rankTFC  <- rank(GHexpM1$TFC, na.last="keep")
#M2
GHexpM2$logTFC  <- log10(GHexpM2$TFC+1)
GHexpM2$sqrtTFC  <- sqrt(GHexpM2$TFC+0.5)
GHexpM2$rankTFC  <- rank(GHexpM2$TFC, na.last="keep")
#R0M
GHexpR0M$logTFC  <- log10(GHexpR0M$TFC+1)
GHexpR0M$sqrtTFC  <- sqrt(GHexpR0M$TFC+0.5)
GHexpR0M$rankTFC  <- rank(GHexpR0M$TFC, na.last="keep")
#R0M1
GHexpR0M1$logTFC  <- log10(GHexpR0M1$TFC+1)
GHexpR0M1$sqrtTFC  <- sqrt(GHexpR0M1$TFC+0.5)
GHexpR0M1$rankTFC  <- rank(GHexpR0M1$TFC, na.last="keep")
#R0M2
GHexpR0M2$logTFC  <- log10(GHexpR0M2$TFC+1)
GHexpR0M2$sqrtTFC  <- sqrt(GHexpR0M2$TFC+0.5)
GHexpR0M2$rankTFC  <- rank(GHexpR0M2$TFC, na.last="keep")
#RM
GHexpRM$logTFC  <- log10(GHexpRM$TFC+1)
GHexpRM$sqrtTFC  <- sqrt(GHexpRM$TFC+0.5)
GHexpRM$rankTFC  <- rank(GHexpRM$TFC, na.last="keep")
#RM1
GHexpRM1$logTFC  <- log10(GHexpRM1$TFC+1)
GHexpRM1$sqrtTFC  <- sqrt(GHexpRM1$TFC+0.5)
GHexpRM1$rankTFC  <- rank(GHexpRM1$TFC, na.last="keep")
#RM2
GHexpRM2$logTFC  <- log10(GHexpRM2$TFC+1)
GHexpRM2$sqrtTFC  <- sqrt(GHexpRM2$TFC+0.5)
GHexpRM2$rankTFC  <- rank(GHexpRM2$TFC, na.last="keep")

##BR.T
#ALL
GHexp$logBR.T  <- log10(GHexp$BR.T+1)
GHexp$sqrtBR.T  <- sqrt(GHexp$BR.T+0.5)
GHexp$rankBR.T  <- rank(GHexp$BR.T, na.last="keep")
#R0
GHexpR0$logBR.T  <- log10(GHexpR0$BR.T+1)
GHexpR0$sqrtBR.T  <- sqrt(GHexpR0$BR.T+0.5)
GHexpR0$rankBR.T  <- rank(GHexpR0$BR.T, na.last="keep")
#R
GHexpR$logBR.T  <- log10(GHexpR$BR.T+1)
GHexpR$sqrtBR.T <- sqrt(GHexpR$BR.T+0.5)
GHexpR$rankBR.T <- rank(GHexpR$BR.T, na.last="keep")
#D
GHexpD$logBR.T  <- log10(GHexpD$BR.T+1)
GHexpD$sqrtBR.T <- sqrt(GHexpD$BR.T+0.5)
GHexpD$rankBR.T <- rank(GHexpD$BR.T, na.last="keep")
#D1
GHexpD1$logBR.T  <- log10(GHexpD1$BR.T+1)
GHexpD1$sqrtBR.T  <- sqrt(GHexpD1$BR.T+0.5)
GHexpD1$rankBR.T  <- rank(GHexpD1$BR.T, na.last="keep")
#D2
GHexpD2$logBR.T  <- log10(GHexpD2$BR.T+1)
GHexpD2$sqrtBR.T  <- sqrt(GHexpD2$BR.T+0.5)
GHexpD2$rankBR.T  <- rank(GHexpD2$BR.T, na.last="keep")
#R0D
GHexpR0D$logBR.T  <- log10(GHexpR0D$BR.T+1)
GHexpR0D$sqrtBR.T  <- sqrt(GHexpR0D$BR.T+0.5)
GHexpR0D$rankBR.T <- rank(GHexpR0D$BR.T, na.last="keep")
#R0D1
GHexpR0D1$logBR.T  <- log10(GHexpR0D1$BR.T+1)
GHexpR0D1$sqrtBR.T  <- sqrt(GHexpR0D1$BR.T+0.5)
GHexpR0D1$rankBR.T  <- rank(GHexpR0D1$BR.T, na.last="keep")
#R0D2
GHexpR0D2$logBR.T  <- log10(GHexpR0D2$BR.T+1)
GHexpR0D2$sqrtBR.T  <- sqrt(GHexpR0D2$BR.T+0.5)
GHexpR0D2$rankBR.T  <- rank(GHexpR0D2$BR.T, na.last="keep")
#RD
GHexpRD$logBR.T  <- log10(GHexpRD$BR.T+1)
GHexpRD$sqrtBR.T  <- sqrt(GHexpRD$BR.T+0.5)
GHexpRD$rankBR.T  <- rank(GHexpRD$BR.T, na.last="keep")
#RD1
GHexpRD1$logBR.T  <- log10(GHexpRD1$BR.T+1)
GHexpRD1$sqrtBR.T  <- sqrt(GHexpRD1$BR.T+0.5)
GHexpRD1$rankBR.T  <- rank(GHexpRD1$BR.T, na.last="keep")
#RD2
GHexpRD2$logBR.T  <- log10(GHexpRD2$BR.T+1)
GHexpRD2$sqrtBR.T  <- sqrt(GHexpRD2$BR.T+0.5)
GHexpRD2$rankBR.T <- rank(GHexpRD2$BR.T, na.last="keep")
#M
GHexpM$logBR.T <- log10(GHexpM$BR.T+1)
GHexpM$sqrtBR.T  <- sqrt(GHexpM$BR.T+0.5)
GHexpM$rankBR.T  <- rank(GHexpM$BR.T, na.last="keep")
#M1
GHexpM1$logBR.T  <- log10(GHexpM1$BR.T+1)
GHexpM1$sqrtBR.T  <- sqrt(GHexpM1$BR.T+0.5)
GHexpM1$rankBR.T  <- rank(GHexpM1$BR.T, na.last="keep")
#M2
GHexpM2$logBR.T  <- log10(GHexpM2$BR.T+1)
GHexpM2$sqrtBR.T  <- sqrt(GHexpM2$BR.T+0.5)
GHexpM2$rankBR.T  <- rank(GHexpM2$BR.T, na.last="keep")
#R0M
GHexpR0M$logBR.T  <- log10(GHexpR0M$BR.T+1)
GHexpR0M$sqrtBR.T  <- sqrt(GHexpR0M$BR.T+0.5)
GHexpR0M$rankBR.T  <- rank(GHexpR0M$BR.T, na.last="keep")
#R0M1
GHexpR0M1$logBR.T  <- log10(GHexpR0M1$BR.T+1)
GHexpR0M1$sqrtBR.T  <- sqrt(GHexpR0M1$BR.T+0.5)
GHexpR0M1$rankBR.T  <- rank(GHexpR0M1$BR.T, na.last="keep")
#R0M2
GHexpR0M2$logBR.T  <- log10(GHexpR0M2$BR.T+1)
GHexpR0M2$sqrtBR.T  <- sqrt(GHexpR0M2$BR.T+0.5)
GHexpR0M2$rankBR.T  <- rank(GHexpR0M2$BR.T, na.last="keep")
#RM
GHexpRM$logBR.T <- log10(GHexpRM$BR.T+1)
GHexpRM$sqrtBR.T  <- sqrt(GHexpRM$BR.T+0.5)
GHexpRM$rankBR.T  <- rank(GHexpRM$BR.T, na.last="keep")
#RM1
GHexpRM1$logBR.T  <- log10(GHexpRM1$BR.T+1)
GHexpRM1$sqrtBR.T  <- sqrt(GHexpRM1$BR.T+0.5)
GHexpRM1$rankBR.T  <- rank(GHexpRM1$BR.T, na.last="keep")
#RM2
GHexpRM2$logBR.T  <- log10(GHexpRM2$BR.T+1)
GHexpRM2$sqrtBR.T  <- sqrt(GHexpRM2$BR.T+0.5)
GHexpRM2$rankBR.T  <- rank(GHexpRM2$BR.T, na.last="keep")

##Chl.mean
#ALL
GHexp$logChl.mean  <- log10(GHexp$Chl.mean+1)
GHexp$sqrtChl.mean <- sqrt(GHexp$Chl.mean+0.5)
GHexp$rankChl.mean  <- rank(GHexp$Chl.mean, na.last="keep")
#R0
GHexpR0$logChl.mean  <- log10(GHexpR0$Chl.mean+1)
GHexpR0$sqrtChl.mean  <- sqrt(GHexpR0$Chl.mean+0.5)
GHexpR0$rankChl.mean  <- rank(GHexpR0$Chl.mean, na.last="keep")
#R
GHexpR$logChl.mean  <- log10(GHexpR$Chl.mean+1)
GHexpR$sqrtChl.mean <- sqrt(GHexpR$Chl.mean+0.5)
GHexpR$rankChl.mean <- rank(GHexpR$Chl.mean, na.last="keep")
#D
GHexpD$logChl.mean  <- log10(GHexpD$Chl.mean+1)
GHexpD$sqrtChl.mean <- sqrt(GHexpD$Chl.mean+0.5)
GHexpD$rankChl.mean <- rank(GHexpD$Chl.mean, na.last="keep")
#D1
GHexpD1$logChl.mean  <- log10(GHexpD1$Chl.mean+1)
GHexpD1$sqrtChl.mean  <- sqrt(GHexpD1$Chl.mean+0.5)
GHexpD1$rankChl.mean  <- rank(GHexpD1$Chl.mean, na.last="keep")
#D2
GHexpD2$logChl.mean  <- log10(GHexpD2$Chl.mean+1)
GHexpD2$sqrtChl.mean  <- sqrt(GHexpD2$Chl.mean+0.5)
GHexpD2$rankChl.mean  <- rank(GHexpD2$Chl.mean, na.last="keep")
#R0D
GHexpR0D$logChl.mean  <- log10(GHexpR0D$Chl.mean+1)
GHexpR0D$sqrtChl.mean  <- sqrt(GHexpR0D$Chl.mean+0.5)
GHexpR0D$rankChl.mean <- rank(GHexpR0D$Chl.mean, na.last="keep")
#R0D1
GHexpR0D1$logChl.mean  <- log10(GHexpR0D1$Chl.mean+1)
GHexpR0D1$sqrtChl.mean  <- sqrt(GHexpR0D1$Chl.mean+0.5)
GHexpR0D1$rankChl.mean  <- rank(GHexpR0D1$Chl.mean, na.last="keep")
#R0D2
GHexpR0D2$logChl.mean  <- log10(GHexpR0D2$Chl.mean+1)
GHexpR0D2$sqrtChl.mean  <- sqrt(GHexpR0D2$Chl.mean+0.5)
GHexpR0D2$rankChl.mean  <- rank(GHexpR0D2$Chl.mean, na.last="keep")
#RD
GHexpRD$logChl.mean  <- log10(GHexpRD$Chl.mean+1)
GHexpRD$sqrtChl.mean  <- sqrt(GHexpRD$Chl.mean+0.5)
GHexpRD$rankChl.mean  <- rank(GHexpRD$Chl.mean, na.last="keep")
#RD1
GHexpRD1$logChl.mean  <- log10(GHexpRD1$Chl.mean+1)
GHexpRD1$sqrtChl.mean  <- sqrt(GHexpRD1$Chl.mean+0.5)
GHexpRD1$rankChl.mean  <- rank(GHexpRD1$Chl.mean, na.last="keep")
#RD2
GHexpRD2$logChl.mean  <- log10(GHexpRD2$Chl.mean+1)
GHexpRD2$sqrtChl.mean  <- sqrt(GHexpRD2$Chl.mean+0.5)
GHexpRD2$rankChl.mean <- rank(GHexpRD2$Chl.mean, na.last="keep")
#M
GHexpM$logChl.mean <- log10(GHexpM$Chl.mean+1)
GHexpM$sqrtChl.mean  <- sqrt(GHexpM$Chl.mean+0.5)
GHexpM$rankChl.mean  <- rank(GHexpM$Chl.mean, na.last="keep")
#M1
GHexpM1$logChl.mean  <- log10(GHexpM1$Chl.mean+1)
GHexpM1$sqrtChl.mean  <- sqrt(GHexpM1$Chl.mean+0.5)
GHexpM1$rankChl.mean  <- rank(GHexpM1$Chl.mean, na.last="keep")
#M2
GHexpM2$logChl.mean  <- log10(GHexpM2$Chl.mean+1)
GHexpM2$sqrtChl.mean  <- sqrt(GHexpM2$Chl.mean+0.5)
GHexpM2$rankChl.mean  <- rank(GHexpM2$Chl.mean, na.last="keep")
#R0M
GHexpR0M$logChl.mean  <- log10(GHexpR0M$Chl.mean+1)
GHexpR0M$sqrtChl.mean  <- sqrt(GHexpR0M$Chl.mean+0.5)
GHexpR0M$rankChl.mean  <- rank(GHexpR0M$Chl.mean, na.last="keep")
#R0M1
GHexpR0M1$logChl.mean  <- log10(GHexpR0M1$Chl.mean+1)
GHexpR0M1$sqrtChl.mean  <- sqrt(GHexpR0M1$Chl.mean+0.5)
GHexpR0M1$rankChl.mean  <- rank(GHexpR0M1$Chl.mean, na.last="keep")
#R0M2
GHexpR0M2$logChl.mean  <- log10(GHexpR0M2$Chl.mean+1)
GHexpR0M2$sqrtChl.mean  <- sqrt(GHexpR0M2$Chl.mean+0.5)
GHexpR0M2$rankChl.mean  <- rank(GHexpR0M2$Chl.mean, na.last="keep")
#RM
GHexpRM$logChl.mean <- log10(GHexpRM$Chl.mean+1)
GHexpRM$sqrtChl.mean  <- sqrt(GHexpRM$Chl.mean+0.5)
GHexpRM$rankChl.mean  <- rank(GHexpRM$Chl.mean, na.last="keep")
#RM1
GHexpRM1$logChl.mean  <- log10(GHexpRM1$Chl.mean+1)
GHexpRM1$sqrtChl.mean  <- sqrt(GHexpRM1$Chl.mean+0.5)
GHexpRM1$rankChl.mean  <- rank(GHexpRM1$Chl.mean, na.last="keep")
#RM2
GHexpRM2$logChl.mean  <- log10(GHexpRM2$Chl.mean+1)
GHexpRM2$sqrtChl.mean  <- sqrt(GHexpRM2$Chl.mean+0.5)
GHexpRM2$rankChl.mean  <- rank(GHexpRM2$Chl.mean, na.last="keep")

##Chl.Diff
#ALL
GHexp$logChl.Diff  <- log10(GHexp$Chl.Diff+100)
GHexp$sqrtChl.Diff  <- sqrt(GHexp$Chl.Diff+100.5)
GHexp$rankChl.Diff <- rank(GHexp$Chl.Diff, na.last="keep")
#R0
GHexpR0$logChl.Diff  <- log10(GHexpR0$Chl.Diff+100)
GHexpR0$sqrtChl.Diff  <- sqrt(GHexpR0$Chl.Diff+100.5)
GHexpR0$rankChl.Diff  <- rank(GHexpR0$Chl.Diff, na.last="keep")
#R
GHexpR$logChl.Diff  <- log10(GHexpR$Chl.Diff+100)
GHexpR$sqrtChl.Diff  <- sqrt(GHexpR$Chl.Diff+100.5)
GHexpR$rankChl.Diff  <- rank(GHexpR$Chl.Diff, na.last="keep")
#D
GHexpD$logChl.Diff  <- log10(GHexpD$Chl.Diff+100)
GHexpD$sqrtChl.Diff  <- sqrt(GHexpD$Chl.Diff+100.5)
GHexpD$rankChl.Diff  <- rank(GHexpD$Chl.Diff, na.last="keep")
#D1
GHexpD1$logChl.Diff  <- log10(GHexpD1$Chl.Diff+100)
GHexpD1$sqrtChl.Diff  <- sqrt(GHexpD1$Chl.Diff+100.5)
GHexpD1$rankChl.Diff <- rank(GHexpD1$Chl.Diff, na.last="keep")
#D2
GHexpD2$logChl.Diff  <- log10(GHexpD2$Chl.Diff+100)
GHexpD2$sqrtChl.Diff <- sqrt(GHexpD2$Chl.Diff+100.5)
GHexpD2$rankChl.Diff  <- rank(GHexpD2$Chl.Diff, na.last="keep")
#R0D
GHexpR0D$logChl.Diff <- log10(GHexpR0D$Chl.Diff+100)
GHexpR0D$sqrtChl.Diff  <- sqrt(GHexpR0D$Chl.Diff+100.5)
GHexpR0D$rankChl.Diff  <- rank(GHexpR0D$Chl.Diff, na.last="keep")
#R0D1
GHexpR0D1$logChl.Diff <- log10(GHexpR0D1$Chl.Diff+100)
GHexpR0D1$sqrtChl.Diff  <- sqrt(GHexpR0D1$Chl.Diff+100.5)
GHexpR0D1$rankChl.Diff  <- rank(GHexpR0D1$Chl.Diff, na.last="keep")
#R0D2
GHexpR0D2$logChl.Diff  <- log10(GHexpR0D2$Chl.Diff+100)
GHexpR0D2$sqrtChl.Diff  <- sqrt(GHexpR0D2$Chl.Diff+100.5)
GHexpR0D2$rankChl.Diff  <- rank(GHexpR0D2$Chl.Diff, na.last="keep")
#RD
GHexpRD$logChl.Diff <- log10(GHexpRD$Chl.Diff+100)
GHexpRD$sqrtChl.Diff  <- sqrt(GHexpRD$Chl.Diff+100.5)
GHexpRD$rankChl.Diff  <- rank(GHexpRD$Chl.Diff, na.last="keep")
#RD1
GHexpRD1$logChl.Diff  <- log10(GHexpRD1$Chl.Diff+100)
GHexpRD1$sqrtChl.Diff  <- sqrt(GHexpRD1$Chl.Diff+100.5)
GHexpRD1$rankChl.Diff  <- rank(GHexpRD1$Chl.Diff, na.last="keep")
#RD2
GHexpRD2$logChl.Diff  <- log10(GHexpRD2$Chl.Diff+100)
GHexpRD2$sqrtChl.Diff  <- sqrt(GHexpRD2$Chl.Diff+100.5)
GHexpRD2$rankChl.Diff  <- rank(GHexpRD2$Chl.Diff, na.last="keep")
#M
GHexpM$logChl.Diff  <- log10(GHexpM$Chl.Diff+100)
GHexpM$sqrtChl.Diff  <- sqrt(GHexpM$Chl.Diff+100.5)
GHexpM$rankChl.Diff  <- rank(GHexpM$Chl.Diff, na.last="keep")
#M1
GHexpM1$logChl.Diff  <- log10(GHexpM1$Chl.Diff+100)
GHexpM1$sqrtChl.Diff  <- sqrt(GHexpM1$Chl.Diff+100.5)
GHexpM1$rankChl.Diff  <- rank(GHexpM1$Chl.Diff, na.last="keep")
#M2
GHexpM2$logChl.Diff  <- log10(GHexpM2$Chl.Diff+100)
GHexpM2$sqrtChl.Diff  <- sqrt(GHexpM2$Chl.Diff+100.5)
GHexpM2$rankChl.Diff  <- rank(GHexpM2$Chl.Diff, na.last="keep")
#R0M
GHexpR0M$logChl.Diff <- log10(GHexpR0M$Chl.Diff+100)
GHexpR0M$sqrtChl.Diff  <- sqrt(GHexpR0M$Chl.Diff+100.5)
GHexpR0M$rankChl.Diff  <- rank(GHexpR0M$Chl.Diff, na.last="keep")
#R0M1
GHexpR0M1$logChl.Diff  <- log10(GHexpR0M1$Chl.Diff+100)
GHexpR0M1$sqrtChl.Diff <- sqrt(GHexpR0M1$Chl.Diff+100.5)
GHexpR0M1$rankChl.Diff <- rank(GHexpR0M1$Chl.Diff, na.last="keep")
#R0M2
GHexpR0M2$logChl.Diff  <- log10(GHexpR0M2$Chl.Diff+100)
GHexpR0M2$sqrtChl.Diff  <- sqrt(GHexpR0M2$Chl.Diff+100.5)
GHexpR0M2$rankChl.Diff  <- rank(GHexpR0M2$Chl.Diff, na.last="keep")
#RM
GHexpRM$logChl.Diff  <- log10(GHexpRM$Chl.Diff+100)
GHexpRM$sqrtChl.Diff  <- sqrt(GHexpRM$Chl.Diff+100.5)
GHexpRM$rankChl.Diff  <- rank(GHexpRM$Chl.Diff, na.last="keep")
#RM1
GHexpRM1$logChl.Diff <- log10(GHexpRM1$Chl.Diff+100)
GHexpRM1$sqrtChl.Diff  <- sqrt(GHexpRM1$Chl.Diff+100.5)
GHexpRM1$rankChl.Diff <- rank(GHexpRM1$Chl.Diff, na.last="keep")
#RM2
GHexpRM2$logChl.Diff  <- log10(GHexpRM2$Chl.Diff+100)
GHexpRM2$sqrtChl.Diff  <- sqrt(GHexpRM2$Chl.Diff+100.5)
GHexpRM2$rankChl.Diff  <- rank(GHexpRM2$Chl.Diff, na.last="keep")

##StemD.Diff
#ALL
GHexp$logStemD.Diff  <- log10(GHexp$StemD.Diff+100)
GHexp$sqrtStemD.Diff  <- sqrt(GHexp$StemD.Diff+100.5)
GHexp$rankStemD.Diff <- rank(GHexp$StemD.Diff, na.last="keep")
#R0
GHexpR0$logStemD.Diff  <- log10(GHexpR0$StemD.Diff+100)
GHexpR0$sqrtStemD.Diff  <- sqrt(GHexpR0$StemD.Diff+100.5)
GHexpR0$rankStemD.Diff  <- rank(GHexpR0$StemD.Diff, na.last="keep")
#R
GHexpR$logStemD.Diff  <- log10(GHexpR$StemD.Diff+100)
GHexpR$sqrtStemD.Diff  <- sqrt(GHexpR$StemD.Diff+100.5)
GHexpR$rankStemD.Diff <- rank(GHexpR$StemD.Diff, na.last="keep")
#D
GHexpD$logStemD.Diff  <- log10(GHexpD$StemD.Diff+100)
GHexpD$sqrtStemD.Diff  <- sqrt(GHexpD$StemD.Diff+100.5)
GHexpD$rankStemD.Diff <- rank(GHexpD$StemD.Diff, na.last="keep")
#D1
GHexpD1$logStemD.Diff  <- log10(GHexpD1$StemD.Diff+100)
GHexpD1$sqrtStemD.Diff  <- sqrt(GHexpD1$StemD.Diff+100.5)
GHexpD1$rankStemD.Diff  <- rank(GHexpD1$StemD.Diff, na.last="keep")
#D2
GHexpD2$logStemD.Diff  <- log10(GHexpD2$StemD.Diff+100)
GHexpD2$sqrtStemD.Diff <- sqrt(GHexpD2$StemD.Diff+100.5)
GHexpD2$rankStemD.Diff  <- rank(GHexpD2$StemD.Diff, na.last="keep")
#R0D
GHexpR0D$logStemD.Diff <- log10(GHexpR0D$StemD.Diff+100)
GHexpR0D$sqrtStemD.Diff  <- sqrt(GHexpR0D$StemD.Diff+100.5)
GHexpR0D$rankStemD.Diff  <- rank(GHexpR0D$StemD.Diff, na.last="keep")
#R0D1
GHexpR0D1$logStemD.Diff  <- log10(GHexpR0D1$StemD.Diff+100)
GHexpR0D1$sqrtStemD.Diff <- sqrt(GHexpR0D1$StemD.Diff+100.5)
GHexpR0D1$rankStemD.Diff  <- rank(GHexpR0D1$StemD.Diff, na.last="keep")
#R0D2
GHexpR0D2$logStemD.Diff <- log10(GHexpR0D2$StemD.Diff+100)
GHexpR0D2$sqrtStemD.Diff  <- sqrt(GHexpR0D2$StemD.Diff+100.5)
GHexpR0D2$rankStemD.Diff  <- rank(GHexpR0D2$StemD.Diff, na.last="keep")
#RD
GHexpRD$logStemD.Diff <- log10(GHexpRD$StemD.Diff+100)
GHexpRD$sqrtStemD.Diff  <- sqrt(GHexpRD$StemD.Diff+100.5)
GHexpRD$rankStemD.Diff  <- rank(GHexpRD$StemD.Diff, na.last="keep")
#RD1
GHexpRD1$logStemD.Diff  <- log10(GHexpRD1$StemD.Diff+100)
GHexpRD1$sqrtStemD.Diff  <- sqrt(GHexpRD1$StemD.Diff+100.5)
GHexpRD1$rankStemD.Diff <- rank(GHexpRD1$StemD.Diff, na.last="keep")
#RD2
GHexpRD2$logStemD.Diff  <- log10(GHexpRD2$StemD.Diff+100)
GHexpRD2$sqrtStemD.Diff <- sqrt(GHexpRD2$StemD.Diff+100.5)
GHexpRD2$rankStemD.Diff <- rank(GHexpRD2$StemD.Diff, na.last="keep")
#M
GHexpM$logStemD.Diff  <- log10(GHexpM$StemD.Diff+100)
GHexpM$sqrtStemD.Diff  <- sqrt(GHexpM$StemD.Diff+100.5)
GHexpM$rankStemD.Diff  <- rank(GHexpM$StemD.Diff, na.last="keep")
#M1
GHexpM1$logStemD.Diff <- log10(GHexpM1$StemD.Diff+100)
GHexpM1$sqrtStemD.Diff  <- sqrt(GHexpM1$StemD.Diff+100.5)
GHexpM1$rankStemD.Diff  <- rank(GHexpM1$StemD.Diff, na.last="keep")
#M2
GHexpM2$logStemD.Diff  <- log10(GHexpM2$StemD.Diff+100)
GHexpM2$sqrtStemD.Diff <- sqrt(GHexpM2$StemD.Diff+100.5)
GHexpM2$rankStemD.Diff  <- rank(GHexpM2$StemD.Diff, na.last="keep")
#R0M
GHexpR0M$logStemD.Diff <- log10(GHexpR0M$StemD.Diff+100)
GHexpR0M$sqrtStemD.Diff  <- sqrt(GHexpR0M$StemD.Diff+100.5)
GHexpR0M$rankStemD.Diff  <- rank(GHexpR0M$StemD.Diff, na.last="keep")
#R0M1
GHexpR0M1$logStemD.Diff  <- log10(GHexpR0M1$StemD.Diff+100)
GHexpR0M1$sqrtStemD.Diff  <- sqrt(GHexpR0M1$StemD.Diff+100.5)
GHexpR0M1$rankStemD.Diff  <- rank(GHexpR0M1$StemD.Diff, na.last="keep")
#R0M2
GHexpR0M2$logStemD.Diff  <- log10(GHexpR0M2$StemD.Diff+100)
GHexpR0M2$sqrtStemD.Diff  <- sqrt(GHexpR0M2$StemD.Diff+100.5)
GHexpR0M2$rankStemD.Diff <- rank(GHexpR0M2$StemD.Diff, na.last="keep")
#RM
GHexpRM$logStemD.Diff  <- log10(GHexpRM$StemD.Diff+100)
GHexpRM$sqrtStemD.Diff  <- sqrt(GHexpRM$StemD.Diff+100.5)
GHexpRM$rankStemD.Diff<- rank(GHexpRM$StemD.Diff, na.last="keep")
#RM1
GHexpRM1$logStemD.Diff  <- log10(GHexpRM1$StemD.Diff+100)
GHexpRM1$sqrtStemD.Diff  <- sqrt(GHexpRM1$StemD.Diff+100.5)
GHexpRM1$rankStemD.Diff  <- rank(GHexpRM1$StemD.Diff, na.last="keep")
#RM2
GHexpRM2$logStemD.Diff  <- log10(GHexpRM2$StemD.Diff+100)
GHexpRM2$sqrtStemD.Diff  <- sqrt(GHexpRM2$StemD.Diff+100.5)
GHexpRM2$rankStemD.Diff<- rank(GHexpRM2$StemD.Diff, na.last="keep")

##Node.F
#ALL
GHexp$logNode.F  <- log10(GHexp$Node.F+1)
GHexp$sqrtNode.F  <- sqrt(GHexp$Node.F+0.5)
GHexp$rankNode.F <- rank(GHexp$Node.F, na.last="keep")
#R0
GHexpR0$logNode.F  <- log10(GHexpR0$Node.F+1)
GHexpR0$sqrtNode.F  <- sqrt(GHexpR0$Node.F+0.5)
GHexpR0$rankNode.F <- rank(GHexpR0$Node.F, na.last="keep")
#R
GHexpR$logNode.F  <- log10(GHexpR$Node.F+1)
GHexpR$sqrtNode.F <- sqrt(GHexpR$Node.F+0.5)
GHexpR$rankNode.F <- rank(GHexpR$Node.F, na.last="keep")
#D
GHexpD$logNode.F <- log10(GHexpD$Node.F+1)
GHexpD$sqrtNode.F <- sqrt(GHexpD$Node.F+0.5)
GHexpD$rankNode.F<- rank(GHexpD$Node.F, na.last="keep")
#D1
GHexpD1$logNode.F <- log10(GHexpD1$Node.F+1)
GHexpD1$sqrtNode.F  <- sqrt(GHexpD1$Node.F+0.5)
GHexpD1$rankNode.F  <- rank(GHexpD1$Node.F, na.last="keep")
#D2
GHexpD2$logNode.F  <- log10(GHexpD2$Node.F+1)
GHexpD2$sqrtNode.F  <- sqrt(GHexpD2$Node.F+0.5)
GHexpD2$rankNode.F  <- rank(GHexpD2$Node.F, na.last="keep")
#R0D
GHexpR0D$logNode.F <- log10(GHexpR0D$Node.F+1)
GHexpR0D$sqrtNode.F  <- sqrt(GHexpR0D$Node.F+0.5)
GHexpR0D$rankNode.F<- rank(GHexpR0D$Node.F, na.last="keep")
#R0D1
GHexpR0D1$logNode.F  <- log10(GHexpR0D1$Node.F+1)
GHexpR0D1$sqrtNode.F  <- sqrt(GHexpR0D1$Node.F+0.5)
GHexpR0D1$rankNode.F <- rank(GHexpR0D1$Node.F, na.last="keep")
#R0D2
GHexpR0D2$logNode.F <- log10(GHexpR0D2$Node.F+1)
GHexpR0D2$sqrtNode.F  <- sqrt(GHexpR0D2$Node.F+0.5)
GHexpR0D2$rankNode.F  <- rank(GHexpR0D2$Node.F, na.last="keep")
#RD
GHexpRD$logNode.F <- log10(GHexpRD$Node.F+1)
GHexpRD$sqrtNode.F  <- sqrt(GHexpRD$Node.F+0.5)
GHexpRD$rankNode.F <- rank(GHexpRD$Node.F, na.last="keep")
#RD1
GHexpRD1$logNode.F  <- log10(GHexpRD1$Node.F+1)
GHexpRD1$sqrtNode.F <- sqrt(GHexpRD1$Node.F+0.5)
GHexpRD1$rankNode.F <- rank(GHexpRD1$Node.F, na.last="keep")
#RD2
GHexpRD2$logNode.F  <- log10(GHexpRD2$Node.F+1)
GHexpRD2$sqrtNode.F <- sqrt(GHexpRD2$Node.F+0.5)
GHexpRD2$rankNode.F <- rank(GHexpRD2$Node.F, na.last="keep")
#M
GHexpM$logNode.F <- log10(GHexpM$Node.F+1)
GHexpM$sqrtNode.F <- sqrt(GHexpM$Node.F+0.5)
GHexpM$rankNode.F  <- rank(GHexpM$Node.F, na.last="keep")
#M1
GHexpM1$logNode.F  <- log10(GHexpM1$Node.F+1)
GHexpM1$sqrtNode.F  <- sqrt(GHexpM1$Node.F+0.5)
GHexpM1$rankNode.F <- rank(GHexpM1$Node.F, na.last="keep")
#M2
GHexpM2$logNode.F <- log10(GHexpM2$Node.F+1)
GHexpM2$sqrtNode.F <- sqrt(GHexpM2$Node.F+0.5)
GHexpM2$rankNode.F <- rank(GHexpM2$Node.F, na.last="keep")
#R0M
GHexpR0M$logNode.F  <- log10(GHexpR0M$Node.F+1)
GHexpR0M$sqrtNode.F <- sqrt(GHexpR0M$Node.F+0.5)
GHexpR0M$rankNode.F <- rank(GHexpR0M$Node.F, na.last="keep")
#R0M1
GHexpR0M1$logNode.F  <- log10(GHexpR0M1$Node.F+1)
GHexpR0M1$sqrtNode.F  <- sqrt(GHexpR0M1$Node.F+0.5)
GHexpR0M1$rankNode.F  <- rank(GHexpR0M1$Node.F, na.last="keep")
#R0M2
GHexpR0M2$logNode.F  <- log10(GHexpR0M2$Node.F+1)
GHexpR0M2$sqrtNode.F <- sqrt(GHexpR0M2$Node.F+0.5)
GHexpR0M2$rankNode.F <- rank(GHexpR0M2$Node.F, na.last="keep")
#RM
GHexpRM$logNode.F <- log10(GHexpRM$Node.F+1)
GHexpRM$sqrtNode.F  <- sqrt(GHexpRM$Node.F+0.5)
GHexpRM$rankNode.F <- rank(GHexpRM$Node.F, na.last="keep")
#RM1
GHexpRM1$logNode.F <- log10(GHexpRM1$Node.F+1)
GHexpRM1$sqrtNode.F  <- sqrt(GHexpRM1$Node.F+0.5)
GHexpRM1$rankNode.F <- rank(GHexpRM1$Node.F, na.last="keep")
#RM2
GHexpRM2$logNode.F  <- log10(GHexpRM2$Node.F+1)
GHexpRM2$sqrtNode.F <- sqrt(GHexpRM2$Node.F+0.5)
GHexpRM2$rankNode.F <- rank(GHexpRM2$Node.F, na.last="keep")

##WatC
#ALL
GHexp$logWatC  <- log10(GHexp$WatC+1)
GHexp$sqrtWatC  <- sqrt(GHexp$WatC+0.5)
GHexp$rankWatC <- rank(GHexp$WatC, na.last="keep")
#R0
GHexpR0$logWatC <- log10(GHexpR0$WatC+1)
GHexpR0$sqrtWatC <- sqrt(GHexpR0$WatC+0.5)
GHexpR0$rankWatC  <- rank(GHexpR0$WatC, na.last="keep")
#R
GHexpR$logWatC <- log10(GHexpR$WatC+1)
GHexpR$sqrtWatC  <- sqrt(GHexpR$WatC+0.5)
GHexpR$rankWatC <- rank(GHexpR$WatC, na.last="keep")
#D
GHexpD$logWatC  <- log10(GHexpD$WatC+1)
GHexpD$sqrtWatC  <- sqrt(GHexpD$WatC+0.5)
GHexpD$rankWatC  <- rank(GHexpD$WatC, na.last="keep")
#D1
GHexpD1$logWatC  <- log10(GHexpD1$WatC+1)
GHexpD1$sqrtWatC  <- sqrt(GHexpD1$WatC+0.5)
GHexpD1$rankWatC <- rank(GHexpD1$WatC, na.last="keep")
#D2
GHexpD2$logWatC  <- log10(GHexpD2$WatC+1)
GHexpD2$sqrtWatC <- sqrt(GHexpD2$WatC+0.5)
GHexpD2$rankWatC  <- rank(GHexpD2$WatC, na.last="keep")
#R0D
GHexpR0D$logWatC <- log10(GHexpR0D$WatC+1)
GHexpR0D$sqrtWatC  <- sqrt(GHexpR0D$WatC+0.5)
GHexpR0D$rankWatC  <- rank(GHexpR0D$WatC, na.last="keep")
#R0D1
GHexpR0D1$logWatC <- log10(GHexpR0D1$WatC+1)
GHexpR0D1$sqrtWatC  <- sqrt(GHexpR0D1$WatC+0.5)
GHexpR0D1$rankWatC  <- rank(GHexpR0D1$WatC, na.last="keep")
#R0D2
GHexpR0D2$logWatC  <- log10(GHexpR0D2$WatC+1)
GHexpR0D2$sqrtWatC <- sqrt(GHexpR0D2$WatC+0.5)
GHexpR0D2$rankWatC  <- rank(GHexpR0D2$WatC, na.last="keep")
#RD
GHexpRD$logWatC <- log10(GHexpRD$WatC+1)
GHexpRD$sqrtWatC  <- sqrt(GHexpRD$WatC+0.5)
GHexpRD$rankWatC  <- rank(GHexpRD$WatC, na.last="keep")
#RD1
GHexpRD1$logWatC <- log10(GHexpRD1$WatC+1)
GHexpRD1$sqrtWatC  <- sqrt(GHexpRD1$WatC+0.5)
GHexpRD1$rankWatC  <- rank(GHexpRD1$WatC, na.last="keep")
#RD2
GHexpRD2$logWatC  <- log10(GHexpRD2$WatC+1)
GHexpRD2$sqrtWatC  <- sqrt(GHexpRD2$WatC+0.5)
GHexpRD2$rankWatC  <- rank(GHexpRD2$WatC, na.last="keep")
#M
GHexpM$logWatC <- log10(GHexpM$WatC+1)
GHexpM$sqrtWatC  <- sqrt(GHexpM$WatC+0.5)
GHexpM$rankWatC  <- rank(GHexpM$WatC, na.last="keep")
#M1
GHexpM1$logWatC <- log10(GHexpM1$WatC+1)
GHexpM1$sqrtWatC  <- sqrt(GHexpM1$WatC+0.5)
GHexpM1$rankWatC  <- rank(GHexpM1$WatC, na.last="keep")
#M2
GHexpM2$logWatC  <- log10(GHexpM2$WatC+1)
GHexpM2$sqrtWatC  <- sqrt(GHexpM2$WatC+0.5)
GHexpM2$rankWatC  <- rank(GHexpM2$WatC, na.last="keep")
#R0M
GHexpR0M$logWatC <- log10(GHexpR0M$WatC+1)
GHexpR0M$sqrtWatC  <- sqrt(GHexpR0M$WatC+0.5)
GHexpR0M$rankWatC  <- rank(GHexpR0M$WatC, na.last="keep")
#R0M1
GHexpR0M1$logWatC  <- log10(GHexpR0M1$WatC+1)
GHexpR0M1$sqrtWatC <- sqrt(GHexpR0M1$WatC+0.5)
GHexpR0M1$rankWatC <- rank(GHexpR0M1$WatC, na.last="keep")
#R0M2
GHexpR0M2$logWatC  <- log10(GHexpR0M2$WatC+1)
GHexpR0M2$sqrtWatC <- sqrt(GHexpR0M2$WatC+0.5)
GHexpR0M2$rankWatC  <- rank(GHexpR0M2$WatC, na.last="keep")
#RM
GHexpRM$logWatC  <- log10(GHexpRM$WatC+1)
GHexpRM$sqrtWatC  <- sqrt(GHexpRM$WatC+0.5)
GHexpRM$rankWatC  <- rank(GHexpRM$WatC, na.last="keep")
#RM1
GHexpRM1$logWatC <- log10(GHexpRM1$WatC+1)
GHexpRM1$sqrtWatC  <- sqrt(GHexpRM1$WatC+0.5)
GHexpRM1$rankWatC <- rank(GHexpRM1$WatC, na.last="keep")
#RM2
GHexpRM2$logWatC  <- log10(GHexpRM2$WatC+1)
GHexpRM2$sqrtWatC  <- sqrt(GHexpRM2$WatC+0.5)
GHexpRM2$rankWatC  <- rank(GHexpRM2$WatC, na.last="keep")

##PrpnPD
#ALL
GHexp$logPrpnPD <- log10(GHexp$PrpnPD+1)
GHexp$sqrtPrpnPD  <- sqrt(GHexp$PrpnPD+0.5)
GHexp$rankPrpnPD <- rank(GHexp$PrpnPD, na.last="keep")
#R0
GHexpR0$logPrpnPD  <- log10(GHexpR0$PrpnPD+1)
GHexpR0$sqrtPrpnPD  <- sqrt(GHexpR0$PrpnPD+0.5)
GHexpR0$rankPrpnPD <- rank(GHexpR0$PrpnPD, na.last="keep")
#R
GHexpR$logPrpnPD <- log10(GHexpR$PrpnPD+1)
GHexpR$sqrtPrpnPD  <- sqrt(GHexpR$PrpnPD+0.5)
GHexpR$rankPrpnPD <- rank(GHexpR$PrpnPD, na.last="keep")
#D
GHexpD$logPrpnPD  <- log10(GHexpD$PrpnPD+1)
GHexpD$sqrtPrpnPD  <- sqrt(GHexpD$PrpnPD+0.5)
GHexpD$rankPrpnPD <- rank(GHexpD$PrpnPD, na.last="keep")
#D1
GHexpD1$logPrpnPD  <- log10(GHexpD1$PrpnPD+1)
GHexpD1$sqrtPrpnPD  <- sqrt(GHexpD1$PrpnPD+0.5)
GHexpD1$rankPrpnPD  <- rank(GHexpD1$PrpnPD, na.last="keep")
#D2
GHexpD2$logPrpnPD <- log10(GHexpD2$PrpnPD+1)
GHexpD2$sqrtPrpnPD<- sqrt(GHexpD2$PrpnPD+0.5)
GHexpD2$rankPrpnPD  <- rank(GHexpD2$PrpnPD, na.last="keep")
#R0D
GHexpR0D$logPrpnPD <- log10(GHexpR0D$PrpnPD+1)
GHexpR0D$sqrtPrpnPD  <- sqrt(GHexpR0D$PrpnPD+0.5)
GHexpR0D$rankPrpnPD  <- rank(GHexpR0D$PrpnPD, na.last="keep")
#R0D1
GHexpR0D1$logPrpnPD  <- log10(GHexpR0D1$PrpnPD+1)
GHexpR0D1$sqrtPrpnPD <- sqrt(GHexpR0D1$PrpnPD+0.5)
GHexpR0D1$rankPrpnPD  <- rank(GHexpR0D1$PrpnPD, na.last="keep")
#R0D2
GHexpR0D2$logPrpnPD <- log10(GHexpR0D2$PrpnPD+1)
GHexpR0D2$sqrtPrpnPD <- sqrt(GHexpR0D2$PrpnPD+0.5)
GHexpR0D2$rankPrpnPD  <- rank(GHexpR0D2$PrpnPD, na.last="keep")
#RD
GHexpRD$logPrpnPD <- log10(GHexpRD$PrpnPD+1)
GHexpRD$sqrtPrpnPD  <- sqrt(GHexpRD$PrpnPD+0.5)
GHexpRD$rankPrpnPD <- rank(GHexpRD$PrpnPD, na.last="keep")
#RD1
GHexpRD1$logPrpnPD  <- log10(GHexpRD1$PrpnPD+1)
GHexpRD1$sqrtPrpnPD  <- sqrt(GHexpRD1$PrpnPD+0.5)
GHexpRD1$rankPrpnPD <- rank(GHexpRD1$PrpnPD, na.last="keep")
#RD2
GHexpRD2$logPrpnPD  <- log10(GHexpRD2$PrpnPD+1)
GHexpRD2$sqrtPrpnPD <- sqrt(GHexpRD2$PrpnPD+0.5)
GHexpRD2$rankPrpnPD <- rank(GHexpRD2$PrpnPD, na.last="keep")
#M
GHexpM$logPrpnPD  <- log10(GHexpM$PrpnPD+1)
GHexpM$sqrtPrpnPD <- sqrt(GHexpM$PrpnPD+0.5)
GHexpM$rankPrpnPD <- rank(GHexpM$PrpnPD, na.last="keep")
#M1
GHexpM1$logPrpnPD <- log10(GHexpM1$PrpnPD+1)
GHexpM1$sqrtPrpnPD  <- sqrt(GHexpM1$PrpnPD+0.5)
GHexpM1$rankPrpnPD  <- rank(GHexpM1$PrpnPD, na.last="keep")
#M2
GHexpM2$logPrpnPD <- log10(GHexpM2$PrpnPD+1)
GHexpM2$sqrtPrpnPD <- sqrt(GHexpM2$PrpnPD+0.5)
GHexpM2$rankPrpnPD  <- rank(GHexpM2$PrpnPD, na.last="keep")
#R0M
GHexpR0M$logPrpnPD <- log10(GHexpR0M$PrpnPD+1)
GHexpR0M$sqrtPrpnPD <- sqrt(GHexpR0M$PrpnPD+0.5)
GHexpR0M$rankPrpnPD  <- rank(GHexpR0M$PrpnPD, na.last="keep")
#R0M1
GHexpR0M1$logPrpnPD  <- log10(GHexpR0M1$PrpnPD+1)
GHexpR0M1$sqrtPrpnPD  <- sqrt(GHexpR0M1$PrpnPD+0.5)
GHexpR0M1$rankPrpnPD <- rank(GHexpR0M1$PrpnPD, na.last="keep")
#R0M2
GHexpR0M2$logPrpnPD  <- log10(GHexpR0M2$PrpnPD+1)
GHexpR0M2$sqrtPrpnPD <- sqrt(GHexpR0M2$PrpnPD+0.5)
GHexpR0M2$rankPrpnPD <- rank(GHexpR0M2$PrpnPD, na.last="keep")
#RM
GHexpRM$logPrpnPD  <- log10(GHexpRM$PrpnPD+1)
GHexpRM$sqrtPrpnPD  <- sqrt(GHexpRM$PrpnPD+0.5)
GHexpRM$rankPrpnPD <- rank(GHexpRM$PrpnPD, na.last="keep")
#RM1
GHexpRM1$logPrpnPD  <- log10(GHexpRM1$PrpnPD+1)
GHexpRM1$sqrtPrpnPD  <- sqrt(GHexpRM1$PrpnPD+0.5)
GHexpRM1$rankPrpnPD  <- rank(GHexpRM1$PrpnPD, na.last="keep")
#RM2
GHexpRM2$logPrpnPD  <- log10(GHexpRM2$PrpnPD+1)
GHexpRM2$sqrtPrpnPD  <- sqrt(GHexpRM2$PrpnPD+0.5)
GHexpRM2$rankPrpnPD <- rank(GHexpRM2$PrpnPD, na.last="keep")

write.table(GHexpR0, file = "GHexp 2013_R0.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR, file = "GHexp 2013_R.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D, file = "GHexp 2013_R0D.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D1, file = "GHexp 2013_R0D1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0D2, file = "GHexp 2013_R0D2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M, file = "GHexp 2013_R0M.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M1, file = "GHexp 2013_R0M1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpR0M2, file = "GHexp 2013_R0M2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD, file = "GHexp 2013_RD.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD1, file = "GHexp 2013_RD1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRD2, file = "GHexp 2013_RD2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM, file = "GHexp 2013_RM.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM1, file = "GHexp 2013_RM1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpRM2, file = "GHexp 2013_RM2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD, file = "GHexp 2013_D.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD1, file = "GHexp 2013_D1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpD2, file = "GHexp 2013_D2.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM, file = "GHexp 2013_M.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM1, file = "GHexp 2013_M1.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHexpM2, file = "GHexp 2013_M2.csv", sep = ",", col.names = TRUE, row.names = FALSE)


#*********************************
#Linear Models
#*********************************
zone_labeller <- function(var, value){
  value <- as.character(value)
  if (var=="Zone") { 
    value[value=="1"] <- "Beach"
    value[value=="2"]   <- "Dune"
  }
  return(value)
}
site_labeller <- function(var, value){
  value <- as.character(value)
  if (var=="Site") { 
    value[value=="D"] <- "Darnley"
    value[value=="M"]   <- "Martinique"
  }
  return(value)
}
ss_labeller <- function(var, value){
  value <- as.character(value)
  if (var=="SSTRTMT") { 
    value[value=="C"] <- "Fresh"
    value[value=="SS"]   <- "Salt"
  }
  return(value)
}
d_labeller <- function(var, value){
  value <- as.character(value)
  if (var=="DTRTMT") { 
    value[value=="HD"] <- "High"
    value[value=="LD"]   <- "Low"
  }
  return(value)
}
#********************
##Response Variable: DDFLWF
#boxplot
ggplot(data=GHexpR0, aes(x=TRTMT, y=DDFLWF))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Flowering Duration (days)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                      breaks=c("1", "2"),
                      labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Plant Flowering Duration by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: a lot of overlap between zones within trtmts, and between treatments.
    #likely there is no sig diff between trtmts and zones and their interaction
  #no clear outliers

#create plot using summarySE function output and DDFLWF
GHR0dd <- summarySE(GHexp, measurevar="DDFLWF", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHR0dd, aes(x=DTRTMT, y=DDFLWF, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=DDFLWF-se, ymax=DDFLWF+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Flowering Duration (days)") +
  ggtitle("Mean Plant Flowering Duration by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#distribution
hist(GHexp$DDFLWF) #raw might be the best, skew left, sqrt okay but gap in middle

#outliers
mean(GHexp$DDFLWF, na.rm=TRUE)
sd(GHexp$DDFLWF, na.rm=TRUE)
23.506+(3*15.82) #=70.97, outliers = 54, 86, 128, 148
mean(GHexp[-c(54, 86, 128, 148),]$DDFLWF, na.rm=TRUE)
sd(GHexp[-c(54, 86, 128, 148),]$DDFLWF, na.rm=TRUE)
22.17+(3*13.25) #=61.92, outliers = 145, 212
mean(GHexp[-c(54, 86, 128, 145, 148, 212),]$DDFLWF, na.rm=TRUE)
sd(GHexp[-c(54, 86, 128, 145, 148, 212),]$DDFLWF, na.rm=TRUE)
21.67+(3*12.50) #=59.17, outlers = 57

GHexpddno3  <- GHexp[-c(54, 57, 86, 128, 145, 148, 212),]
hist(GHexpddno3$DDFLWF)
hist(GHexp$DDFLWF) #removing outliers slightly changes distribution

mean(GHexpR0$DDFLWF, na.rm=TRUE)
sd(GHexpR0$DDFLWF, na.rm=TRUE)
26.03+(3*16.13) #=74.42, outliers = 39, 63, 94 
mean(GHexpR0[-c(39, 63, 94),]$DDFLWF, na.rm=TRUE)
sd(GHexpR0[-c(39, 63, 94),]$DDFLWF, na.rm=TRUE)
24.72+(3*13.77) #=66.03, outliers = 108
mean(GHexpR0[-c(39, 63, 94, 108),]$DDFLWF, na.rm=TRUE)
sd(GHexpR0[-c(39, 63, 94, 108),]$DDFLWF, na.rm=TRUE)
24.39+(3*13.305) #=64.305, outlers = none

GHexpR0ddno2  <- GHexp[-c(39, 63, 94, 108),]
hist(GHexpR0ddno2$DDFLWF)
hist(GHexpR0$DDFLWF) #removing outliers does NOT change distribution

#Does replant have an effect
lmddR  <- lm(DDFLWF~Replant, data=GHexp)
lmddRx  <- lm(DDFLWF~1, data=GHexp)
anova(lmddRx, lmddR) #Replant was significant p=0.0008 F=7.38

#lmer vs lm
lmeddaaa <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1+Zone|Site), data=GHexp)
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmedda <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote), data=GHexp)
lmeddaa <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Site), data=GHexp)
anova(lmedd, lmedda, lmeddaa, lmeddaaa) #lmedda is best p=0.023 chisq=5.18 AIC=1481.9
  #lmedd AIC=1485.8 p=0.95 chisq=0.091, lmeddaa AIC=1486.6, lmeddaaa AIC=1485.1 p=<0.0001 chisq=1.49
lmdd <- lm(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant, data=GHexp)
x <- -2*logLik(lmdd, REML=T) +2*logLik(lmedd, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmdd) #=1488.02
AIC(lmedd) #=1434.79
#logLik=13.97, p=0.0009, random Tote and Site are sig

#check assumptions of best model
lmeddR <- resid(lmedd) 
lmeddF <- fitted(lmedd)
plot(lmeddF, lmeddR) #raw is okay
abline(h=0, col=c("red"))
#fairly homogeneous variation
hist(lmeddR) #raw is okay, skew left
qqnorm(lmeddR, main="Q-Q plot for residuals") 
qqline(lmeddR) #raw is okay, tails at each end


#lmer()
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmeddb <- update(lmedd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmeddb, lmedd) #3Interact not sig, p=0.338 chisq=0.916
lmeddc <- update(lmeddb,~.-Zone:DTRTMT)
anova(lmeddc, lmeddb) #Zone:D not sig, p=0.542 chisq=0.372
lmeddd <- update(lmeddb,~.-Zone:SSTRTMT)
anova(lmeddd, lmeddb) #Zone:SS not sig, p=0.529 chisq=0.395
lmedde <- update(lmeddb,~.-DTRTMT:SSTRTMT)
anova(lmedde, lmeddb) #D:SS not sig, p=0.148 chisq=2.088
lmedd2 <- lmer(DDFLWF~Zone+DTRTMT+SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmedd2b <- update(lmedd2,~.-Zone)
anova(lmedd2b, lmedd2) #Zone not sig, p=0.125 chisq=2.35
lmedd2c <- update(lmedd2,~.-DTRTMT)
anova(lmedd2c, lmedd2) #D not sig, p=0.46 chisq=0.533
lmedd2d <- update(lmedd2,~.-SSTRTMT)
anova(lmedd2d, lmedd2) #SS not sig, p=0.83 chisq=0.046
lmedd2e <- update(lmedd2,~.-Replant)
anova(lmedd2e, lmedd2) #Replant is sig, p=0.027 chisq=7.22
lmeddF <- lmer(DDFLWF~Replant+(1|Tote)+(1|Site), data=GHexp)
#replant sig, therefore must use data=GHexpR0

#lmer vs lm (GHexpR0)
lmeddaaa <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexpR0)
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpR0)
lmedda <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexpR0)
lmeddaa <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexpR0)
anova(lmedd, lmedda) #p=0.035 chisq=4.42 AIC=1114.6* AICa=1117.1, site is sig
anova(lmedd, lmeddaa) #p=0.072 chisq=3.22 AICaa=1115.9, tote is marginally non sig
anova(lmedd, lmeddaaa) #p=0.88 chisq=0.25 AICaa=1118.4, zone is not sig
0.5*(1-pchisq(4.42, 1)) #=0.018 *
0.5*(1-pchisq(3.22, 1)) #=0.036 *
0.5*((1-pchisq(0.25, 1))+(1-pchisq(0.25, 2))) #=0.75
lmdd <- lm(DDFLWF~Zone*DTRTMT*SSTRTMT, data=GHexpR0)
x <- -2*logLik(lmdd, REML=T) +2*logLik(lmedd, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmdd) #=1117.23
AIC(lmedd) #=1074.78
#logLik=9.633, p=0.00405, random effects are sig

#check assumptions of best model
lmeddR <- resid(lmedd) 
lmeddF <- fitted(lmedd)
plot(lmeddF, lmeddR) #raw is okay
abline(h=0, col=c("red")) #fairly homogeneous variation
hist(lmeddR) #raw is okay, skew left
qqnorm(lmeddR, main="Q-Q plot for residuals") 
qqline(lmeddR) #raw is okay, tails at each end


#lmer()
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpR0)
lmeddb <- update(lmedd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmeddb, lmedd) #3Interact not sig, p=0.88 chisq=0.024
lmeddc <- update(lmeddb,~.-Zone:DTRTMT)
anova(lmeddc, lmeddb) #Zone:D not sig, p=0.87 chisq=0.025
lmeddd <- update(lmeddb,~.-Zone:SSTRTMT)
anova(lmeddd, lmeddb) #Zone:SS not sig, p=0.44 chisq=0.604
lmedde <- update(lmeddb,~.-DTRTMT:SSTRTMT)
anova(lmedde, lmeddb) #D:SS marginally non sig, p=0.089 chisq=2.89
lmedd2 <- lmer(DDFLWF~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexpR0)
lmedd2b <- update(lmedd2,~.-Zone)
anova(lmedd2b, lmedd2) #Zone is sig, p=0.03 chisq=4.73 *
lmedd2c <- update(lmedd2,~.-DTRTMT)
anova(lmedd2c, lmedd2) #D not sig, p=0.63 chisq=0.23
lmedd2d <- update(lmedd2,~.-SSTRTMT)
anova(lmedd2d, lmedd2) #SS not sig, p=0.83 chisq=0.047
lmeddF <- lmer(DDFLWF~Zone+(1|Tote)+(1|Site), data=GHexpR0)
summary(lmeddF)
#random: tote var=26.53, site var=28.65, resid=215.41
#fixed: intercept =27.55, zone est= -5.603

#check assumptions
lmeddFR <- resid(lmeddF)
lmeddFF <- fitted(lmeddF)
plot(lmeddFF, lmeddFR) #okay
abline(h=0, col=c("red")) 
hist(lmeddFR) #okay, skew left
qqnorm(lmeddFR, main="Q-Q plot for residuals") 
qqline(lmeddFR) #okay, has tails at each end

GHR0ddF <- summarySE(GHexpR0, measurevar="DDFLWF", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHR0ddF2 <- summarySE(GHexpR0, measurevar="DDFLWF", groupvars=c("Site", "Zone")) 
ggplot(data=GHR0ddF2, aes(x=Zone, y=DDFLWF, group=Site, shape=Site)) +
  geom_errorbar(aes(ymin=DDFLWF-se, ymax=DDFLWF+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  scale_shape_discrete(name  ="Site",
                       breaks=c("D", "M"),
                       labels=c("Darnley", "Martinique")) +
  xlab("Zone") + ylab("Flowering Duration (days)") +
  ggtitle("Mean Flowering Duration by Treatment R0") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Beach", "Dune")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#********************
##Response Variable: NewL.D
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=NewL.D))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Production of New Leaves \n(leaves/day)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("New Leaves/day by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: a lot of overlap between zones and between treatments, but possible difference with salt:high
  #possible outlier to remove

GHnl <- summarySE(GHexp, measurevar="NewL.D", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHnl, aes(x=DTRTMT, y=NewL.D, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=NewL.D-se, ymax=NewL.D+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Production of New Leaves \n(leaves/day)") +
  ggtitle("Mean New Leaves/day by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$sqrtNewL.D) #sqrt might be the best, skew left

#outliers
mean(GHexp$NewL.D, na.rm=TRUE)
sd(GHexp$NewL.D, na.rm=TRUE)
0.015+(3*0.019) #=0.072, outliers = 9, 75
mean(GHexp[-c(9, 75),]$NewL.D, na.rm=TRUE)
sd(GHexp[-c(9, 75),]$NewL.D, na.rm=TRUE)
0.014+(3*0.018) #=0.068, outliers = 57, 127
mean(GHexp[-c(9, 57, 75, 127),]$NewL.D, na.rm=TRUE)
sd(GHexp[-c(9, 57, 75, 127),]$NewL.D, na.rm=TRUE)
0.014+(3*0.017) #=0.065, outlers = none

GHexpnlno2  <- GHexp[-c(9, 57, 75, 127),]
hist(GHexpnlno2$NewL.D)
hist(GHexp$NewL.D) #removing outliers does not change distribution

#Does replant have an effect
lmnlR  <- lm(rankNewL.D~Replant, data=GHexp)
lmnlRx  <- lm(rankNewL.D~1, data=GHexp)
anova(lmnlRx, lmnlR) #Replant not significant p=0.894 F=0.112


#lmer vs lm
lmenlaaa <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp, na.action="na.omit")
lmenl <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp, na.action="na.omit")
lmenla <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp, na.action="na.omit")
lmenlaa <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp, na.action="na.omit")
anova(lmenl, lmenla) #p=0.0049 chisq=7.93 AIC=2475.9* AICa=2481.8, site is sig
anova(lmenl, lmenlaa) #p=1 chisq=0 AICaa=2473.9*, tote not sig
anova(lmenl, lmenlaaa) #p=0.89 chisq=0.23 AICaa=2479.7, zone not sig
0.5*(1-pchisq(7.93, 1)) #=0.0024 *
0.5*(1-pchisq(0, 1)) #=0.5
0.5*((1-pchisq(0.23, 1))+(1-pchisq(0.23, 2))) #=0.76
lmnl <- lm(rankNewL.D~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmnl, REML=T) +2*logLik(lmenl, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmnl) #= -2479.81
AIC(lmenl) #= -2420.32*
#logLik=9.74, p=0.0038, random effects are sig

#check assumptions of best model
lmenlR <- resid(lmenl) 
lmenlF <- fitted(lmenl)
plot(lmenlF, lmenlR) #lm: raw is slightly cone...sqrt not better...rank better
#lme: rank is good
abline(h=0, col=c("red"))
hist(lmenlR) #lm: raw okay...sqrt okay...rank better but with gaps
#lme: rank is good
qqnorm(lmenlR, main="Q-Q plot for residuals") 
qqline(lmenlR) #lm: raw has long tail at right...sqrt not much better...rank not good
#lme: rank is okay, but has tails at each end (slight s-shape)

#lme4
lmenl <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmenlb  <- update(lmenl,~.-Zone:DTRTMT:SSTRTMT)
anova(lmenlb, lmenl) #3 way not sig, p=0.363 chisq=0.83
lmenlc  <- update(lmenlb,~.-Zone:DTRTMT)
anova(lmenlc, lmenlb) #Zone:D not sig, p=0.977 chisq=0.0009
lmenld  <- update(lmenlb,~.-Zone:SSTRTMT)
anova(lmenld, lmenlb) #Zone:SS not sig, p=0.981 chisq=0.0006
lmenle  <- update(lmenlb,~.-DTRTMT:SSTRTMT)
anova(lmenle, lmenlb) #D:SS not sig, p=0.714 chisq=0.134
lmenl2 <- lmer(rankNewL.D~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmenl2b  <- update(lmenl2,~.-Zone)
anova(lmenl2b, lmenl2) #Zone not sig, p=0.827 chisq=0.048
lmenl2c  <- update(lmenl2,~.-DTRTMT)
anova(lmenl2c, lmenl2) #D marginally not sig, p=0.077 chisq=3.13
lmenl2d  <- update(lmenl2,~.-SSTRTMT)
anova(lmenl2d, lmenl2) #SS is sig, p=<0.0001 chisq=27.87 ***
lmenlF <- lmer(rankNewL.D~SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmenlF)
#random: tote var=0, site var=388.3, resid=3369.7
#fixed: intercept=91.98, ss est=41.27

#check assumptions
lmenlFR <- resid(lmenlF) 
lmenlFF <- fitted(lmenlF)
plot(lmenlFF, lmenlFR) #okay
abline(h=0, col=c("red"))
hist(lmenlFR) #okay
qqnorm(lmenlFR, main="Q-Q plot for residuals") 
qqline(lmenlFR) #not the best, stepwise pattern and tails

GHnlF <- summarySE(GHexp, measurevar="rankNewL.D", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHnlF2 <- summarySE(GHexp, measurevar="rankNewL.D", groupvars=c("SSTRTMT", "Site")) 
ggplot(data=GHnlF2, aes(x=SSTRTMT, y=rankNewL.D, group=Site, shape=Site)) +
  geom_errorbar(aes(ymin=rankNewL.D-se, ymax=rankNewL.D+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  scale_shape_discrete(name  ="Site",
                       breaks=c("D", "M"),
                       labels=c("Darnley", "Martinique")) +
  xlab("Spray") + ylab("Ranked Production of New Leaves \n(leaves/day)") +
  ggtitle("Mean Ranked New Leaves/day by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Fresh", "Salt")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#********************
##Response Variable: Cot.FR
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Cot.FR))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Stem Length (cm)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Stem Size by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: a lot of overlap between zones and between treatments, but possible difference with low densities

GHcfr <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHcfr, aes(x=DTRTMT, y=Cot.FR, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Cot.FR-se, ymax=Cot.FR+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Stem Length(cm)") +
  ggtitle("Mean Stem Length by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$Cot.FR) #raw okay

#outliers
mean(GHexp$Cot.FR, na.rm=TRUE)
sd(GHexp$Cot.FR, na.rm=TRUE)
20.51+(3*6.1) #=38.81, outliers = none

#Does replant have an effect
lmcfrR  <- lm(Cot.FR~Replant, data=GHexp)
lmcfrRx  <- lm(Cot.FR~1, data=GHexp)
anova(lmcfrRx, lmcfrR) #Replant not significant p=0.328 F=1.12

#lmer vs lm
lmecfraaa <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmecfr <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecfra <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmecfraa <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmecfr, lmecfra) #p=1 chisq=0 AIC=1197.6 AICa=1195.6*, site not sig
anova(lmecfr, lmecfraa) #p=0.71 chisq=0.13 AICaa=1195.7, tote not sig
anova(lmecfr, lmecfraaa) #p=0.29 chisq=3.73 AICaa=1198.0, zone not sig
0.5*(1-pchisq(0, 1)) #=0.5 
0.5*(1-pchisq(0.13, 1)) #=0.36
0.5*((1-pchisq(3.73, 1))+(1-pchisq(3.73, 2))) #=0.104
lmcfr <- lm(Cot.FR~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmcfr, REML=T) +2*logLik(lmecfr, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmcfr) #= -1193.74 *
AIC(lmecfr) #= -1179.26
#logLik=0.92, p=0.31, random effects not sig

#check assumptions of best model
lmecfrR <- resid(lmecfr) 
lmecfrF <- fitted(lmecfr)
plot(lmecfrF, lmecfrR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmecfrR) #lm: raw good
qqnorm(lmecfrR, main="Q-Q plot for residuals") 
qqline(lmecfrR) #lm: raw is good

#lm
lmecfr <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecfrb <- update(lmecfr,~.-Zone:DTRTMT:SSTRTMT)
anova(lmecfrb, lmecfr) #3way not sig p=0.73 chisq=0.12
lmecfrc <- update(lmecfrb,~.-Zone:DTRTMT)
anova(lmecfrc, lmecfrb) #Zone:d not sig p=0.547 chisq=0.36
lmecfrd <- update(lmecfrb,~.-Zone:SSTRTMT)
anova(lmecfrd, lmecfrb) #Zone:SS marginally not sig p=0.075 chisq=3.18
lmecfre <- update(lmecfrb,~.-DTRTMT:SSTRTMT)
anova(lmecfre, lmecfrb) #D:SS not sig p=0.226 chisq=1.46
lmecfrf <- lm(Cot.FR~Zone+DTRTMT+SSTRTMT, data=GHexp)
lmecfrg <- update(lmecfrf,~.-Zone)
anova(lmecfrg, lmecfrf) #Zone is sig p=0.0009 chisq=11.46 **
lmecfrh <- update(lmecfrf,~.-DTRTMT)
anova(lmecfrh, lmecfrf) #D is sig p=0.023 chisq=5.26 *
lmecfri <- update(lmecfrf,~.-SSTRTMT)
anova(lmecfri, lmecfrf) #SS is sig p=0.00057 chisq=12.30 **
lmecfrF <- lmer(Cot.FR~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmecfrF)
#random: tote var=1.33, site var=0, resid=31.99
#fixed: intercept=22.42, zone est= -2.82, D est=1.94, SS est= -3.01


#check assumptions of best model
lmecfrFR <- resid(lmecfrF) 
lmecfrFF <- fitted(lmecfrF)
plot(lmecfrFF, lmecfrFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmecfrFR) #lm: raw good
qqnorm(lmecfrFR, main="Q-Q plot for residuals") 
qqline(lmecfrFR) #lm: raw is good

GHcfrF <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone"))
GHcfrFa <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("SSTRTMT")) 
GHcfrFb <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("DTRTMT")) 
GHcfrFc <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("Zone")) 
GHcfrF2 <- summarySE(GHexp, measurevar="Cot.FR", groupvars=c("SSTRTMT", "DTRTMT", "Zone")) 
ggplot(data=GHcfrF2, aes(x=DTRTMT, y=Cot.FR, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Cot.FR-se, ymax=Cot.FR+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Stem Length(cm)") +
  ggtitle("Mean Stem Length by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#********************
##Response Variable: Cot.GR
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Cot.GR))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Stem Growth Rate (cm/day)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Stem GR by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: a lot of overlap between zones and between treatments, but possible difference

GHcgr <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHcgr, aes(x=DTRTMT, y=Cot.GR, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Cot.GR-se, ymax=Cot.GR+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Stem Growth Rate (cm/day)") +
  ggtitle("Mean Stem GR by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$Cot.GR) #raw okay

#outliers
mean(GHexp$Cot.GR, na.rm=TRUE)
sd(GHexp$Cot.GR, na.rm=TRUE)
0.229+(3*0.097) #=0.52, outliers = none

#Does replant have an effect
lmcgrR  <- lm(Cot.GR~Replant, data=GHexp)
lmcgrRx  <- lm(Cot.GR~1, data=GHexp)
anova(lmcgrRx, lmcgrR) #Replant not significant p=0.366 F=1.01

#lmer vs lm
lmecgraaa <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmecgr <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecgra <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmecgraa <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmecgr, lmecgra) #p=0.068 chisq=3.33 AIC= -499.08* AICa= -497.74, site is marg. non sig
anova(lmecgr, lmecgraa) #p=0.0035 chisq=8.53 AIC= -492.55, tote is sig
anova(lmecgr, lmecgraaa) #p=0.0066 chisq=12.24 AIC= -492.55, zone is sig, BUT cannot trust this result
  #because received warning messages (see below) which suggest I may be getting a false result
#Warning messages:
#1: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
#                 Model failed to converge with max|grad| = 0.380908 (tol = 0.002)
#                2: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
#                                  Model failed to converge: degenerate  Hessian with 1 negative eigenvalues
0.5*(1-pchisq(3.33, 1)) #=0.034 *
0.5*(1-pchisq(8.53, 1)) #=0.0017 **
0.5*((1-pchisq(12.24, 1))+(1-pchisq(12.24, 2))) #=0.0013 see above!!!
lmcgr <- lm(Cot.GR~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmcgr, REML=T) +2*logLik(lmecgr, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmcgr) #=-492.48
AIC(lmecgr) #=-441.24
#logLik=14.67, p=0.00033, random effects are sig

#check assumptions of best model
lmecgrR <- resid(lmecgr) 
lmecgrF <- fitted(lmecgr)
plot(lmecgrF, lmecgrR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmecgrR) #lm: raw good
qqnorm(lmecgrR, main="Q-Q plot for residuals") 
qqline(lmecgrR) #lm: raw is good

#lmer
lmecgr <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecgrb  <- update(lmecgr,~.-Zone:DTRTMT:SSTRTMT)
anova(lmecgrb, lmecgr) #3way not sig p=0.135 chisq=2.24
lmecgrc  <- update(lmecgrb,~.-Zone:DTRTMT)
anova(lmecgrc, lmecgrb) #Zone:D marginally not sig p=0.088 chisq=2.91
lmecgrd  <- update(lmecgrb,~.-Zone:SSTRTMT)
anova(lmecgrd, lmecgrb) #Zone:SS is sig p=0.022 chisq=5.23 *
lmecgre  <- update(lmecgrb,~.-DTRTMT:SSTRTMT)
anova(lmecgre, lmecgrb) #D:SS not sig p=0.762 chisq=0.091
lmecgr2 <- lmer(Cot.GR~Zone:SSTRTMT+Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecgr2b <- update(lmecgr2,~.-DTRTMT)
anova(lmecgr2b, lmecgr2) #D is sig p=0.00081 chisq=11.21
lmecgr3 <- lmer(Cot.GR~Zone+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmecgr3b <- update(lmecgr3,~.-Zone)
anova(lmecgr3b, lmecgr3) #zone is sig p=0.00021 chisq=13.77
lmecgr3c <- update(lmecgr3,~.-SSTRTMT)
anova(lmecgr3c, lmecgr3) #ss is sig p=0.00074 chisq=11.39
lmecgrF <- lmer(Cot.GR~Zone*SSTRTMT+DTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmecgrF)
#random: tote var=0.00076, site var=0.0003, resid=0.0052
#fixed: intercept=0.283, zone est= -0.059, ss est= -0.115, d est=0.064, zone:ss est=0.044



#check assumptions of best model
lmecgrFR <- resid(lmecgrF) 
lmecgrFF <- fitted(lmecgrF)
plot(lmecgrFF, lmecgrFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmecgrFR) #lm: raw good
qqnorm(lmecgrFR, main="Q-Q plot for residuals") 
qqline(lmecgrFR) #lm: raw is good

GHcgrF <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHcgrFa <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("DTRTMT")) 
GHcgrFb <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "Zone")) 
GHcgrFc <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "Site", "Zone")) 
GHcgrF2 <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "DTRTMT", "Zone")) 
ggplot(data=GHcgrF2, aes(x=SSTRTMT, y=Cot.GR, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Cot.GR-se, ymax=Cot.GR+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(~DTRTMT, labeller=d_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Spray") + ylab("Stem Growth Rate (cm/day)") +
  ggtitle("Mean Stem GR by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Fresh", "Salt")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


aovcgrzs  <- aov(Cot.GR~Zone:SSTRTMT, data=GHexp)
TukeyHSD(aovcgrzs)
  #           diff         lwr         upr     p adj
#2:C-1:C   -0.05831061 -0.09968731 -0.01693391 0.0018653 **
#1:SS-1:C  -0.11658960 -0.15759520 -0.07558400 0.0000000 ***
#2:SS-1:C  -0.12990204 -0.17109023 -0.08871385 0.0000000 ***
#1:SS-2:C  -0.05827899 -0.09928459 -0.01727339 0.0016681 **
#2:SS-2:C  -0.07159143 -0.11277962 -0.03040324 0.0000653 ***
#2:SS-1:SS -0.01331244 -0.05412781  0.02750294 0.8331023

  #Dune plants differ from beach in freshwater-spray
  #Beach plants differ between freshwater and saltwater spray
  #Dune plants differ between freshwater and saltwater spray

#********************
##Response Variable: TFC
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=TFC))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Lifetime fitness") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Total fruit by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: a lot of overlap between zones and between treatments, but possible difference

GHtf <- summarySE(GHexp, measurevar="TFC", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHtf, aes(x=DTRTMT, y=TFC, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=TFC-se, ymax=TFC+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Lifetime Fitness") +
  ggtitle("Mean Total Fruit by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$sqrtTFC) #raw okay, skew left, log and sqrt are better

#outliers
mean(GHexp$TFC, na.rm=TRUE)
sd(GHexp$TFC, na.rm=TRUE)
4.89+(3*3.99) #=16.86, outliers = 55, 56, 83, 145 
mean(GHexp[-c(55, 56, 83, 145),]$TFC, na.rm=TRUE)
sd(GHexp[-c(55, 56, 83, 145),]$TFC, na.rm=TRUE)
4.62+(3*3.45) #=14.97, outliers = none

GHexptfno1  <- GHexp[-c(55, 56, 83, 145),]
hist(GHexp$sqrtTFC)
GHexptfno1$sqrtTFC  <- sqrt(GHexptfno1$TFC+0.5)
hist(GHexptfno1$sqrtTFC) #shape of distribution not change, just fewer columns

#Does replant have an effect
lmtfR  <- lm(TFC~Replant, data=GHexp)
lmtfRx  <- lm(TFC~1, data=GHexp)
anova(lmtfRx, lmtfR) #Replant not significant p=0.664 F=13.17

#lmer vs lm
lmetfaaa <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmetf <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmetfa <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmetfaa <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmetf, lmetfa) #p=1 chisq=0 AIC=532.24 AICa=530.24*, site not sig
anova(lmetf, lmetfaa) #p=0.019 chisq=5.46 AICaa=535.70, tote is sig
anova(lmetf, lmetfaaa) #p=1 chisq=0 AICaa=536.24, zone not sig
0.5*(1-pchisq(0, 1)) #=0.5 
0.5*(1-pchisq(5.46, 1)) #=0.0097 **
0.5*((1-pchisq(0, 1))+(1-pchisq(0, 2))) #=1.0
lmtf <- lm(sqrtTFC~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmtf, REML=T) +2*logLik(lmetf, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmtf) #533.704
AIC(lmetf) #544.61
#sqrt: logLik=8.208, p=0.0082, random effects are sig

#check assumptions of best model
lmetfR <- resid(lmetf) 
lmetfF <- fitted(lmetf)
plot(lmetfF, lmetfR) #lm: sqrt is good
abline(h=0, col=c("red"))
hist(lmetfR) #lm: sqrt good
qqnorm(lmetfR, main="Q-Q plot for residuals") 
qqline(lmetfR) #lm: sqrt is good

#lm
lmetf <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmetfb  <- update(lmetf,~.-Zone:DTRTMT:SSTRTMT)
anova(lmetfb, lmetf) #3way not sig p=0.154 chisq=2.029
lmetfc  <- update(lmetfb,~.-Zone:DTRTMT)
anova(lmetfc, lmetfb) #Zone:D not sig p=0.442 chisq=0.592
lmetfd  <- update(lmetfb,~.-Zone:SSTRTMT)
anova(lmetfd, lmetfb) #Zone:SS not sig p=0.89 chisq=0.019
lmetfe  <- update(lmetfb,~.-DTRTMT:SSTRTMT)
anova(lmetfe, lmetfb) #D:SS is sig p=0.0083 chisq=6.96 **
lmetf2 <- lmer(sqrtTFC~Zone+DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmetf2b  <- update(lmetf2,~.-Zone)
anova(lmetf2b, lmetf2) #zone marginally not sig p=0.087 chisq=2.93
lmetf3 <- lmer(sqrtTFC~DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmetf3b  <- update(lmetf3,~.-DTRTMT)
anova(lmetf3b, lmetf3) #D is sig p=0.028 chisq=4.85 *
lmetf3c  <- update(lmetf3,~.-SSTRTMT)
anova(lmetf3c, lmetf3) #SS not sig p=0.24 chisq=1.38
lmetfF <- lmer(sqrtTFC~DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmetfF)
#random: tote var=0.072, site var=0.000, resid=0.587
#fixed: intercept=2.32, D est= -0.0082, SS est= -0.633, D:SS est=0.903

#check assumptions of best model
lmetfFR <- resid(lmetfF) 
lmetfFF <- fitted(lmetfF)
plot(lmetfFF, lmetfFR) #lm: sqrt is good
abline(h=0, col=c("red"))
hist(lmetfFR) #lm: sqrt good
qqnorm(lmetfFR, main="Q-Q plot for residuals") 
qqline(lmetfFR) #lm: sqrt is good

GHtfF <- summarySE(GHexp, measurevar="sqrtTFC", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHtfF2 <- summarySE(GHexp, measurevar="sqrtTFC", groupvars=c("SSTRTMT", "DTRTMT")) 
ggplot(data=GHtfF2, aes(x=DTRTMT, y=sqrtTFC, group=SSTRTMT)) +
  geom_errorbar(aes(ymin=sqrtTFC-se, ymax=sqrtTFC+se), width=0.112.0, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(~SSTRTMT, labeller=ss_labeller) +
  xlab("Density") + ylab(expression(bold(sqrt(Lifetime~Fitness)))) +
  ggtitle("Mean sqrt Total Fruit by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

aovtfds  <- aov(sqrtTFC~DTRTMT:SSTRTMT, data=GHexp)
TukeyHSD(aovtfds)
  #               diff        lwr        upr     p adj
#LD:C-HD:C   -0.01020079 -0.4284229  0.4080213 0.9999094
#HD:SS-HD:C  -0.63532326 -0.9837126 -0.2869340 0.0000249 ***
#LD:SS-HD:C   0.26607382 -0.1486585  0.6808061 0.3469018
#HD:SS-LD:C  -0.62512247 -1.0412958 -0.2089492 0.0007686 **
#LD:SS-LD:C   0.27627461 -0.1968300  0.7493792 0.4320745
#LD:SS-HD:SS  0.90139708  0.4887309  1.3140632 0.0000003 ***

  #High density plants differed between saltwater and freshwater spray
  #Salt-sprayed plants differed between high and low densities

#********************
##Response Variable: BR.T
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=BR.T))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Lifetime fitness") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Total Branches by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: clear differences between treatments
ggplot(data=GHexp, aes(x=TRTMT, y=BR.T))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Lifetime fitness") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Total Branches by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#cannot remove outliers found below...this plot shows that points are fairly consolidated 

GHbr <- summarySE(GHexp, measurevar="BR.T", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHbr, aes(x=DTRTMT, y=BR.T, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=BR.T-se, ymax=BR.T+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Total Branches") +
  ggtitle("Mean Total Branches by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$sqrtBR.T) #none are good

#outliers
mean(GHexp$BR.T, na.rm=TRUE)
sd(GHexp$BR.T, na.rm=TRUE)
1.95+(3*3.87) #=13.56, outliers = 25, 45, 57, 86, 112, 128, 143, 171
mean(GHexp[-c(25, 45, 57, 86, 112, 128, 143, 171),]$BR.T, na.rm=TRUE)
sd(GHexp[-c(25, 45, 57, 86, 112, 128, 143, 171),]$BR.T, na.rm=TRUE)
1.41+(3*2.72) #=9.57, outliers = 9, 69, 56
mean(GHexp[-c(9, 25, 45, 56, 57, 69, 86, 112, 128, 143, 171),]$BR.T, na.rm=TRUE)
sd(GHexp[-c(9, 25, 45, 56, 57, 69, 86, 112, 128, 143, 171),]$BR.T, na.rm=TRUE)
1.28+(3*2.49) #=8.75, outliers = 2, 22, 54, 58, 83, 92 Stop here 

GHexpbrno1  <- GHexp[-c(25, 45, 57, 86, 112, 128, 143, 171),]
GHexpbrno1$sqrtBR.T  <- sqrt(GHexpbrno1$BR.T+0.5)
hist(GHexpbrno1$sqrtBR.T)
GHexpbrno1$rankBR.T  <- rank(GHexpbrno1$BR.T)
GHexpbrno3  <- GHexp[-c(2, 9, 22, 25, 45, 54, 56, 57, 58, 69, 83, 86, 92, 112, 128, 143, 171),]
hist(GHexp$sqrtBR.T)
GHexpbrno3$sqrtBR.T  <- sqrt(GHexpbrno3$BR.T+0.5)
hist(GHexpbrno3$sqrtBR.T) #shape of distribution not changed, just fewer columns
GHexpbrno3$rankBR.T  <- rank(GHexpbrno3$BR.T)
#See above plot about deleting outliers...cannot do!!

#Does replant have an effect
lmbrR  <- lm(sqrtBR.T~Replant, data=GHexp)
lmbrRx  <- lm(sqrtBR.T~1, data=GHexp)
anova(lmbrRx, lmbrR) #Replant not significant p=0.703 F=0.35

#lmer vs lm
lmebraaa <- lmer(sqrtBR.T~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmebr <- lmer(sqrtBR.T~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmebra <- lmer(sqrtBR.T~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmebraa <- lmer(sqrtBR.T~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmebr, lmebra) #p=1 chisq=0 AIC=570.38 AICa=568.38*, site not sig
anova(lmebr, lmebraa) #p=1 chisq=0 AICaa=568.38*, tote not sig
anova(lmebr, lmebraaa) #p=1.0 chisq=0.0027 AICaa=574.37, zone not sig
0.5*(1-pchisq(0, 1)) #=0.5 
0.5*(1-pchisq(0, 1)) #=0.5 
0.5*((1-pchisq(0.0027, 1))+(1-pchisq(0.0027, 2))) #=0.98
lmbr <- lm(sqrtBR.T~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmbr, REML=T) +2*logLik(lmebr, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmbr) #566.38
AIC(lmebr) #584.73
#sqrt: logLik=0.23, p=0.44, random effects not sig

#check assumptions of best model
lmebrR <- resid(lmebr) 
lmebrF <- fitted(lmebr)
plot(lmebrF, lmebrR) #lm: sqrt is good
abline(h=0, col=c("red"))
hist(lmebrR) #lm: sqrt good
qqnorm(lmebrR, main="Q-Q plot for residuals") 
qqline(lmebrR) #lm: none are good... go with sqrt

#lmer
lmebr <- lmer(sqrtBR.T~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmebrb  <- update(lmebr,~.-Zone:DTRTMT:SSTRTMT)
anova(lmebrb, lmebr) #3way not sig p=0.933 f=0.0071
lmebrc  <- update(lmebrb,~.-Zone:DTRTMT)
anova(lmebrc, lmebrb) #Zone:D not sig p=0.944 f=0.0048
lmebrd  <- update(lmebrb,~.-Zone:SSTRTMT)
anova(lmebrd, lmebrb) #Zone:SS not sig p=0.108 f=2.58
lmebre  <- update(lmebrb,~.-DTRTMT:SSTRTMT)
anova(lmebre, lmebrb) #D:SS is sig p=0.0001 f=14.56 *
lmebr2 <- lmer(sqrtBR.T~Zone+DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmebr2b  <- update(lmebr2,~.-Zone)
anova(lmebr2b, lmebr2) #Zone is marginally non sig p=0.082 f=3.021
lmebr3 <- lmer(sqrtBR.T~SSTRTMT+DTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmebr3b  <- update(lmebr3,~.-SSTRTMT)
anova(lmebr3b, lmebr3) #SS is sig p=<0.0001 f=17.72
lmebr3c  <- update(lmebr3,~.-DTRTMT)
anova(lmebr3c, lmebr3) #D not sig p=0.19 f=1.708
lmebrF <- lmer(sqrtBR.T~DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmebrF)
#random: tote var=0, site var=0.0052, resid=0.704
#fixed: intercept=1.044, d est= -0.28, ss est=0.32, d:ss est=0.90

#check assumptions of best model
lmebrFR <- resid(lmebrF) 
lmebrFF <- fitted(lmebrF)
plot(lmebrFF, lmebrFR) #lme: sqrt is best, one group has less resid variation
abline(h=0, col=c("red"))
hist(lmebrFR) #lme: sqrt best, skew left
qqnorm(lmebrFR, main="Q-Q plot for residuals") 
qqline(lmebrFR) #lme: none are good... go with sqrt, long right tail and stepwise pattern

GHbrF <- summarySE(GHexp, measurevar="sqrtBR.T", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHbrF2 <- summarySE(GHexp, measurevar="sqrtBR.T", groupvars=c("SSTRTMT", "DTRTMT")) 
ggplot(data=GHbF2r, aes(x=DTRTMT, y=sqrtBR.T, group=SSTRTMT)) +
  geom_errorbar(aes(ymin=sqrtBR.T-se, ymax=sqrtBR.T+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(~SSTRTMT, labeller=ss_labeller) +
  xlab("Density") + ylab(expression(bold(sqrt(Total~Branches)))) +
  ggtitle("Mean sqrt Total Branches by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

aovbrds  <- aov(sqrtBR.T~DTRTMT:SSTRTMT, data=GHexp)
TukeyHSD(aovbrds)
#               diff         lwr       upr     p adj
#LD:C-HD:C   -0.2758500 -0.70511677 0.1534168 0.3455339
#HD:SS-HD:C   0.3167624 -0.04603424 0.6795591 0.1106596
#LD:SS-HD:C   0.9388238  0.50955698 1.3680905 0.0000003 ***
#HD:SS-LD:C   0.5926124  0.16334561 1.0218792 0.0024250 **
#LD:SS-LD:C   1.2146737  0.72793097 1.7014165 0.0000000 ***
#LD:SS-HD:SS  0.6220614  0.19279457 1.0513281 0.0012787 **

  #Low density plants differed between saltwater and freshwater spray
  #Salt-sprayed plants differed between high and low densities

#********************
##Response Variable: Chl.mean
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Chl.mean))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Mean Chlorophyll") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Mean Chlorophyll by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: possible differences between treatments

ggplot(data=GHexp, aes(x=TRTMT, y=Chl.mean))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Mean Chlorophyll") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Mean Chlorophyll by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#no outliers

GHchlm <- summarySE(GHexp, measurevar="Chl.mean", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHchlm, aes(x=DTRTMT, y=Chl.mean, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Chl.mean-se, ymax=Chl.mean+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Mean Chlorophyll") +
  ggtitle("Mean Mean Chlorophyll by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#outliers
mean(GHexp$Chl.mean, na.rm=TRUE)
sd(GHexp$Chl.mean, na.rm=TRUE)
36.64+(3*6.302) #=55.55 outliers = none

#distribution
hist(GHexp$Chl.mean) #good


#Does replant have an effect
lmchlmR  <- lm(Chl.mean~Replant, data=GHexp)
lmchlmRx  <- lm(Chl.mean~1, data=GHexp)
anova(lmchlmRx, lmchlmR) #Replant marginally not significant p=0.082 F=2.54

#lmer vs lm
lmechlmaaa <- lmer(Chl.mean~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmechlm <- lmer(Chl.mean~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmechlma <- lmer(Chl.mean~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmechlmaa <- lmer(Chl.mean~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmechlm, lmechlma) #p=0.55 chisq=0.35 AIC=1306.1 AICa=1304.5*, site not sig
anova(lmechlm, lmechlmaa) #p=0.15 chisq=2.107 AICaa=1306.2, tote not sig
anova(lmechlm, lmechlmaaa) #p=0.99 chisq=0.013 AICaa=1310.1, zone not sig
0.5*(1-pchisq(0.35, 1)) #=0.28 
0.5*(1-pchisq(2.107, 1)) #=0.073 
0.5*((1-pchisq(0.013, 1))+(1-pchisq(0.013, 2))) #=0.95
lmchlm <- lm(Chl.mean~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmchlm, REML=T) +2*logLik(lmechlm, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmchlm) #1304.37
AIC(lmechlm) #1287.87
#sqrt: logLik=4.57, p=0.0509, random effects are marginally non sig 

#check assumptions of best model
lmechlmaR <- resid(lmechlma) 
lmechlmaF <- fitted(lmechlma)
plot(lmechlmaF, lmechlmaR) #lme: raw is good, rank is best
abline(h=0, col=c("red"))
hist(lmechlmaR) #lme: raw is good, but rank is best
qqnorm(lmechlmaR, main="Q-Q plot for residuals") 
qqline(lmechlmaR) #lme: rank is best

#lmer
lmechlm <- lmer(Chl.mean~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmechlmb  <- update(lmechlm,~.-Zone:DTRTMT:SSTRTMT)
anova(lmechlmb, lmechlm) #3way not sig p=0.152 chisq=1.96
lmechlmc  <- update(lmechlmb,~.-Zone:DTRTMT)
anova(lmechlmc, lmechlmb) #Zone:D not sig p=0.31 chisq=1.02
lmechlmd  <- update(lmechlmb,~.-Zone:SSTRTMT)
anova(lmechlmd, lmechlmb) #Zone:SS not sig p=0.14 chisq=2.17
lmechlme  <- update(lmechlmb,~.-DTRTMT:SSTRTMT)
anova(lmechlme, lmechlmb) #D:SS not sig p=0.25 chisq=1.309
lmechlm2 <- lmer(Chl.mean~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmechlm2b  <- update(lmechlm2,~.-Zone)
anova(lmechlm2b, lmechlm2) #Zone not sig p=0.75 chisq=0.097
lmechlm2b  <- update(lmechlm2,~.-DTRTMT)
anova(lmechlm2b, lmechlm2) #D is sig p=0.046 chisq=3.99 *
lmechlm2b  <- update(lmechlm2,~.-SSTRTMT)
anova(lmechlm2b, lmechlm2) #SS is sig p=<0.0001 chisq=18.17
lmechlmF <- lmer(Chl.mean~DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmechlmF)
#random: tote var=2.38, site var=0.53, resid=27.65
#fixed: intercept=38.87, D est=2.13, SS est= -5.8

#check assumptions of best model
lmechlmFR <- resid(lmechlmF) 
lmechlmFF <- fitted(lmechlmF)
plot(lmechlmFF, lmechlmFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmechlmFR) #lm: raw is good
qqnorm(lmechlmFR, main="Q-Q plot for residuals") 
qqline(lmechlmFR) #lm: raw is good

GHchlmF <- summarySE(GHexp, measurevar="Chl.mean", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone"))
GHchlmFa <- summarySE(GHexp, measurevar="Chl.mean", groupvars=c("SSTRTMT"))
GHchlmFb <- summarySE(GHexp, measurevar="Chl.mean", groupvars=c("DTRTMT"))
GHchlmF2 <- summarySE(GHexp, measurevar="Chl.mean", groupvars=c("SSTRTMT", "DTRTMT")) 
ggplot(data=GHchlmF2, aes(x=DTRTMT, y=Chl.mean, group=SSTRTMT)) +
  geom_errorbar(aes(ymin=Chl.mean-se, ymax=Chl.mean+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(~SSTRTMT, labeller=ss_labeller) +
  xlab("Density") + ylab("Mean Chlorophyll") +
  ggtitle("Mean Mean Chlorophyll by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#********************
##Response Variable: StemD.Diff
#boxplot
ggplot(data=GHexpsdno1, aes(x=TRTMT, y=StemD.Diff))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Change in Stem Diameter (cm)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Stem Diameter Diff. by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: clear differences between treatments
ggplot(data=GHexp, aes(x=TRTMT, y=StemD.Diff))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Change in Stem Diameter (cm)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Stem Diameter Diff. by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#remove one outlier

GHsd <- summarySE(GHexpsdno1, measurevar="StemD.Diff", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHsd, aes(x=DTRTMT, y=StemD.Diff, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=StemD.Diff-se, ymax=StemD.Diff+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Change in Stem Diameter (cm)") +
  ggtitle("Mean Stem Diameter Diff. by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#outliers
mean(GHexp$StemD.Diff, na.rm=TRUE)
sd(GHexp$StemD.Diff, na.rm=TRUE)
-0.132+(3*1.543) #=4.497, -4.761 outliers = 181...

#distribution
GHexpsdno1  <- GHexp[-c(181),]
GHexpsdno1$logStemD.Diff  <- log10(GHexpsdno1$StemD.Diff+10)
GHexpsdno1$sqrtStemD.Diff  <- sqrt(GHexpsdno1$StemD.Diff+10.5)
GHexpsdno1$rankStemD.Diff  <- rank(GHexpsdno1$StemD.Diff)
hist(GHexpsdno1$StemD.Diff) #raw okay
hist(GHexp$StemD.Diff) #removing outlier is much better distribution
GHexpsdno1$rankStemD.Diff  <- rank(GHexpsdno1$StemD.Diff)


#Does replant have an effect
lmsdR  <- lm(rankStemD.Diff~Replant, data=GHexpsdno1)
lmsdRx  <- lm(rankStemD.Diff~1, data=GHexpsdno1)
anova(lmsdRx, lmsdR) #Replant not significant p=0.456 F=0.79

#lmer vs lm
lmesdaaa <- lmer(rankStemD.Diff~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexpsdno1)
lmesd <- lmer(rankStemD.Diff~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpsdno1)
lmesda <- lmer(rankStemD.Diff~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexpsdno1)
lmesdaa <- lmer(rankStemD.Diff~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexpsdno1)
anova(lmesd, lmesda) #p=0.0072 chisq=7.22 AIC=2467.1* AICa=2472.3, site is sig
anova(lmesd, lmesdaa) #p-0.15 chisq=2.019 AICaa=2467.2, tote not sig
anova(lmesd, lmesdaaa) #p=1.0 chisq=0.0008 AICaa=2471.1, zone not sig
0.5*(1-pchisq(7.22, 1)) #=0.0036 
0.5*(1-pchisq(2.019, 1)) #=0.078 
0.5*((1-pchisq(0.0008, 1))+(1-pchisq(0.0008, 2))) #=0.99
lmsd <- lm(rankStemD.Diff~Zone*DTRTMT*SSTRTMT, data=GHexpsdno1)
x <- -2*logLik(lmsd, REML=T) +2*logLik(lmesd, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmsd) #2471.66
AIC(lmesd) #2410.004 *
#sqrt: logLik=11.77, p=0.0014, random effects are sig

#check assumptions of best model
lmesdR <- resid(lmesd) 
lmesdF <- fitted(lmesd)
plot(lmesdF, lmesdR) #lme: rank is good
abline(h=0, col=c("red"))
hist(lmesdR) #lme: rank is good
qqnorm(lmesdR, main="Q-Q plot for residuals") 
qqline(lmesdR) #lme: rank is good

#lmer
lmesd <- lmer(rankStemD.Diff~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpsdno1)
lmesdb  <- update(lmesd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmesdb, lmesd) #3way not sig p=0.52 chisq=0.41
lmesdc  <- update(lmesdb,~.-Zone:DTRTMT)
anova(lmesdc, lmesdb) #Zone:D not sig p=0.31 chisq=1.037
lmesdd  <- update(lmesdb,~.-Zone:SSTRTMT)
anova(lmesdd, lmesdb) #Zone:SS not sig p=0.73 chisq=0.12
lmesde  <- update(lmesdb,~.-DTRTMT:SSTRTMT)
anova(lmesde, lmesdb) #D:SS not sig p=0.32 chisq=0.98
lmesd3 <- lmer(rankStemD.Diff~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexpsdno1)
lmesd3b  <- update(lmesd3,~.-Zone)
anova(lmesd3b, lmesd3) #Zone not sig p=0.57 chisq=0.32
lmesd3c  <- update(lmesd3,~.-DTRTMT)
anova(lmesd3c, lmesd3) #D marginally non sig p=0.071 chisq=3.25
lmesd3d  <- update(lmesd3,~.-SSTRTMT)
anova(lmesd3d, lmesd3) #SS is sig p=0.0007 chisq=11.505
lmesdF <- lmer(rankStemD.Diff~SSTRTMT+(1|Tote)+(1|Site), data=GHexpsdno1)
summary(lmesdF)
#random: tote var=305.9, site var=343.0, resid=3249.9
#fixed: intercept=89.23,  ss est=42.50

#check assumptions of best model
lmesdFR <- resid(lmesdF) 
lmesdFF <- fitted(lmesdF)
plot(lmesdFF, lmesdFR) #lme: good
abline(h=0, col=c("red"))
hist(lmesdFR) #lme: good
qqnorm(lmesdFR, main="Q-Q plot for residuals") 
qqline(lmesdFR) #lme: good

GHsdF <- summarySE(GHexpsdno1, measurevar="rankStemD.Diff", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHsdF2 <- summarySE(GHexpsdno1, measurevar="rankStemD.Diff", groupvars=c("SSTRTMT", "Site")) 
ggplot(data=GHsdF2, aes(x=SSTRTMT, y=rankStemD.Diff, group=Site, shape=Site)) +
  geom_errorbar(aes(ymin=rankStemD.Diff-se, ymax=rankStemD.Diff+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  scale_shape_discrete(name  ="Site",
                       breaks=c("D", "M"),
                       labels=c("Darnley", "Martinique")) +
  xlab("Spray") + ylab("Ranked Change in \nStem Diameter (cm)") +
  ggtitle("Mean Stem Diameter Diff. by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Fresh", "Salt")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#********************
##Response Variable: Node.F
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Node.F))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Total Stem Nodes") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Total Stem Nodes by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: not much differences between treatments or zones
ggplot(data=GHexp, aes(x=TRTMT, y=Node.F))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Total Stem Nodes") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Total Stem Nodes by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#cannot remove outliers found below...this plot shows that points are fairly consolidated 

GHnf <- summarySE(GHexp, measurevar="Node.F", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHnf, aes(x=DTRTMT, y=Node.F, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Node.F-se, ymax=Node.F+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Total Stem Nodes") +
  ggtitle("Mean Total Stem Nodes by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$Node.F) #raw is great!

#outliers
mean(GHexp$Node.F, na.rm=TRUE)
sd(GHexp$Node.F, na.rm=TRUE)
8.42+(3*1.92) #=14.18, outliers = none

#Does replant have an effect
lmnfR  <- lm(Node.F~Replant, data=GHexp)
lmnfRx  <- lm(Node.F~1, data=GHexp)
anova(lmnfRx, lmnfR) #Replant is significant p=0.036 F=3.39

#lmer vs lm
lmenfaaa <- lmer(Node.F~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1+Zone|Site), data=GHexp)
lmenf <- lmer(Node.F~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmenfa <- lmer(Node.F~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote), data=GHexp)
lmenfaa <- lmer(Node.F~Zone*DTRTMT*SSTRTMT+Replant+(1|Site), data=GHexp)
anova(lmenf, lmenfa) # p=0.543 chisq=0.37 AIC=735.86 AICa=734.23*, site not sig
anova(lmenf, lmenfaa) #p=0.12 chisq=2.47 AICaa=736.33, tote not sig
anova(lmenf, lmenfaaa) #p=0.57 chisq=1.11 AICaa=738.74, zone not sig
0.5*(1-pchisq(0.37, 1)) #=0.27 
0.5*(1-pchisq(2.47, 1)) #=0.058 
0.5*((1-pchisq(1.11, 1))+(1-pchisq(1.11, 2))) #=0.43
lmnf <- lm(Node.F~Zone*DTRTMT*SSTRTMT+Replant, data=GHexp)
x <- -2*logLik(lmnf, REML=T) +2*logLik(lmenf, REML=T)
x
0.5*(pchisq(x, df=11, lower.tail=F))
AIC(lmnf) #734.38
AIC(lmenf) #731.65
#sqrt: logLik=5.14, p=0.462, random effects not sig

#check assumptions of best model
lmenfR <- resid(lmenf) 
lmenfF <- fitted(lmenf)
plot(lmenfF, lmenfR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmenfR) #lm: raw great
qqnorm(lmenfR, main="Q-Q plot for residuals") 
qqline(lmenfR) #lm: raw great

#lmer
lmenf <- lmer(Node.F~Zone*DTRTMT*SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmenfb  <- update(lmenf,~.-Zone:DTRTMT:SSTRTMT)
anova(lmenfb, lmenf) #3way not sig p=0.302 chisq=1.064
lmenfc  <- update(lmenfb,~.-Zone:DTRTMT)
anova(lmenfc, lmenfb) #Zone:D not sig p=0.30 chisq=1.074
lmenfd  <- update(lmenfb,~.-Zone:SSTRTMT)
anova(lmenfd, lmenfb) #Zone:SS not sig p=0.76 chisq=0.095
lmenfe  <- update(lmenfb,~.-DTRTMT:SSTRTMT)
anova(lmenfe, lmenfb) #D:SS not sig p=0.509 chisq=0.44
lmenf2 <- lmer(Node.F~Zone+DTRTMT+SSTRTMT+Replant+(1|Tote)+(1|Site), data=GHexp)
lmenf2b  <- update(lmenf2,~.-Zone)
anova(lmenf2b, lmenf2) #Zone is sig p=0.0088 chisq=6.87 **
lmenf2c  <- update(lmenf2,~.-DTRTMT)
anova(lmenf2c, lmenf2) #D marginally non sig p=0.094 chisq=2.809
lmenf2d  <- update(lmenf2,~.-SSTRTMT)
anova(lmenf2d, lmenf2) #SS not sig p=0.29 chisq=1.122
lmenf2e  <- update(lmenf2,~.-Replant)
anova(lmenf2e, lmenf2) #Replant marginally non sig p=0.056 chisq=5.77
lmenfF <- lmer(Node.F~Zone+(1|Tote)+(1|Site), data=GHexp)
summary(lmenfF)
#random: tote var=0.33, site var=0.109, resid=3.24
#fixed: intercept=8.78, zone est= -0.703


#check assumptions of best model
lmnfFR <- resid(lmnfF) 
lmnfFF <- fitted(lmnfF)
plot(lmnfFF, lmnfFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmnfFR) #lm: raw great
qqnorm(lmnfFR, main="Q-Q plot for residuals") 
qqline(lmnfFR) #lm: raw good

GHnfF <- summarySE(GHexp, measurevar="Node.F", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone"))
GHnfF2 <- summarySE(GHexp, measurevar="Node.F", groupvars=c("Zone")) 
ggplot(data=GHnfF2, aes(x=Zone, y=Node.F)) +
  geom_errorbar(aes(ymin=Node.F-se, ymax=Node.F+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  xlab("Zone") + ylab("Total Stem Nodes") +
  ggtitle("Mean Total Stem Nodes by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Beach", "Dune")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


ggplot(data=GHexp, aes(x=Zone, y=Node.F))+
  geom_boxplot(width=0.8, position="dodge")+ 
  ylab("Total Stem Nodes") +
  scale_x_discrete(name="Zone",
                   breaks=c("1", "2"),
                   labels=c("Beach", "Dune"))+
  ggtitle("Total Stem Nodes by Zone")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#********************
##Response Variable: WatC
#boxplot
ggplot(data=GHexpwcno1, aes(x=TRTMT, y=WatC))+
  geom_boxplot(aes(fill=Site.Zone), width=0.8, position="dodge")+ 
  ylab("Water Content (%)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("D.1", "D.2", "M.1", "M.2"),
                    labels=c("Darnley Beach", "Darnley Dune", "Martinique Beach", "Martinique Dune"),
                    values=c("#FFFFFF", "#666666", "#CCCCCC", "#000000"))+
  ggtitle("Water Content by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: not much differences between treatments or zones
ggplot(data=GHexp, aes(x=TRTMT, y=WatC))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Water Content") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Water Content by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#one outlier to be removed

GHwc <- summarySE(GHexp, measurevar="WatC", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHwc, aes(x=DTRTMT, y=WatC, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=WatC-se, ymax=WatC+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Water Content (%)") +
  ggtitle("Mean Water Content by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$WatC) #raw is best, skew left... outlier to remove

#outliers
mean(GHexp$WatC, na.rm=TRUE)
sd(GHexp$WatC, na.rm=TRUE)
0.165+(3*0.0986) #=0.4608, outliers = 73, 181

GHexpwcno1  <- GHexp[-c(181),]
GHexpwcno1$logWatC  <- log10(GHexpwcno1$WatC+1)
GHexpwcno1$sqrtWatC  <- sqrt(GHexpwcno1$WatC+0.5)
GHexpwcno1$rankWatC  <- rank(GHexpwcno1$WatC, na.last="keep")
hist(GHexp$WatC)
hist(GHexpwcno1$WatC) #log not much better than raw

#Does replant have an effect
lmwcR  <- lm(WatC~Replant, data=GHexpwcno1)
lmwcRx  <- lm(WatC~1, data=GHexpwcno1)
anova(lmwcRx, lmwcR) #Replant not significant p=0.492 F=0.71

#lmer vs lm
lmewcaaa <- lmer(WatC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexpwcno1)
lmewc <- lmer(WatC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpwcno1)
lmewca <- lmer(WatC~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexpwcno1)
lmewcaa <- lmer(WatC~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexpwcno1)
anova(lmewc, lmewca) #p=<0.0001 chisq=20.302 AIC= -629.92* AICa= -611.62, site is sig
anova(lmewc, lmewcaa) #p=1 chisq=0 AICaa= -631.92*, tote not sig
anova(lmewc, lmewcaaa) #p=0.87 chisq=0.27 AICaaa= -626.19, zone not sig
0.5*(1-pchisq(20.302, 1)) #<0.0001 
0.5*(1-pchisq(0, 1)) #=0.5 
0.5*((1-pchisq(0.27, 1))+(1-pchisq(0.27, 2))) #=0.74
lmwc <- lm(WatC~Zone*DTRTMT*SSTRTMT, data=GHexpwcno1)
x <- -2*logLik(lmwc, REML=T) +2*logLik(lmewc, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmwc) #-613.62
AIC(lmewc) #-573.903
#logLik=22.27, p=<0.0001, random effects are sig

#check assumptions of best model
lmewcR <- resid(lmewc) 
lmewcF <- fitted(lmewc)
plot(lmewcF, lmewcR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmewcR) #lm: raw good
qqnorm(lmewcR, main="Q-Q plot for residuals") 
qqline(lmewcR) #lm: transform does not change plot..raw is best

#lmer
lmewc <- lmer(WatC~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpwcno1)
lmewcb  <- update(lmewc,~.-Zone:DTRTMT:SSTRTMT)
anova(lmewcb, lmewc) #3way not sig p=0.39 chisq=0.75
lmewcc  <- update(lmewcb,~.-Zone:DTRTMT)
anova(lmewcc, lmewcb) #Zone:D not sig p=0.16 chisq=1.94
lmewcd  <- update(lmewcb,~.-Zone:SSTRTMT)
anova(lmewcd, lmewcb) #Zone:SS not sig p=0.56 chisq=0.33
lmewce  <- update(lmewcb,~.-DTRTMT:SSTRTMT)
anova(lmewce, lmewcb) #D:SS not sig p=0.98 chisq=0.0008
lmewc2 <- lmer(WatC~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexpwcno1)
lmewc2b  <- update(lmewc2,~.-Zone)
anova(lmewc2b, lmewc2) #Zone not sig p=0.22 chisq=1.48
lmewc2c  <- update(lmewc2,~.-DTRTMT)
anova(lmewc2c, lmewc2) #D not sig p=0.89 chisq=0.018
lmewc2d  <- update(lmewc2,~.-SSTRTMT)
anova(lmewc2d, lmewc2) #SS is sig p=<0.0001 chisq=19.77
lmewcF <- lmer(WatC~SSTRTMT+(1|Tote)+(1|Site), data=GHexpwcno1)
summary(lmewcF)
#random: tote var=0.0000089, site var=0.00069, resid=0.0025
#fixed: intercept=0.182, SS est= -0.043

GHwcF <- summarySE(GHexp, measurevar="WatC", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHwcF2 <- summarySE(GHexp, measurevar="WatC", groupvars=c("SSTRTMT", "Site")) 
ggplot(data=GHwcF2, aes(x=SSTRTMT, y=WatC, group=Site, shape=Site)) +
  geom_errorbar(aes(ymin=WatC-se, ymax=WatC+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  scale_shape_discrete(name  ="Site",
                       breaks=c("D", "M"),
                       labels=c("Darnley", "Martinique")) +
  xlab("Spray") + ylab("Water Content (%)") +
  ggtitle("Mean Water Content by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("Fresh", "Salt")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#********************
##Response Variable: PrpnPD
#boxplot
ggplot(data=GHexpwcno1, aes(x=TRTMT, y=PrpnPD))+
  geom_boxplot(aes(fill=Site.Zone), width=0.8, position="dodge")+ 
  ylab("Seed Ratio (Proximal:Distal)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("D.1", "D.2", "M.1", "M.2"),
                    labels=c("Darnley Beach", "Darnley Dune", "Martinique Beach", "Martinique Dune"),
                    values=c("#FFFFFF", "#666666", "#CCCCCC", "#000000"))+
  ggtitle("Seed Ratio by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#NOTE: not much differences between treatments or zones
ggplot(data=GHexp, aes(x=TRTMT, y=PrpnPD))+
  geom_point(aes(shape=Zone), width=0.8, position="dodge")+ 
  ylab("Seed Ratio") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Fresh:High", "Salt:Low", "Salt:High"))+
  scale_fill_manual(name="Zone",
                    breaks=c("1", "2"),
                    labels=c("Beach", "Dune"),
                    values=c("#FFFFFF", "#000000"))+
  ggtitle("Seed Ratio by Treatment")+
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))
#no outliers to be removed

GHpd <- summarySE(GHexp, measurevar="PrpnPD", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHpd, aes(x=DTRTMT, y=PrpnPD, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=PrpnPD-se, ymax=PrpnPD+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Seed Ratio (Proximal:Distal)") +
  ggtitle("Mean Seed Ratio by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

#distribution
hist(GHexp$sqrtPrpnPD) #none are good

#outliers
mean(GHexp$PrpnPD, na.rm=TRUE)
sd(GHexp$PrpnPD, na.rm=TRUE)
0.523+(3*0.485) #=1.978, outliers = 107, 180, 199, 209

GHexppdno1  <- GHexp[-c(107, 180, 199, 209),]
GHexppdno1$logPrpnPD  <- log10(GHexppdno1$PrpnPD+1)
GHexppdno1$sqrtPrpnPD  <- sqrt(GHexppdno1$PrpnPD+0.5)
GHexppdno1$rankPrpnPD  <- rank(GHexppdno1$PrpnPD, na.last="keep")
hist(GHexp$PrpnPD)
hist(GHexppdno1$PrpnPD) #not diff than with outliers

#Does replant have an effect
lmpdR  <- lm(PrpnPD~Replant, data=GHexp)
lmpdRx  <- lm(PrpnPD~1, data=GHexp)
anova(lmpdRx, lmpdR) #Replant not significant p=0.352 F=1.049

#lmer vs lm
lmepdaaa <- lmer(PrpnPD~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1+Zone|Site), data=GHexp)
lmepd <- lmer(PrpnPD~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmepda <- lmer(PrpnPD~Zone*DTRTMT*SSTRTMT+(1|Tote), data=GHexp)
lmepdaa <- lmer(PrpnPD~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
anova(lmepd, lmepda) #p=0.42 chisq=0.64 AIC=323.09 AICa=321.73*, site not sig
anova(lmepd, lmepdaa) #p=0.44 chisq=0.59 AICaa=321.68*, tote not sig
anova(lmepd, lmepdaaa) #p=0.85 chisq=0.33 AICaa=326.76, zone not sig
0.5*(1-pchisq(0.64, 1)) #0.21 
0.5*(1-pchisq(0.59, 1)) #=0.22 
0.5*((1-pchisq(0.33, 1))+(1-pchisq(0.33, 2))) #=0.707
lmpd <- lm(PrpnPD~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmpd, REML=T) +2*logLik(lmepd, REML=T)
x
0.5*(pchisq(x, df=2, lower.tail=F))
AIC(lmpd) #320.17
AIC(lmepd) #344.61
#sqrt: logLik=2.94, p=0.115, random effects not sig

#check assumptions of best model
lmepdR <- resid(lmepd) 
lmepdF <- fitted(lmepd)
plot(lmepdF, lmepdR) #lme: raw is good
abline(h=0, col=c("red"))
hist(lmepdR) #lme: raw good
qqnorm(lmepdR, main="Q-Q plot for residuals") 
qqline(lmepdR) #lme: not good, transform does not change plot..raw is best

#lm
lmepd <- lmer(PrpnPD~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmepdb  <- update(lmepd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmepdb, lmepd) #3way not sig p=0.67 chisq=0.18
lmepdc  <- update(lmepdb,~.-Zone:DTRTMT)
anova(lmepdc, lmepdb) #Zone:D is sig p=0.046 chisq=3.99 *
lmepdd  <- update(lmepdb,~.-Zone:SSTRTMT)
anova(lmepdd, lmepdb) #Zone:SS not sig p=0.79 chisq=0.07
lmepde  <- update(lmepdb,~.-DTRTMT:SSTRTMT)
anova(lmepde, lmepdb) #D:SS not sig p=0.17 chisq=1.86
lmepd2 <- lmer(PrpnPD~Zone*DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmepd2b  <- update(lmepd2,~.-SSTRTMT)
anova(lmepd2b, lmepd2) #SS not sig p=0.708 chisq=0.14
lmepd3 <- lmer(PrpnPD~Zone+DTRTMT+(1|Tote)+(1|Site), data=GHexp)
lmepd3b  <- update(lmepd3,~.-Zone)
anova(lmepd3b, lmepd3) #Zone not sig p=0.268 chisq=1.23
lmepd3c  <- update(lmepd3,~.-DTRTMT)
anova(lmepd3c, lmepd3) #D not sig p=0.55 chisq=0.35
lmepdF <- lmer(PrpnPD~Zone*DTRTMT+(1|Tote)+(1|Site), data=GHexp)
summary(lmepdF)
#random: tote var=0.0088, site var=0.0058, resid=0.22
#fixed: intercept=0.59, zone est= -0.16, D est= -0.085, Zone:D est=0.26

#check assumptions of best model
lmepdFR <- resid(lmepdF) 
lmepdFF <- fitted(lmepdF)
plot(lmepdFF, lmepdFR) #lme: raw is okay
abline(h=0, col=c("red"))
hist(lmepdFR) #lme: raw okay, skew left
qqnorm(lmepdFR, main="Q-Q plot for residuals") 
qqline(lmepdFR) #lme: not good, transform does not change plot..raw is best

GHpdF <- summarySE(GHexp, measurevar="PrpnPD", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
GHpdF2 <- summarySE(GHexp, measurevar="PrpnPD", groupvars=c("DTRTMT", "Zone")) 
ggplot(data=GHpdF2, aes(x=DTRTMT, y=PrpnPD, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=PrpnPD-se, ymax=PrpnPD+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Seed Ratio (Proximal:Distal)") +
  ggtitle("Mean Seed Ratio by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  scale_x_discrete(labels=c("High", "Low")) +
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

aovpdzd  <- aov(PrpnPD~Zone:DTRTMT, data=GHexp)
TukeyHSD(aovpdzd)
  #             diff         lwr        upr     p adj
#2:HD-1:HD -0.16306611 -0.37123171 0.04509949 0.1808924
#1:LD-1:HD -0.08625421 -0.33255907 0.16005065 0.8013594
#2:LD-1:HD  0.01389816 -0.23240670 0.26020302 0.9988857
#1:LD-2:HD  0.07681190 -0.16949296 0.32311676 0.8509506
#2:LD-2:HD  0.17696427 -0.06934059 0.42326914 0.2484568
#2:LD-1:LD  0.10015237 -0.17913109 0.37943583 0.7896851

#*****************************
#data summary
write.table(GHR0dd, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE)
write.table(GHnl, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcfr, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcgr, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHtf, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHbr, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHchlm, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHsd, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHnf, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHwc, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHpd, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)

write.table(GHR0ddF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHnlF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcfrF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcgrF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHtfF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHbrF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHchlmF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHsdF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHnfF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHwcF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHpdF, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)

write.table(GHR0ddF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHnlF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcfrF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcgrF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHtfF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHbrF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHchlmF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHsdF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHnfF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHwcF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHpdF2, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)

write.table(GHcfrFa, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcfrFb, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcfrFc, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcgrFa, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHcgrFb, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHchlmFa, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)
write.table(GHchlmFb, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)

write.table(GHcgrFc, file = "GHexp variable summary.csv", sep = ",", col.names = TRUE, row.names = FALSE, append = TRUE)


#*****************************
#Correlations
#*****************************
#variables to consider: tfc, cot.fr, br.t, newl.d, ddflwf

#tfc~cot.fr
lmfcfr  <- lm(sqrtTFC~Cot.FR, data=GHexp, na.action="na.omit")
lmfcfrR  <- resid(lmfcfr)
par(mfrow=c(2,2))
plot(lmfcfr)
par(mfrow=c(1,1))
hist(lmfcfrR)

#tfc~br.t
lmfbr  <- lm(sqrtTFC~sqrtBR.T, data=GHexp, na.action="na.omit")
lmfbrR  <- resid(lmfbr)
par(mfrow=c(2,2))
plot(lmfbr)
par(mfrow=c(1,1))
hist(lmfbrR)

#tfc~newl.d
lmfnl  <- lm(sqrtTFC~rankNewL.D, data=GHexp, na.action="na.omit")
lmfnlR  <- resid(lmfnl)
par(mfrow=c(2,2))
plot(lmfnl)
par(mfrow=c(1,1))
hist(lmfnlR)

#tfc~ddflwf
lmfdd  <- lm(sqrtTFC~DDFLWF, data=GHexp, na.action="na.omit")
lmfddR  <- resid(lmfdd)
par(mfrow=c(2,2))
plot(lmfdd)
par(mfrow=c(1,1))
hist(lmfddR)

#cotfr~br.t
lmcfrbr  <- lm(Cot.FR~sqrtBR.T, data=GHexp, na.action="na.omit")
lmcfrbrR  <- resid(lmcfrbr)
par(mfrow=c(2,2))
plot(lmcfrbr)
par(mfrow=c(1,1))
hist(lmcfrbrR)

#cotfr~newl.d
lmcfrnl  <- lm(Cot.FR~rankNewL.D, data=GHexp, na.action="na.omit")
lmcfrnlR  <- resid(lmcfrnl)
par(mfrow=c(2,2))
plot(lmcfrnl)
par(mfrow=c(1,1))
hist(lmcfrnlR)

#cotfr~ddflwf
lmcfrdd  <- lm(Cot.FR~DDFLWF, data=GHexp, na.action="na.omit")
lmcfrddR  <- resid(lmcfrdd)
par(mfrow=c(2,2))
plot(lmcfrdd)
par(mfrow=c(1,1))
hist(lmcfrddR)

#brt~newl.d
lmbrnl  <- lm(sqrtBR.T~rankNewL.D, data=GHexp, na.action="na.omit")
lmbrnlR  <- resid(lmbrnl)
par(mfrow=c(2,2))
plot(lmbrnl)
par(mfrow=c(1,1))
hist(lmbrnlR)

#brt~ddflwf
lmbrdd  <- lm(sqrtBR.T~DDFLWF, data=GHexp, na.action="na.omit")
lmbrddR  <- resid(lmbrdd)
par(mfrow=c(2,2))
plot(lmbrdd)
par(mfrow=c(1,1))
hist(lmbrddR)

#newld~ddflwf
lmnldd  <- lm(rankNewL.D~DDFLWF, data=GHexp, na.action="na.omit")
lmnlddR  <- resid(lmnldd)
par(mfrow=c(2,2))
plot(lmnldd)
par(mfrow=c(1,1))
hist(lmnlddR)

cor.test(GHexp$sqrtTFC, GHexp$Cot.FR, method="pearson", na.action="na.omit") #r=0.25 p=0.00048 **
cor.test(GHexp$sqrtTFC, GHexp$sqrtBR.T, method="pearson", na.action="na.omit") #r=0.397 p=<0.0001 ***
cor.test(GHexp$sqrtTFC, GHexp$rankNewL.D, method="pearson", na.action="na.omit") #r= -0.065 p=0.34
cor.test(GHexp$sqrtTFC, GHexp$DDFLWF, method="pearson", na.action="na.omit") #r=0.47 p=<0.0001 ***
cor.test(GHexp$Cot.FR, GHexp$sqrtBR.T, method="pearson", na.action="na.omit") #r=0.0012 p=0.99
cor.test(GHexp$Cot.FR, GHexp$rankNewL.D, method="pearson", na.action="na.omit") #r= -0.15 p=0.039 *
cor.test(GHexp$Cot.FR, GHexp$DDFLWF, method="pearson", na.action="na.omit") #r=0.084 p=0.26
cor.test(GHexp$sqrtBR.T, GHexp$rankNewL.D, method="pearson", na.action="na.omit") #r=0.45 p=<0.0001 ***
cor.test(GHexp$sqrtBR.T, GHexp$DDFLWF, method="pearson", na.action="na.omit") #r=0.25 p=0.00067 **
cor.test(GHexp$rankNewL.D, GHexp$DDFLWF, method="pearson", na.action="na.omit") #r=0.077 p=0.309

ggplot(data=GHexp, aes(x=sqrtTFC, y=Cot.FR, group=Zone, colour=Zone)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=Zone),method=lm, se=FALSE, fullrange=T)+
  facet_grid(DTRTMT~SSTRTMT, labeller=ss_labeller) +
  scale_colour_manual(name="Zone", breaks=c("1", "2"), labels=c("Beach", "Dune"),
                       values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Stem Length (cm)") +
  ggtitle("TFC~Cot.FR by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

ggplot(data=GHexp, aes(x=sqrtTFC, y=Cot.FR, group=Zone, colour=Zone)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=Zone),method=lm, se=FALSE, fullrange=T)+
  scale_colour_manual(name="Zone", breaks=c("1", "2"), labels=c("Beach", "Dune"),
                      values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Stem Length (cm)") +
  ggtitle("TFC~Cot.FR by Zone") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

ggplot(data=GHexp, aes(x=sqrtTFC, y=Cot.FR, group=SSTRTMT, colour=SSTRTMT)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=SSTRTMT),method=lm, se=FALSE, fullrange=T)+
  scale_colour_manual(name="Spray", breaks=c("C", "SS"), labels=c("Fresh", "Salt"),
                      values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Stem Length (cm)") +
  ggtitle("TFC~Cot.FR by Spray") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

ggplot(data=GHexp, aes(x=sqrtTFC, y=Cot.FR, group=DTRTMT, colour=DTRTMT)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=DTRTMT),method=lm, se=FALSE, fullrange=T)+
  scale_colour_manual(name="Density", breaks=c("HD", "LD"), labels=c("High", "Low"),
                      values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Stem Length (cm)") +
  ggtitle("TFC~Cot.FR by Density") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

ggplot(data=GHexp, aes(x=sqrtTFC, y=sqrtBR.T, group=Zone, colour=Zone)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=Zone),method=lm, se=FALSE, fullrange=T)+
  facet_grid(DTRTMT~SSTRTMT, labeller=ss_labeller) +
  scale_colour_manual(name="Zone", breaks=c("1", "2"), labels=c("Beach", "Dune"),
                      values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab(expression(bold(sqrt(Total~Branches)))) +
  ggtitle("TFC~BR.T by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))

ggplot(data=GHexp, aes(x=sqrtTFC, y=DDFLWF, group=Zone, colour=Zone)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=Zone),method=lm, se=FALSE, fullrange=T)+
  facet_grid(DTRTMT~SSTRTMT, labeller=ss_labeller) +
  scale_colour_manual(name="Zone", breaks=c("1", "2"), labels=c("Beach", "Dune"),
                      values=c("#999999", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Flowering Duration (days)") +
  ggtitle("TFC~DDFLWF by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


#******************************
#ANCOVA like analysis
#******************************

#lmetfFR, 85, 127, 151, 163, 193
lmetfF <- lmer(sqrtTFC~DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpna)
lmetfFR  <- resid(lmetfF)
lmAtfRsig  <- lm(lmetfFR~Cot.FR*sqrtBR.T*DDFLWF, data=GHexpna)
lmAtfRsigb  <- update(lmAtfRsig,~.-Cot.FR:sqrtBR.T:DDFWLF)
anova(lmAtfRsigb, lmAtfRsig) #3way p= f=0
lmAtfRsigc  <- update(lmAtfRsigb,~.-Cot.FR:sqrtBR.T)
anova(lmAtfRsigc, lmAtfRsigb) #cot.fr p=0.93 f=0.0077
lmAtfRsigd  <- update(lmAtfRsigb,~.-Cot.FR:DDFWLF)
anova(lmAtfRsigd, lmAtfRsigb) #cot.fr p= f=0
lmAtfRsige  <- update(lmAtfRsigb,~.-sqrtBR.T:DDFWLF)
anova(lmAtfRsige, lmAtfRsigb) #cot.fr p= f=0
lmAtfRsig  <- lm(lmetfFR~Cot.FR+sqrtBR.T+DDFLWF, data=GHexpna)
lmAtfRsig2  <- update(lmAtfRsig,~.-Cot.FR)
anova(lmAtfRsig2, lmAtfRsig) #cot.fr p=<0.0001 f=17.78
lmAtfRsig3  <- update(lmAtfRsig,~.-sqrtBR.T)
anova(lmAtfRsig3, lmAtfRsig) #br.t p=<0.0001 f=16.021
lmAtfRsig4  <- update(lmAtfRsig,~.-DDFLWF)
anova(lmAtfRsig4, lmAtfRsig) #ddflwf p=<0.0001 f=19.69
lmAtfRsigF  <- lm(lmetfFR~Cot.FR+sqrtBR.T+DDFLWF, data=GHexpna)
summary(lmAtfRsigF)
#intercept= -1.026, cotfr est=0.027, brt est=0.16, ddflwf est=0.011
#R^2=0.27, F=22.66[3, 174], p=<0.0001

names(GHexp)
#sqrtTFC=66, Cot.FR=26, sqrtBR.T=69, DDFLWF=21
GHexpna <- GHexp[complete.cases(GHexp[,c(66, 26, 69, 21)]),]
pcor(GHexpna[,c(66, 26, 69, 21)], method="pearson")
  #$estimate
  #           sqrtTFC      Cot.FR    sqrtBR.T      DDFLWF
  #sqrtTFC  1.0000000  0.25365361  0.35041802  0.40365857
  #Cot.FR   0.2536536  1.00000000 -0.14391442 -0.01681136
  #sqrtBR.T 0.3504180 -0.14391442  1.00000000  0.07861695
  #DDFLWF   0.4036586 -0.01681136  0.07861695  1.00000000

  #$p.value
  #            sqrtTFC       Cot.FR     sqrtBR.T       DDFLWF
  #sqrtTFC  0.000000e+00 0.0005420869 8.004444e-07 5.890626e-09
  #Cot.FR   5.420869e-04 0.0000000000 5.506903e-02 8.244786e-01
  #sqrtBR.T 8.004444e-07 0.0550690339 0.000000e+00 2.982245e-01
  #DDFLWF   5.890626e-09 0.8244786132 2.982245e-01 0.000000e+00


ggplot(data=GHexp, aes(x=sqrtTFC, y=Cot.FR, group=TRTMT, colour=TRTMT)) +
  geom_point(size=4, position=position_dodge(0.1))+
  geom_smooth(aes(colour=TRTMT),method=lm, se=FALSE, fullrange=T)+
  scale_colour_manual(name="Treatment", breaks=c("1", "2", "3", "4"), 
                      labels=c("Low:Freshwater","High:Freshwater", "Low:Saltwater", 
                               "High:Saltwater"),
                      values=c("#CCCCCC", "#999999", "#333333", "#000000")) +
  xlab(expression(bold(sqrt(Lifetime~Fitness)))) + ylab("Stem Length (cm)") +
  ggtitle("TFC~Cot.FR by Treatment") +
  theme_bw() + theme(legend.justification=c(1,0), legend.position="top", 
                     legend.text=element_text(face="bold", size=18), 
                     legend.title=element_text(face="bold", size=18))+
  theme(strip.text.x = element_text(size=20, face="bold"))+
  theme(strip.text.y = element_text(size=20, face="bold")) +
  theme(axis.title.x = element_text(vjust=0.3, face="bold", size=20), 
        axis.text.x  = element_text(vjust=0.3, hjust=0.5, size=18, face="bold"))+
  theme(axis.title.y = element_text(vjust=1, face="bold", size=20),
        axis.text.y  = element_text(size=18, face="bold"))


lmAtfsig  <- lm(sqrtTFC~Cot.FR*sqrtBR.T*DDFLWF, data=GHexpna)
lmAtfsigR  <- resid(lmAtfsig)
lmetfR <- lmer(lmAtfsigR~Zone*DTRTMT*SSTRTMT+(1|Tote)+(1|Site), data=GHexpna)
lmetfRb  <- update(lmetfR,~.-Zone:DTRTMT:SSTRTMT)
anova(lmetfRb, lmetfR) #3way not sig p=0.902 chisq=0.015
lmetfRc  <- update(lmetfRb,~.-Zone:DTRTMT)
anova(lmetfRc, lmetfRb) #Zone:D not sig p=0.36 chisq=0.83
lmetfRd  <- update(lmetfRb,~.-Zone:SSTRTMT)
anova(lmetfRd, lmetfRb) #Zone:SS not sig p=0.56 chisq=0.34
lmetfRe  <- update(lmetfRb,~.-DTRTMT:SSTRTMT)
anova(lmetfRe, lmetfRb) #D:SS not sig p=0.26 chisq=1.28
lmetfR2 <- lmer(lmAtfsigR~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexpna)
lmetfR2b  <- update(lmetfR2,~.-Zone)
anova(lmetfR2b, lmetfR2) #Zone not sig p=0.38 chisq=0.76
lmetfR2c  <- update(lmetfR2,~.-DTRTMT)
anova(lmetfR2c, lmetfR2) #D not sig p=0.33 chisq=0.95
lmetfR2d  <- update(lmetfR2,~.-SSTRTMT)
anova(lmetfR2d, lmetfR2) #SS not sig p=0.93 chisq=0.0068
lmetfRF <- lmer(lmAtfsigR~Zone+DTRTMT+SSTRTMT+(1|Tote)+(1|Site), data=GHexpna)
summary(lmetfRF)
#random: tote var=0.036, site var=0.000, resid=0.27
#fixed: intercept= -0.077, zone est=0.065, d est=0.11, s est= -0.005
#none of the factors are sig after accounting for variation in fitness
  #explained by plant traits (stem length, branches, and flowering duration)
