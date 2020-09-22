a <- c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)
sd(a)
var(a)
mean(a)
mba <- read.csv("mba.csv")
head(mba)
mba$gmat

#mpg  <- cars$MPG

m <- c(44,50,38,96,42,47,40,39,46,50)
sd(m)
var(m)
median(mba$gmat)
install.packages("moments")
library(moments)
sa <- read.csv(file.choose())
head(sa)
range(sa$Points)
range(sa$Score)
range(sa$Weigh)

w <- read.csv(file.choose())
w
skewness(w$speed)
kurtosis(w$speed)
skewness(w$dist)
kurtosis(w$dist)
?skewness
x <- read.csv(file.choose()) 
x
skewness(x$WT)
kurtosis(x$WT)
getmode <- function(sa){
  uniquv <- unique(sa)
   uniquv[which.max(tabulate(match(sa,uniquv)))]
   }
getmode(sa$Weigh)
ak <- c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)  
kurtosis(ak)
median(ak)
cars
car <- read.csv(file.choose())
head(car)
?probability
mpg <- car$MPG
mean(mpg)
sd(mpg)
aw<-pnorm(38,34.42208,9.131445)
aw
?pnorm
pt(mpg>38)
aw
 a = 1.90/2    
a
rcode <- pt(18,260)
rcode