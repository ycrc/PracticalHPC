from anneal import SimAnneal
import matplotlib.pyplot as plt
import random, os, sys, time

if __name__ == '__main__':
    t0=time.time()
    ncities=100 
    ntrials=int(sys.argv[1])
    random.seed(0)
    coords = [[round(random.uniform(-1000,1000),4),round(random.uniform(-1000,1000),4)] for i in range(ncities)]

    best=None
    bestfit=1e20

    for i in range(ntrials):
        print("trial %d" % i)
        t=SimAnneal(coords, stopping_iter = 500000, alpha=0.9995, id=i)
        t.anneal()
        if t.best_fitness < bestfit:
            best=t
            bestfit=t.best_fitness

    print("Time %f, Fitness %f" % (time.time()-t0, best.best_fitness))
    best.visualize_routes()
    best.plot_learning()
    
