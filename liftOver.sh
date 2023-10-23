# create matching dict file from reference fasta
java -Xmx9g -XX:ParallelGCThreads=5 -jar $PICARDJARPATH/picard.jar CreateSequenceDictionary R=Homo_sapiens.GRCh38.dna.primary_assembly.fa O=Homo_sapiens.GRCh38.dna.primary_assembly.dict

# run liftOver from hg19 to hg38.
java -Xmx44g -XX:ParallelGCThreads=5 -jar $PICARDJARPATH/picard.jar LiftoverVcf  I=AREDS_ARED2_WGS_Jayshree.chrupdate.chrX.vcf.gz O=AREDS_AREDS2_WGS_Jayshree_hg38.chrX.vcf CHAIN=/fdb/ensembl/pub/assembly_mapping/homo_sapiens/GRCh37_to_GRCh38.chain.gz REJECT=chrXrejected_variants.vcf R=/data/malleyce/Homo_sapiens.GRCh38.dna.primary_assembly.fa
