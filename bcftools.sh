bcftools view -H --regions-file /data/NEI_Chew/Malley/Jayshree_subset/hg19_exonic_regions.txt /data/NEI_Chew/AREDS_SNPArray/merged/AREDS_CHR',chr,'.vcf.gz > /data/NEI_Chew/Malley/Jayshree_subset/AREDS_SNPArray/AREDS_SNPArray_Jayshree.chr',chr,'.vcf


bcftools merge --missing-to-ref -m none --force-samples AREDS_AREDS2_WGS_Jayshree_hg38.chr*.vcf.gz | bgzip -c > AREDS_ARED2_WGS_Jayshree.AllChr.vcf.gz

bcftools merge --missing-to-ref -m none AREDS_ARED2_WGS_Jayshree.chr*.vcf.gz | bgzip -c > AREDS_ARED2_WGS_Jayshree.AllChr.vcf.gz

bcftools concat -a -d -f chr*filtered*.vcf.gz --no-version | bgzip -c > AREDS_AREDS2_merged_without_14.vcf.gz
