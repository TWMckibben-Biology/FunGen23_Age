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
DD=/scratch/$MyID/FinalProject/HumanRawData             ## Example: DD=/scratch/$MyID/PracticeRNAseq/RawData
WD=/scratch/$MyID/FinalProject  ## Example: WD=/scratch/$MyID/PracticeRNAseq
CS=PreCleanQualityHuman

##  make the directories in SCRATCH for holding the raw data
## -p tells it to make any upper level directories that are not there. Notice how this will also make the WD.
mkdir -p $DD
## move to the Data Directory
cd $DD
##########  Download data files from NCBI: SRA using the Run IDs
  ### from SRA use the SRA tool kit - see NCBI website https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/
        ## this downloads the SRA file and converts to fastq
        ## -F   Defline contains only original sequence name.
        ## -I   Append read id after spot id as 'accession.spot.readid' on defline.
        ## splits the files into R1 and R2 (forward reads, reverse reads)

vdb-config --interactive

fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1324496
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1326604
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1327702
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1328101
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1344422
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1347214
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1353517
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1353924
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1354955
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1356290
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1368117
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1368574
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1370572
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1375439
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1375509
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1375774
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1381348
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1383259
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1384371
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1385411
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1386991
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1387240
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1387966
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1388809
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1389497
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1390027
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1394637
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1396786
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1397156
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1400551
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1401379
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1401752
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1401839
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1402153
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1402172
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1402328
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1402794
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1405123
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1405984
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1406008
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1406112
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1408249
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1409130
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1409575
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1410221
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1413872
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1414314
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1414727
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1415773
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1418561
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1429265
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1431569
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1432453
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1432743
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1434502
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1435626
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1440744
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1443003
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1443436
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1444002
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1452515
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1452864
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1452912
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1454310
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1456027
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1458220
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1458683
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1458852
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1459125
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1459937
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1464681
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1464915
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1466512
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1468532
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1468658
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1478053
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1480455
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1487746
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1489030
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1489610
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1489950
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR1500323
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR5125586
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR5125587
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8176158
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218390
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218401
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218421
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218543
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218653
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218673
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218780
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8218818
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219037
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219107
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219147
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219182
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219244
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219256
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219287
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219339
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219365
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219462
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219541
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219575
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219620
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219690
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219738
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219861
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8219990
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220006
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220105
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220139
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220162
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220189
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220294
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220354
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220403
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220408
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220421
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220596
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220640
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220663
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220779
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220786
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220876
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8220925
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221046
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221141
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221270
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221293
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221479
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221491
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221513
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221564
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221589
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221597
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221691
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221743
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221774
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221785
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221851
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221878
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8221934
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222069
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222150
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222156
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222210
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222258
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222304
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222343
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222470
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222537
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222598
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222656
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222768
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222923
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8222992
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223026
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223043
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223156
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223173
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223187
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8223257
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225392
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225408
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225425
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225516
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225525
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225546
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225593
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225614
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225620
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225635
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225663
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225811
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225819
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225827
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225897
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225955
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8225985
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226046
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226055
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226284
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226352
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226454
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226559
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226684
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226726
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226787
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226796
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226838
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226920
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8226942
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227172
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227193
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227313
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227423
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227785
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227813
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227834
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227879
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8227975
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228016
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228029
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228087
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228146
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228147
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228166
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228167
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228181
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228239
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228324
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228325
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228326
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228327
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228341
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228374
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228394
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228420
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228488
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228510
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228530
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228531
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228532
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228761
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228783
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228803
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228827
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228908
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228971
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8228987
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229012
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229036
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229109
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229147
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229187
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229223
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229249
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229319
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229352
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229394
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229477
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229533
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229646
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229654
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229693
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229768
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229852
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8229978
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230046
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230086
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230087
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230389
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230397
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230443
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230470
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230565
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230662
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230801
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230814
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230969
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8230999
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231125
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231137
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231173
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231200
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231244
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231295
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231348
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231372
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231393
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231486
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231554
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231560
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231686
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231760
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231876
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231896
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8231916
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232036
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232153
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232162
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232230
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232268
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232286
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232307
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232346
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232417
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232527
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232543
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232563
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232617
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232632
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232648
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232818
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232845
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232896
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232901
fasterq-dump  --splitiles -p -t /scratch/aubclsb0323/ -o /scratch/aubclsb0323/ SRR8232958

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
