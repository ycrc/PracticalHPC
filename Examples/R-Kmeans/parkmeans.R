
library(parallel)
library(MASS)
RNGkind("L'Ecuyer-CMRG")
cores=as.numeric(Sys.getenv("SLURM_CPUS_ON_NODE"))
starts=100000
tasks=cores
nstarts=rep(starts/tasks, tasks)

system.time(results<-mclapply(nstarts, 
  function(nstart) kmeans(Boston, 4, nstart=nstart), 
  mc.cores=cores))

i = sapply(results, function(result) result$tot.withinss)
result = results[[which.min(i)]]
print(result)
