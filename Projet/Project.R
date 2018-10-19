set.seed(1, kind="Marsaglia-Multicarry")
setwd("H:/Documents/WorkSpace/MDI220/Projet")
## Exercice 1
## 1.1
data<-read.csv('NuclearPowerAccidents2016.csv',header=TRUE)
cost_vector <- c()
for (i in 1:nrow(data)) {
  if(as.Date(data[i, 1], "%m/%d/%Y") < "1979-03-28"){
    if(!is.na(data[i, 3])){
      cost_vector <- c(cost_vector, data[i, 3])
    }
  }
}
sprintf("The length of the cost vector is %d.", length(cost_vector))

## 1.2
