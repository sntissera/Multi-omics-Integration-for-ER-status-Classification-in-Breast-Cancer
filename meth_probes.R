#Install Illumina HumanMethylation27 array
BiocManager::install("IlluminaHumanMethylation27kanno.ilmn12.hg19")

#load packages
library(minfi)
library(IlluminaHumanMethylation27kanno.ilmn12.hg19)

hm27_annotation <- getAnnotation(IlluminaHumanMethylation27kanno.ilmn12.hg19)

dim(hm27_annotation)
colnames(hm27_annotation)
head(hm27_annotation)

unique(hm27_annotation$GenomeBuild)
unique(hm27_annotation$SourceVersion)

selected_probes <- read.csv("selected_combined_meth_probes.csv",stringsAsFactors = FALSE)
selected_combined_meth <- selected_probes$Probe_ID
