setwd("/Users/mac/Google Drive/R Datasets/GH Exp")
GHexp  <- read.csv("GHexp 2013_fin.csv")

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
ggplot(data=GHexp, aes(x=TRTMT, y=DDFLWF))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Flowering Duration (days)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Salt:Low", "Fresh:High", "Salt:High"))+
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
#create plot using summarySE function output and DDFLWF
GHdd <- summarySE(GHexp, measurevar="DDFLWF", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHdd, aes(x=DTRTMT, y=DDFLWF, group=Zone, shape=Zone)) +
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
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1|Site), data=GHexp)
lmdd <- lm(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant, data=GHexp)
x <- -2*logLik(lmdd, REML=T) +2*logLik(lmedd, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmdd) #=1488.02
AIC(lmedd) #=1440.198
#logLik=6.57, p=0.037, random Site is sig

#check assumptions of best model
lmeddR <- resid(lmedd) 
lmeddF <- fitted(lmedd)
plot(lmeddF, lmeddR) #raw is acceptable
abline(h=0, col=c("red"))
#fairly homogeneous variation
hist(lmeddR) #raw better than log
qqnorm(lmeddR, main="Q-Q plot for residuals") 
qqline(lmeddR) #raw is best


#continue with lmer() to find best model
lmedd2 <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+Replant+(1+Zone|Site), data=GHexp)
anova(lmedd, lmedd2) 
#Random slope is best, p=0.962 chisq=0.078
lmedda <- update(lmedd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmedda, lmedd)
#3Interact not sig, p=0.3332 chisq=0.936
lmeddb <- update(lmedda,~.-Zone:DTRTMT)
anova(lmeddb, lmedda)
#Zone:D not sig, p=0.563 chisq=0.334
lmeddc <- update(lmedda,~.-Zone:SSTRTMT)
anova(lmeddc, lmedda)
#Zone:SS not sig, p=0.63 chisq=0.232
lmeddd <- update(lmedda,~.-DTRTMT:SSTRTMT)
anova(lmeddd, lmedda)
#D:SS is sig, p=0.048 chisq=3.903
lmeddbc <- lmer(DDFLWF~DTRTMT*SSTRTMT+Zone+Replant+(1|Site), data=GHexp)
lmeddbc2 <- update(lmeddbc,~.-Zone)
anova(lmeddbc2, lmeddbc)
#Zone not sig, p=0.202 chisq=1.625
lmeddbc3 <- update(lmeddbc,~.-Replant)
anova(lmeddbc3, lmeddbc)
#Replant is sig, p=0.011 chisq=8.93
lmeddF <- lmer(DDFLWF~DTRTMT*SSTRTMT+Replant+(1|Site), data=GHexp)
#replant sig, therefore must use data=GHexpR0

#lmer vs lm (GHexpR0= removed replants)
lmedd <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexpR0)
lmdd <- lm(DDFLWF~Zone*DTRTMT*SSTRTMT, data=GHexpR0)
x <- -2*logLik(lmdd, REML=T) +2*logLik(lmedd, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmdd) #=1488.02
AIC(lmedd) #=1440.198
#logLik=4.79, p=0.091, random Site marginally non sig... but keep in

#check assumptions of best model
lmeddR <- resid(lmedd) 
lmeddF <- fitted(lmedd)
plot(lmeddF, lmeddR) #raw is acceptable
abline(h=0, col=c("red"))
#fairly homogeneous variation
hist(lmeddR) #raw better than log
qqnorm(lmeddR, main="Q-Q plot for residuals") 
qqline(lmeddR) #raw is best


