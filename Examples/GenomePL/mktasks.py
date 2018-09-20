import sys, os, glob

inputdir, outputdir = sys.argv[1:3]

JOB='''module load picard BWA && bwa mem /ysm-gpfs/datasets/genomes/Homo_sapiens/UCSC/hg38/Sequence/BWAIndex/genome.fa %(fq)s > %(obn)s.mapped.bam && \
samtools sort -O bam -o %(obn)s.sorted.bam %(obn)s.mapped.bam && \
java -jar $EBROOTPICARD/picard.jar MarkDuplicates I=%(obn)s.sorted.bam O=%(obn)s.dedup.bam M=%(obn)s.metrics && \
samtools index %(obn)s.dedup.bam %(obn)s.dedup.bai'''

for fq in sorted(glob.glob(os.path.join(inputdir, "reads*"))):
  bn=os.path.basename(fq)
  smpl, ext=os.path.splitext(bn)
  obn = os.path.join(outputdir, smpl)
  
  print(JOB % {'fq':fq, 'obn':obn})

