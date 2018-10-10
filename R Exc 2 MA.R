land = c("Belgium","Denmark","France","GB","Ireland","Italy","Luxembourg","Holland","Portugal","Spain","USA","Japan","Deutschland")
b=c(2.8,1.2,2.1,1.6,1.5,4.6,3.6,2.1,6.5,4.6,3.0,1.3,4.2)
length(land) == length(b)
c=c(9.4,10.4,10.8,10.5,18.4,11.1,2.6,8.8,5.0,21.5,6.7,2.5,5.6)
length(b)==length(c)
landdf=data.frame(land,b,c)
landdf$land=as.character(landdf$land)

colnames(landdf)=c("land","incridx_x","unemp_y")
max(landdf$incridx_x)
max(landdf$unemp_y)
min(landdf$incridx_x)
min(landdf$unemp_y)
max(landdf$incridx_x) - min(landdf$incridx_x)
range(landdf$incridx_x)
max(landdf$unemp_y) - min(landdf$unemp_y)
range(landdf$unemp_y)
landdf$land[which(landdf$incridx_x == max(landdf$incridx_x))]
landdf$land[which(landdf$unemp_y == max(landdf$unemp_y))]
landdf$land[which(landdf$incridx_x == min(landdf$incridx_x))]
landdf$land[which(landdf$unemp_y == min(landdf$unemp_y))]

#2
datasets::mtcars
help(mtcars)

#3
View(mtcars)
mtcars[order(mtcars$mpg, mtcars$cyl, decreasing = TRUE),]
#alternative
mtcars[order(-mtcars$mpg, -mtcars$cyl),]

#4
#mtcars$carb = NULL
#mtcars

#5
colnames(mtcars)
r.cars=mtcars[,c("hp","cyl","disp","mpg","drat","wt","qsec","vs","am","gear","carb")]
View(r.cars)

#6
grep("Merc",rownames(mtcars))

#6 #7
dax.prices=data.frame(dax_prices)

#8
is.numeric(dax.prices$DAX)
#9
colnames(dax.prices)=c("Date","Dax Prices")

#10
setwd("/users/althof/desktop/MA HU/R")

write.table(dax.prices,file = "daxprices.txt",)

#11
data = read.table(file = "daxprices.txt", header = FALSE, sep = ???|???, stringsAsFactors = FALSE)
          