#continue with lmer() to find best model
lmedd2 <- lmer(DDFLWF~Zone*DTRTMT*SSTRTMT+(1+Zone|Site), data=GHexpR0)
anova(lmedd, lmedd2) 
#Random slope is best, p=0.887 chisq=0.24
lmedda <- update(lmedd,~.-Zone:DTRTMT:SSTRTMT)
anova(lmedda, lmedd)
#3Interact not sig, p=0.916 chisq=0.011
lmeddb <- update(lmedda,~.-Zone:DTRTMT)
anova(lmeddb, lmedda)
#Zone:D not sig, p=0.936 chisq=0.0065
lmeddc <- update(lmedda,~.-Zone:SSTRTMT)
anova(lmeddc, lmedda)
#Zone:SS not sig, p=0.462 chisq=0.541
lmeddd <- update(lmedda,~.-DTRTMT:SSTRTMT)
anova(lmeddd, lmedda)
#D:SS is sig, p=0.048 chisq=3.904 *
lmeddbc <- lmer(DDFLWF~DTRTMT*SSTRTMT+Zone+(1|Site), data=GHexpR0)
lmeddbc2 <- update(lmeddbc,~.-Zone)
anova(lmeddbc2, lmeddbc)
#Zone is sig, p=0.029 chisq=4.75
lmeddbc3 <- update(lmeddbc,~.-SSTRTMT)
anova(lmeddbc3, lmeddbc)
#SS is sig, p=<0.0001 chisq=1096.4
lmeddbc4 <- update(lmeddbc,~.-DTRTMT)
anova(lmeddbc4, lmeddbc)
#D is sig, p=<0.0001 chisq=1096.4
lmeddF <- lmer(DDFLWF~DTRTMT*SSTRTMT+Zone+(1|Site), data=GHexpR0)
summary(lmeddF)
#random: Site var=27.36, resid=239.23
#fixed: intercept=29.87, DTRTMT:SSTRTMT est=10.61, Zone est=-5.85, SS est=-5.38, 
  #D est=-3.84
#Removing outliers did not change the overall trend of model

#check assumptions
lmeddFR <- resid(lmeddF)
lmeddFF <- fitted(lmeddF)
plot(lmeddFF, lmeddFR) #okay
abline(h=0, col=c("red")) 
hist(lmeddFR) #okay
qqnorm(lmeddFR, main="Q-Q plot for residuals") 
qqline(lmeddFR) #okay, off tails


#create plot using summarySE function output and DDFLWF
GHR0dd <- summarySE(GHexpR0, measurevar="DDFLWF", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHR0dd, aes(x=DTRTMT, y=DDFLWF, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=DDFLWF-se, ymax=DDFLWF+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Flowering Duration (days)") +
  ggtitle("Mean Plant Flowering Duration by Treatment R0") +
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
##Response Variable: NewL.D
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=NewL.D))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Production of New Leaves \n(leaves/day)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Salt:Low", "Fresh:High", "Salt:High"))+
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
lmnlR  <- lm(NewL.D~Replant, data=GHexp)
lmnlRx  <- lm(NewL.D~1, data=GHexp)
anova(lmnlRx, lmnlR) #Replant not significant p=0.675 F=0.393


#lmer vs lm
lmenl <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
lmnl <- lm(rankNewL.D~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmnl, REML=T) +2*logLik(lmenl, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmnl) #=-2479.81
AIC(lmenl) #=-2418.32
#logLik=9.74, p=0.0077, random Site not sig with raw, but sig with rank

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
#lme: rank is okay, but has tails at each end

#lme4
lmenl <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
lmenl2 <- lmer(rankNewL.D~Zone*DTRTMT*SSTRTMT+(1+Zone|Site), data=GHexp)
anova(lmenl2, lmenl) #random slope is best, p=0.891 chisq=0.23
lmenla  <- update(lmenl,~.-Zone:DTRTMT:SSTRTMT)
anova(lmenla, lmenl) #3 way not sig, p=0.363 chisq=0.826
lmenlb  <- update(lmenla,~.-Zone:DTRTMT)
anova(lmenlb, lmenla) #Zone:D not sig, p=0.977 chisq=0.0009
lmenlc  <- update(lmenla,~.-Zone:SSTRTMT)
anova(lmenlc, lmenla) #Zone:SS not sig, p=0.981 chisq=0.0006
lmenld  <- update(lmenla,~.-DTRTMT:SSTRTMT)
anova(lmenld, lmenla) #D:SS not sig, p=0.714 chisq=0.134
lmenle <- lmer(rankNewL.D~Zone+DTRTMT+SSTRTMT+(1|Site), data=GHexp)
lmenle1  <- update(lmenle,~.-Zone)
anova(lmenle1, lmenle) #Zone not sig, p=0.827 chisq=0.048
lmenle2  <- update(lmenle,~.-DTRTMT)
anova(lmenle2, lmenle) #D marginally not sig, p=0.077 chisq=3.13
lmenle3  <- update(lmenle,~.-SSTRTMT)
anova(lmenle3, lmenle) #SS is sig, p=<0.0001 chisq=27.14
lmenlF <- lmer(rankNewL.D~SSTRTMT+(1|Site), data=GHexp)
summary(lmenlF)
#random: site var=388.3, resid=3369.7
#fixed: intercept=91.98, ss est=41.27

