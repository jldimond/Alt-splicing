# Are differential DNA methylation and alternative splicing associated with symbiosis in a sea anemone?


Symbiosis with dinoflagellates and other algae is widespread among cnidarians such as corals and sea anemones. Symbiosis in these organisms is associated with physiological changes that are in turn driven by changes in gene expression. Recent studies have also identified changes in DNA methylation patterns that may be driven by symbiosis. While it is still unclear exactly how methylation may influence gene expression, there is support for a role of DNA methylation in alternative mRNA splicing shown in other systems. This project will test the hypothesis that the symbiotic phenotype is associated with differential DNA methylation and alternative splicing. The project will leverage the full length mRNA reads and sensitivity to base modifications possible using nanopore sequencing.

Samples: n= 3 aposymbiotic and n= 3 symbiotic Anthopleura elegantissima hosting the chlorophyte Elliptochloris marina. Specimens were collected within ~10 cm of each other on the underside of a boulder, and likely represent a single clone. Specimens were flash frozen within one hour of collection. This choice of samples should minimize environmental and genetic effects.

![_Anthopleura_](./images/titleimage.png)

# Methods overview

Step 1: Sequence DNA using Oxford Nanopore Ligation Sequencing Kit and 3 MinION flow cells (2 sea anemones multiplexed per flow cell, expected data output ~8 gb per flow cell, approx. 10x genome coverage per anemone).

Step 2: Sequence RNA using Oxford Nanopore cDNA-PCR Sequencing Kit and 2 MinION flow cells (3 sea anemones multiplexed per flow cell, expected data output ~8 gb per flow cell, approx. 6-10 million reads per flow cell).

Step 3: Generate A. elegantissima draft genome (Canu).

Step 4: Generate list of target symbiosis-influenced genes (~100-200 genes) identified in previous studies and map to the genome to identify introns and exons and develop gene models. Use these gene models as reference for further mapping.

Step 5: Map cDNA reads to gene models to identify alt splicing.

Step 6: Map DNA reads to gene models and call methylation using nanopolish.  


## Library preparation



## Assembly 



## Analysis 




## Software

This study made use of the following software:



#### R packages:



## Directory structure


`analyses/` - Files resulting from ipyrad assembly and R analyses.

`data/` -  Metadata and links to methods and raw data.

`images/` - Coral photos, gel images, figures.

`notebooks/` - Jupyter notebooks.

`scripts/` - Scripts such as R scripts used for analyses.
