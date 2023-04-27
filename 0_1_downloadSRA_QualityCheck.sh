#! /bin/bash

######### Functional Genomics Final Project- Abbey, Hannah, Sarah Grace, Taylor 

########## Load Modules
source /opt/asn/etc/asn-bash-profiles-special/modules.sh
module load sra
module load fastqc/0.10.1

##########  Define variables and make directories
###Currently keyed to Taylor's account
MyID=aubclsb0323          ## Example: MyID=aubtss

## Make variable that represents YOUR working directory(WD) in scratch, your Raw data directory (DD) and the pre or postcleaned status (CS).
DD=/scratch/$MyID/FinalProject/RawData             ## Example: DD=/scratch/$MyID/PracticeRNAseq/RawData
WD=/scratch/$MyID/FinalProject  ## Example: WD=/scratch/$MyID/PracticeRNAseq
CS=PreCleanQuality

##  make the directories in SCRATCH for holding the raw data
## -p tells it to make any upper level directories that are not there. Notice how this will also make the WD.
mkdir -p $DD
## move to the Data Directory
cd $DD

###Make a list of all accession IDs

AccList=("SRR11102034"	"SRR11102035"	"SRR11102036"	"SRR11102037"	"SRR11102038"	"SRR11102039"	"SRR11102040"	"SRR11102041"	"SRR11102042"	"SRR11102043"	"SRR11102044"	"SRR11102045"	"SRR11102046"	"SRR11102047"	"SRR11102048"	"SRR11102049"	"SRR11102050"	"SRR11102051"	"SRR11102052"	"SRR11102053"	"SRR11102054"	"SRR11102055"	"SRR11102056"	"SRR11102057"	"SRR11102058"	"SRR11102059"	"SRR11102060"	"SRR11102061"	"SRR11102062"	"SRR11102063"	"SRR11102064"	"SRR11102065"	"SRR11102066"	"SRR11102067"	"SRR11102068"	"SRR11102069"	"SRR11102070"	"SRR11102071"	"SRR11102072"	"SRR11102073"	"SRR11102074"	"SRR11102075"	"SRR11102076"	"SRR11102077"	"SRR11102078"	"SRR11102079"	"SRR11102080"	"SRR11102081"	"SRR11102082"	"SRR11102083")


###Loop to pull accession data and convert to fastq###

vdb-config --prefetch-to-cwd

for str in ${AccList[@]}; do
	prefetch $str
	fastq-dump $str --split-files
done

##### Extra ####
## If you data comes with multiple R1 and R2 files per individual. You can contatenate them together using "cat" before running FASTQC
## see examples below for one file. You will probably want to use a loop to process through all the files.
#cat SRR6819014*_R1_*.fastq.gz > SRR6819014_All_R1.fastq.gz
#cat SRR6819014*_R2_*.fastq.gz > SRR6819014_All_R2.fastq.gz


############## FASTQC to assess quality of the sequence data
## FastQC: run on each of the data files that have 'All' to check the quality of the data
## The output from this analysis is a folder of results and a zipped file of results
mkdir $WD/$CS
fastqc *.fastq --outdir=$WD/$CS

#######  Tarball the directory containing the FASTQC results so we can easily bring it back to our computer to evaluate.
## when finished use scp or rsync to bring the tarballed .gz results file to your computer and open the .html file to evaluate the quality of your raw data.
cd $WD/$CS
tar cvzf $CS.tar.gz $WD/$CS/*
