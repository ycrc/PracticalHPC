from anneal import SimAnneal
from visualize_tsp import plotTSP
import matplotlib.pyplot as plt
import random, os, sys, time
from multiprocessing import Pool

def dotrial(t):
    print("doing %d" % t.id)
    random.seed(t)
    t.anneal()
    return t

if __name__ == '__main__':
    ncities=100 
    ntrials=int(sys.argv[1])
    random.seed(0)
    coords = [[round(random.uniform(-1000,1000),4),round(random.uniform(-1000,1000),4)] for i in range(ncities)]

    plotTSP([range(ncities),], coords)

    t0=time.time()
    p=Pool(int(os.getenv("SLURM_CPUS_PER_TASK", "3"))) # get cpus from slurm, default to 3  
    trials = [SimAnneal(coords, stopping_iter = 500000, alpha=0.9995, id=i) for i in range(ntrials)]
    got=p.map(dotrial, trials)
    
    best=sorted([(t.best_fitness, t) for t in got])[0][1]

    print("Time %f, Fitness %f" % (time.time()-t0, best.best_fitness))
    best.visualize_routes()
    best.plot_learning()
    
