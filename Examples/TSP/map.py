from anneal import SimAnneal
import matplotlib.pyplot as plt
import random, os, sys, time

def dotrial(t):
    print("doing %d" % t.id)
    t.anneal()
    return t

if __name__ == '__main__':
    t0=time.time()
    ncities=100 
    ntrials=int(sys.argv[1])
    random.seed(0)
    coords = [[round(random.uniform(-1000,1000),4),round(random.uniform(-1000,1000),4)] for i in range(ncities)]

    trials = [SimAnneal(coords, stopping_iter = 500000, alpha=0.9995, id=i) for i in range(ntrials)]
    got=map(dotrial, trials)
    
    best=sorted([(t.best_fitness, t) for t in got])[0][1]

    print("Time %f, Fitness %f" % (time.time()-t0, best.best_fitness))
    best.visualize_routes()
    best.plot_learning()
    
