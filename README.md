Differential Gene Expression Analysis


Introduction

Gene expression is the process by which the heritable information in a gene, the sequence of DNA
base pairs, is made into a functional gene product, such as protein or RNA. The basic idea is that
DNA is transcribed into RNA, which is then translated into proteins. Proteins make many of the
structures and all the enzymes in a cell or organism.
Differential Expression has become popular with the development of microarray technology. In
these experiments RNA transcript levels are determined by hybridization to a microarray of short
DNA probes. Genes are represented by 10 to 20 probes on the array. From the signal intensities of
these spots on the area the expression level of the gene can be determined. But these values
aren't particularly interesting on their own, it is most interesting to look at differences between the
expression levels and different samples. one possible comparison is between diseased and normal
tissues.
One important aspect of experimental design and all of these types of experiments is the inclusion
of biological replicates. We want to be confident that the genes we identify are really differentially
expressed. Biological replicates are samples from different patients or animals or cell culture
plates, they help show the normal variation between samples of the same type either due to
biological noise or noise from experimental differences. This allows us to see if the difference
between sample types is greater than the normal variance between experimental replicates.
In this study project, we will go through a dataset of 24 patients having primary breast cancer with
tumor which are “de novo” resistance or have incomplete response to docetaxel and another
patients which have tumors sensitive to docetaxel.

Some Concepts used in the project:

T statistics, MA Plot, Heat Maps

Libraries Used:

Biobase – contains functions to see the expression of a genomic data
genefilter – to plot MA  plot
affy – for finding the top 150 differential genes and the plotting the heat map
limma – for finding the t-statistic and plotting the heatmap

About the Dataset:
There are 24 subjects from which samples are taken and been given for the biopsy. Subjects are
from GSM4901 to GSM4924.