#check assumptions
lmenlFR <- resid(lmenlF) 
lmenlFF <- fitted(lmenlF)
plot(lmenlFF, lmenlFR) #okay
abline(h=0, col=c("red"))
hist(lmenlFR) #okay
qqnorm(lmenlFR, main="Q-Q plot for residuals") 
qqline(lmenlFR) #not the best, stepwise pattern and tails

GHnl <- summarySE(GHexp, measurevar="rankNewL.D", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHnl, aes(x=DTRTMT, y=rankNewL.D, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=rankNewL.D-se, ymax=rankNewL.D+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Ranked Production of New Leaves \n(leaves/day)") +
  ggtitle("Mean Ranked New Leaves/day by Treatment") +
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
##Response Variable: Cot.FR
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Cot.FR))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Stem Length (cm)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Salt:Low", "Fresh:High", "Salt:High"))+
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
lmecfr <- lmer(Cot.FR~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
lmcfr <- lm(Cot.FR~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmcfr, REML=T) +2*logLik(lmecfr, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmcfr) #=-1193.7
AIC(lmecfr) #=-1178.2
#logLik=2.27, p=1, random Site not sig with raw

#check assumptions of best model
lmcfrR <- resid(lmcfr) 
lmcfrF <- fitted(lmcfr)
plot(lmcfrF, lmcfrR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmcfrR) #lm: raw good
qqnorm(lmcfrR, main="Q-Q plot for residuals") 
qqline(lmcfrR) #lm: raw is good

#lm
lmcfr <- lm(Cot.FR~Zone*DTRTMT*SSTRTMT, data=GHexp)
lmcfrb <- update(lmcfr,~.-Zone:DTRTMT:SSTRTMT)
anova(lmcfrb, lmcfr) #3way not sig p=0.75 f=0.101
lmcfrc <- update(lmcfrb,~.-Zone:DTRTMT)
anova(lmcfrc, lmcfrb) #Zone:d not sig p=0.549 f=0.36
lmcfrd <- update(lmcfrb,~.-Zone:SSTRTMT)
anova(lmcfrd, lmcfrb) #Zone:SS marginally not sig p=0.077 f=3.16
lmcfre <- update(lmcfrb,~.-DTRTMT:SSTRTMT)
anova(lmcfre, lmcfrb) #D:SS not sig p=0.208 f=1.59
lmcfrf <- lm(Cot.FR~Zone+DTRTMT+SSTRTMT, data=GHexp)
lmcfrg <- update(lmcfrf,~.-Zone)
anova(lmcfrg, lmcfrf) #Zone is sig p=0.0009 f=11.46 **
lmcfrh <- update(lmcfrf,~.-DTRTMT)
anova(lmcfrh, lmcfrf) #D is sig p=0.023 f=5.26 *
lmcfri <- update(lmcfrf,~.-SSTRTMT)
anova(lmcfri, lmcfrf) #SS is sig p=0.0006 f=12.3 **
lmcfrF  <- lm(Cot.FR~Zone+DTRTMT+SSTRTMT, data=GHexp)
summary(lmcfrF)
#fixed: intercept=22.38, zone est= -2.86, D est=1.98, SS est= -2.99
#R^2= 0.11, p=<0.0001 f=8.69 [3,183]

#check assumptions of best model
lmcfrFR <- resid(lmcfrF) 
lmcfrFF <- fitted(lmcfrF)
plot(lmcfrFF, lmcfrFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmcfrFR) #lm: raw good
qqnorm(lmcfrFR, main="Q-Q plot for residuals") 
qqline(lmcfrFR) #lm: raw is good

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

#********************
##Response Variable: Cot.GR
#boxplot
ggplot(data=GHexp, aes(x=TRTMT, y=Cot.GR))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Stem Growth Rate (cm/day)") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Salt:Low", "Fresh:High", "Salt:High"))+
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
lmecgr <- lmer(Cot.GR~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
lmcgr <- lm(Cot.GR~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmcgr, REML=T) +2*logLik(lmecgr, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmcgr) #=-492.48
AIC(lmecgr) #=-441.24
#logLik=3.35, p=0.187, random Site not sig with raw

#check assumptions of best model
lmcgrR <- resid(lmcgr) 
lmcgrF <- fitted(lmcgr)
plot(lmcgrF, lmcgrR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmcgrR) #lm: raw good
qqnorm(lmcgrR, main="Q-Q plot for residuals") 
qqline(lmcgrR) #lm: raw is good

#lm
lmcgr <- lm(Cot.GR~Zone*DTRTMT*SSTRTMT, data=GHexp)
lmcgrb <- update(lmcgr,~.-Zone:DTRTMT:SSTRTMT)
anova(lmcgrb, lmcgr) #3way not sig p=0.156 f=2.024
lmcgrc <- update(lmcgrb,~.-Zone:DTRTMT)
anova(lmcgrc, lmcgrb) #Zone:D not sig p=0.135 f=2.25
lmcgrd <- update(lmcgrb,~.-Zone:SSTRTMT)
anova(lmcgrd, lmcgrb) #Zone:SS is sig p=0.022 f=5.32 *
lmcgre <- update(lmcgrb,~.-DTRTMT:SSTRTMT)
anova(lmcgre, lmcgrb) #D:SS not sig p=0.652 f=0.204
lmcgrf <- lm(Cot.GR~Zone:SSTRTMT+Zone+DTRTMT+SSTRTMT, data=GHexp)
lmcgrg  <- update(lmcgrf,~.-DTRTMT)
anova(lmcgrg, lmcgrf) #D is sig p=<0.0001 f=35.27
lmcgrh <- lm(Cot.GR~Zone+DTRTMT+SSTRTMT, data=GHexp)
lmcgri  <- update(lmcgrh,~.-Zone)
anova(lmcgri, lmcgrh) #Zone is sig p=0.0007 f=11.89
lmcgrj  <- update(lmcgrh,~.-SSTRTMT)
anova(lmcgrj, lmcgrh) #SS is sig p=<0.0001 f=79.997
lmcgrF <- lm(Cot.GR~Zone:SSTRTMT+Zone+DTRTMT+SSTRTMT, data=GHexp)
summary(lmcgrF)
#fixed: intercept=0.28, Zone est= -0.06, D est=0.06, SS est= -0.12, Zone:SS est=0.048
#R^2=0.37, p=<0.0001, f=33.23 [4,214]

#check assumptions of best model
lmcgrFR <- resid(lmcgrF) 
lmcgrFF <- fitted(lmcgrF)
plot(lmcgrFF, lmcgrFR) #lm: raw is good
abline(h=0, col=c("red"))
hist(lmcgrFR) #lm: raw good
qqnorm(lmcgrFR, main="Q-Q plot for residuals") 
qqline(lmcgrFR) #lm: raw is good

GHcgr <- summarySE(GHexp, measurevar="Cot.GR", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHcgr, aes(x=DTRTMT, y=Cot.GR, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=Cot.GR-se, ymax=Cot.GR+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
  xlab("Density") + ylab("Stem Growth Rate (cm/day)") +
  ggtitle("Mean Stem GR by Treatment") +0
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
ggplot(data=GHexp, aes(x=TRTMT, y=TFC))+
  geom_boxplot(aes(fill=Zone), width=0.8, position="dodge")+ 
  ylab("Lifetime fitness") +
  scale_x_discrete(name="Spray:Density Treatment", breaks=c("1", "2", "3", "4"),
                   labels=c("Fresh:Low", "Salt:Low", "Fresh:High", "Salt:High"))+
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
lmetf <- lmer(sqrtTFC~Zone*DTRTMT*SSTRTMT+(1|Site), data=GHexp)
lmtf <- lm(sqrtTFC~Zone*DTRTMT*SSTRTMT, data=GHexp)
x <- -2*logLik(lmtf, REML=T) +2*logLik(lmetf, REML=T)
x
pchisq(x, df=2, lower.tail=F)
AIC(lmtf) #=-492.48, log = 533.704
AIC(lmetf) #=-441.24, log = 550.82
#raw: logLik=0.017, p=0.991, random Site not sig with raw
#sqrt: logLik=0, p=1, random Site not sig

#check assumptions of best model
lmtfR <- resid(lmtf) 
lmtfF <- fitted(lmtf)
plot(lmtfF, lmtfR) #lm: sqrt is good
abline(h=0, col=c("red"))
hist(lmtfR) #lm: sqrt good
qqnorm(lmtfR, main="Q-Q plot for residuals") 
qqline(lmtfR) #lm: sqrt is good

#lm
lmtf <- lm(sqrtTFC~Zone*DTRTMT*SSTRTMT, data=GHexp)
lmtfb  <- update(lmtf,~.-Zone:DTRTMT:SSTRTMT)
anova(lmtfb, lmtf) #3way not sig p=0.155 f=2.034
lmtfc  <- update(lmtfb,~.-Zone:DTRTMT)
anova(lmtfc, lmtfb) #Zone:D not sig p=0.505 f=0.446
lmtfd  <- update(lmtfb,~.-Zone:SSTRTMT)
anova(lmtfd, lmtfb) #Zone:SS not sig p=0.85 f=0.036
lmtfe  <- update(lmtfb,~.-DTRTMT:SSTRTMT)
anova(lmtfe, lmtfb) #D:SS is sig p=<0.0001 f=15.92
lmtf2 <- lm(sqrtTFC~Zone+DTRTMT*SSTRTMT, data=GHexp)
lmtf2b  <- update(lmtf2,~.-Zone)
anova(lmtf2b, lmtf2) #zone not sig p=0.134 f=2.26
lmtf3 <- lm(sqrtTFC~Zone+DTRTMT+SSTRTMT, data=GHexp)
lmtf3b  <- update(lmtf3,~.-DTRTMT)
anova(lmtf3b, lmtf3) #D is sig p=0.0001 f=15.064
lmtf3c  <- update(lmtf3,~.-SSTRTMT)
anova(lmtf3c, lmtf3) #SS is sig p=0.0052 f=7.98
lmtfF <- lm(sqrtTFC~DTRTMT*SSTRTMT, data=GHexp)
summary(lmtfF)
#fixed: intercept=2.32, D est= -0.01, SS est= -0.635, D:SS est=0.912
#R^2=0.15, p=<0.0001, f=13.48 [3,215]

#check assumptions of best model
lmtfFR <- resid(lmtfF) 
lmtfFF <- fitted(lmtfF)
plot(lmtfFF, lmtfFR) #lm: sqrt is good
abline(h=0, col=c("red"))
hist(lmtfFR) #lm: sqrt good
qqnorm(lmtfFR, main="Q-Q plot for residuals") 
qqline(lmtfFR) #lm: sqrt is good

GHtf <- summarySE(GHexp, measurevar="sqrtTFC", groupvars=c("SSTRTMT", "DTRTMT", "Site", "Zone")) 
ggplot(data=GHtf, aes(x=DTRTMT, y=sqrtTFC, group=Zone, shape=Zone)) +
  geom_errorbar(aes(ymin=sqrtTFC-se, ymax=sqrtTFC+se), width=0.1, position=position_dodge(0.1)) +
  geom_line(position=position_dodge(0.1)) + geom_point(size=4, position=position_dodge(0.1))+
  facet_grid(Site~SSTRTMT, labeller=ss_labeller) +
  scale_shape_discrete(name  ="Zone",
                       breaks=c("1", "2"),
                       labels=c("Beach", "Dune")) +
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
