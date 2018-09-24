## loi des grands nombres
n=100
X = rnorm(100, 0,1)
evolMean=cumsum(X)/(1:100)
plot((1:100),evolMean,type='l')
abline(h=0, col='red')

X = rnorm(100, 0, 1)
evolMean=cumsum(X)/(1:100)
lines((1:100),evolMean,type='l', col='blue')

## Central limit theorem
a=0;b=10;n=100;N=1000
res = vector()
for (i in 1:N){
  X = runif(n,a,b)
  res = c(res, mean(X))
}
hist(res, probability = TRUE)
xx = seq(min(res), max(res), length.out=N)
Z = dnorm(xx,mean = 5, sd = sd(res))
lines(xx, Z, col='green')
