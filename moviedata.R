 setwd("D:\\r")
movies <- read.csv("Movie Ratings.csv") 
head(movies
     )
colnames(movies) <- c("films", "genre","CriticRatings","audience",
                      "budget","Year")
head(movies)
str(movies)
#qplot(data = movies, x = "films", y = "budget")
factor("Year")
factor(movies$Year)
# R take word data as factors, 
#but the repeated of numeric data is not like that, if want to convert
# it we should use factor function to change.
movies$Year <- factor(movies$Year)
str(movies
    )
#Aesthitics  aes()
 library(ggplot2)
ggplot(data  = movies, aes(x= CriticRatings, y= audience))+
         geom_point()


ggplot(data  = movies, aes(x= CriticRatings, y= audience,color = genre,
                           size= budget))+
  geom_point()
?geom_point


#geometrics
#plottin g with layers
p <- ggplot(data  = movies, aes(x= CriticRatings, y= audience,color = genre,size= budget))
p + geom_point() 
 # lines
p + geom_line()
 # multi layers
p + geom_line()+geom_point()



# overriding aesthitics
q <- ggplot(data = movies, aes(x = CriticRatings, y = audience,
                               colour = genre, size = budget))
#ad a geom layer
q + geom_point(aes(size = CriticRatings))

#2 
 a<-q + geom_point(aes(colour = budget))
a
#3
q + geom_point(aes(x = budget))+
  xlab("budget $$$")
#4
q + geom_line(size=0.5)+geom_point()


# mapping vs settings
r <- ggplot(data = movies, aes(x = CriticRatings, y = audience))
r + geom_point()

#1
 r + geom_point(aes(colour = genre))
#  2 settings --> dont use aes( ) in settings,  it mislead to wrong visulaization
 
 
 
 
 
 
 
 
 
 
   r + geom_point(colour= "LightGreen")


#histogram and density charts
   s <- ggplot(data = movies, aes(x = budget))
s + geom_histogram(binwidth = 9)

#add
s + geom_histogram(binwidth = 9,aes(fill = genre))


s + geom_histogram(binwidth = 9,aes(fill = genre), colour = "black")

s+ geom_density()


# _______layer tips
t <- ggplot(data = movies, aes(x = audience))
t + geom_histogram(binwidth = )


t + geom_histogram(binwidth =10,fill = "White", colour= "Blue" )


a <- ggplot()
a + geom_histogram(data = movies,binwidth = 10, aes(x =CriticRatings))


#--- jump into the session
?geom_smooth()
r + geom_smooth()
r <- ggplot(data = movies, aes(x = CriticRatings, y = audience,colour = genre))
r +geom_point()+ geom_smooth(fill = NA)

#boxplots
u <- ggplot(data = movies, aes(x= CriticRatings, y= audience,colour = genre))
u + geom_boxplot(size= 1.2)+ geom_point()
u + geom_boxplot(size= 1.2)+geom_jitter()
u +geom_jitter()+ geom_boxplot(size= 1.2,alpha= 0.5)
v <-  ggplot(data = movies, aes(x= CriticRatings))
v + geom_boxplot(size=1.2)
rm(v)
v<- ggplot(data = movies, aes(x=budget))
v+geom_histogram(binwidth = 10,aes(fill = genre),colour= "black")
v + geom_histogram(binwidth = 10,aes(fill = genre),
        colour = "Black")+ facet_grid(genre~.,scales = "free")
w <-  ggplot(data = movies, aes(x= CriticRatings,y=audience, colour = genre))

w + geom_point(size = 3)+geom_smooth()  +facet_grid(genre~Year)



#coordinates
m <- ggplot(data = movies,aes(x = CriticRatings,y = audience,size=budget,
                              colour = genre))
m +geom_point()+xlim(50,100)+
  ylim(50,100)




#limits
n <- ggplot(data = movies,aes(x = budget))
n + geom_histogram(binwidth = 10,aes(fill = genre), colour = "black")
n + geom_histogram(binwidth = 10,aes(fill = genre), colour= "blue")+
  ylim(10,50)
#instead_room
n + geom_histogram(binwidth = 10,aes(fill = genre),colour = "black")+
  coord_cartesian(ylim = c(0,50))

w + geom_point(aes(size = budget))+geom_smooth()  +
  facet_grid(genre~Year)+
  coord_cartesian(ylim =c(0,100))
 #------------ Theme

o <- ggplot(data = movies, aes(x = budget))
h<-o + geom_histogram(binwidth = 10,aes(fill = genre), colour = "black")
h  
#-------label\
h + xlab("MoneyAxis")+ylab("no.of.movies")+
  theme(axis.title.x = element_text(color = "DarkGreen",size = 30),
          axis.title.y = element_text(color = "Red",size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20)) 

?theme
#--------legend formatting
h + xlab("MoneyAxis")+ylab("no.of.movies")+
  theme(axis.title.x = element_text(color = "DarkGreen",size = 30),
        axis.title.y = element_text(color = "Red",size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size =20),
        legend.position = c(1,1),
        legend.justification = c(1,1)) 

#--------title
h + xlab("MoneyAxis")+ylab("no.of.movies")+
  ggtitle("movies-of-hollywood")+
  theme(axis.title.x = element_text(color = "DarkGreen",size = 30),
        axis.title.y = element_text(color = "Red",size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size =20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color = "DarkBlue",
                                  size = 40,
                                  family = "Courier")) 
                                                                                                                                                                                                                                                                                                            









