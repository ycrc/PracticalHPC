
library(boot)

cores=Sys.getenv("SLURM_CPUS_ON_NODE")

a=rnorm(10000, 100, 1)

b=boot(a, samplemedian, R=1000000, parallel=c("multicore"), ncpus=cores)

print(b)
