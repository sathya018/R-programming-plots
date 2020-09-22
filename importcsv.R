?read.csv()
stats <- read.csv(file.choose())
stats
#set id and read data
getwd()
setwd("D:\\r")
getwd()
rm(stats)
stats <- read.csv("DemographicData.csv")
stats




#exploring  DAta

 nrow(stats)
ncol(stats)
head(stats, n= 19)
tail(stats)
   # structure ---   ?str
str(stats)
 uniformDistribution -- ?runif()
summary(stats)
  #using dollar $sign
stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"]
stats$Internet.users [4]
levels(stats$Income.Group)
   

#basic operation of DF
stats[1:10,2]
stats[c(4,100),]
is.data.frame(stats[1,])
is.data.frame(stats[,1,drop = F])



#multiply col
stats$Birth.rate* stats$Internet.users

#add a col


stats$MyCalc <- stats$Birth.rate* stats$Internet.users
head(stats)
stats$xyz <- 1:3
head(stats, n =12)



#remove acol


head(stats,4)
stats$MyCalc <- NULL
stats$xyz <- NULL


#FILTERING DATA FRAME
 head(stats)
filter <- stats$Internet.users < 3

stats[filter,]
stats[stats$Birth.rate >40 & stats$Internet.users<2,]
stats[stats$Income.Group == "High income",]


stats[stats$Country.Name=="Malta",]



#@@@@@@@@@@@@@@@@@@@@visualization
? qplot

qplot(data =stats, x = Internet.users)
qplot(data = stats, x = Income.Group, y = Birth.rate, size =I(1))
qplot(data = stats, x = Income.Group, y = Birth.rate, size =I(1), color =I("blue"))
qplot(data = stats, x = Income.Group, y = Birth.rate, geom = "boxplot")

#%%%%%%%%%%%%%%%%%% visualize what we need
 

qplot( data = stats, x = Internet.users, y = Birth.rate)
qplot( data = stats, x = Internet.users, y = Birth.rate, size = I(3))
qplot( data = stats, x = Internet.users, y = Birth.rate, color = I("purple"))
qplot( data = stats, x = Internet.users, y = Birth.rate, size = I(5),color = Income.Group )
?I()

#-----------------creating DataFrame

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, 
                   Regions_2012_Dataset)
head(mydf)
colnames (mydf)<- c("contry", "cosd", "regn")
head(mydf)
rm(mydf)
show(mydf)
mydf <- data.frame(country = Countries_2012_Dataset, codes = Codes_2012_Dataset, 
                   Region = Regions_2012_Dataset)
head(mydf)
tail(mydf)
summary(mydf)
#------------------ merging data.frame
head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "codes")
merged$country<- NULL
str(merged)
#----------------visualizing DataFrame with split
qplot(data= merged, x= Internet.users,y= Birth.rate)
#shapes
qplot(data= merged, x= Internet.users,y= Birth.rate, size=I(5),
      colour = Region,shape=I(25))
# --transparency
qplot(data= merged, x= Internet.users,y= Birth.rate, size=I(5),
      colour = Region,shape=I(15), alpha=I(0.9))
#title
qplot(data= merged, x= Internet.users,y= Birth.rate, size=I(5),
      colour = Region,shape=I(13),main = "birth rate  / internet users",alpha=I(.5))
