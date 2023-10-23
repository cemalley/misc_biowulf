convert2annovar.pl -allsample -format vcf4 -withfreq --includeinfo AREDS_ARED2_WGS_Jayshree.AllChr.vcf.gz > AREDS_AREDS2_WGS_Jayshree.AllChr.avinput

table_annovar.pl AREDS_AREDS2_WGS_Jayshree.AllChr.avinput $ANNOVAR_DATA/hg19 -buildver hg19 -out AREDS_AREDS2_WGS_Jayshree.AllChr -otherinfo -remove -protocol refGene,snp151,ALL.sites.2012_04,exac03,ljb26_all,intervar_20180118,cosmic70,clinvar_20210123 -operation g,f,f,f,f,f,f,f -nastring . -csvout
