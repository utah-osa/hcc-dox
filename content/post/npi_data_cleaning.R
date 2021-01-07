
npis <-  fread("provider_master_table_2019.csv")

taxonomy_lookup <- fread("nucc_taxonomy.csv")

full <-  merge(npis, taxonomy_lookup,
               by.x="Healthcare_Provider_Taxonomy_Co",
               by.y="Code")


temp  <- full[,.(freq=.N),by="Classification"]
temp


clean <-  full[!(Classification %in% c("Nurse Practitioner"))]

clean %>% saveRDS("npi_cleaned.RDS")