
library(MASS)
RNGkind("L'Ecuyer-CMRG")
starts=100000
tasks=10
nstarts=rep(starts/tasks, tasks)

system.time(results<-lapply(nstarts, function(nstart) kmeans(Boston, 4, nstart=nstart)))

i = sapply(results, function(result) result$tot.withinss)
result = results[[which.min(i)]]
print(result)
