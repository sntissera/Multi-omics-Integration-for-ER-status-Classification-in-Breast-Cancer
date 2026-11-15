# Multi-Omics Integration for Breast Cancer ER Status Classification

## Overview

This project investigates whether integrating transcriptomic and DNA methylation data can improve the classification of estrogen receptor (ER) status in breast cancer. The project aims to compare three modelling approaches using RNA-seq gene expression data, DNA methylation data and combined data using publicly available data from The Cancer Genome Atlas Breats Invasive Carcinoma (TGCA-BRCA) cohort.The objective is to explore the predictive contribution of each molecular data type and assess whether combining them provides an advantage over single-omics models.

## Dataset

* RNA-seq: Gene expression data
https://xenabrowser.net/datapages/?dataset=TCGA.BRCA.sampleMap%2FHiSeqV2&host=https%3A%2F%2Ftcga.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443
* DNA methylation: Illumina HumanMethylation27 beta values
https://xenabrowser.net/datapages/?dataset=TCGA.BRCA.sampleMap%2FHumanMethylation27&host=https%3A%2F%2Ftcga.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443
* Clinical data: ER status labels
https://xenabrowser.net/datapages/?dataset=TCGA.BRCA.sampleMap%2FBRCA_clinicalMatrix&host=https%3A%2F%2Ftcga.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443

After matching samples across the three datasets and removing samples with missing or indeterminate ER status, the final cohort contains 307 samples with 238 ER-positive samples and 69 ER-negative samples. The above methylation platform was selected to keep the analysis computationally manageable on the available hardware.

## Methodology

The analysis was organized as follows:

1. Data aquisition - Loading the molecular and clinincal datasets and matching sample identifiers.
2. Quality control and preprocessing – Assessing missingness, filtering features and preparing the matrices.
3. Exploratory analysis – Examining the cohort, feature distributions and class imbalance.
4. Model development – Training logistic regression models using RNA-seq, methylation and combined data.
5. Model evaluation – Comparing performance using ROC-AUC, F1-score, balanced accuracy, precision and recall.
6. Feature interpretation – Examining selected genes and methylation probes and exploring relationships between overlapping molecular features.

The modelling workflow uses Python and packages such as Pandas, NumPy and scikit-learn. Class weighting is used to account for the imbalance between ER-positive and ER-negative samples.

## Current Findings

Initial experiments show that all three modelling approaches can distinguish ER-positive from ER-negative samples in this dataset. The combined model performs competitively with the individual molecular data types. Further analysis is ongoing to determine whether the integration of both data types provides a meaningful improvement over RNA-seq alone.

## Limitations

* The cohort is relatively small after matching the molecular datasets and clinical labels.
* The ER-negative class is smaller than the ER-positive class.
* Feature selection and model performance require cautious interpretation.
* The analysis is exploratory and has not been externally validated.
* The results should not be interpreted as evidence of clinical utility or causal relationships.

## Tools

* Python
* R
* Pandas and NumPy
* scikit-learn
* Matplotlib
* Jupyter Notebook
* TCGA-BRCA / UCSC Xena

## Project Status

This repository documents an ongoing independent learning project. Code, analyses and documentation are being progressively refined as the project develops.
