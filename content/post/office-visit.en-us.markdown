---
title: Office Visit
author: Alexander Nielson
date: '2020-12-18'
slug: office-visit.en-us
categories: []
tags:
  - Office
  - Visit
  - Evaluation and Management
keywords:
  - tech
---



<!-- # Doctor Visit / Checkup -->

<!-- ```{r} -->

<!-- # checkup <- bun_proc[faci_bun %>%  stri_detect_regex("(99201)|(99202)|(99203)|(99204)|(99205)|(99211)|(99212)|(99213) -->
<!-- # (99214)|(99215)") & -->
<!-- #   surg_bun==""  & medi_bun==""   & radi_bun=="" & path_bun=="" & anes_bun==""] -->

<!-- checkup <- bun_proc[(faci_bun =="99201" | -->
<!-- faci_bun == "99202" | -->
<!-- faci_bun == "99203" | -->
<!-- faci_bun == "99204" | -->
<!-- faci_bun == "99205" | -->
<!-- faci_bun == "99211" | -->
<!-- faci_bun == "99212" | -->
<!-- faci_bun == "99213" | -->
<!-- faci_bun == "99214" | -->
<!-- faci_bun == "99215") & -->
<!--   surg_bun==""  & medi_bun==""   & radi_bun=="" & path_bun=="" & anes_bun==""] -->

<!-- ``` -->
<!-- ```{r} -->
<!-- checkup %>% nrow() -->
<!-- ``` -->


<!-- ```{r} -->
<!-- checkup <- checkup[cnt > 4 & tp_med < 1000 & tp_med > 0]  -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup %>% nrow() -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup %>% plot_med_density() %>% print() -->
<!-- checkup %>% get_tag_cor() %>% print() -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup %>% get_tag_density_information("faci_bun_t_est") %>% print() -->
<!-- ``` -->


<!-- ```{r} -->
<!-- checkup_est <- checkup[faci_bun_t_est==T] -->

<!-- checkup_new <- checkup[faci_bun_t_est==F] -->
<!-- ``` -->


<!-- ```{r, eval=FALSE} -->
<!-- checkup_new <-  checkup_new[,`:=`( -->
<!--   surg_sp_name_clean = surg_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   surg_bp_name_clean = surg_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   medi_sp_name_clean = medi_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   medi_bp_name_clean = medi_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   radi_sp_name_clean = radi_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   radi_bp_name_clean = radi_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   path_sp_name_clean = path_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   path_bp_name_clean = path_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   anes_sp_name_clean = anes_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   anes_bp_name_clean = anes_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   faci_sp_name_clean = faci_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   faci_bp_name_clean = faci_bp_npi %>% map_chr(get_npi_standard_name) -->
<!--                            )] -->
<!-- ``` -->

<!-- ```{r, eval=FALSE} -->
<!-- checkup_new %>% saveRDS("checkup_new.RDS") -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup_new <- readRDS("checkup_new.RDS") -->
<!-- ``` -->


<!-- ```{r} -->
<!-- checkup_new_btb4 <- checkup_new %>% btbv4() -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup_new_bq <- checkup_new_btb4 %>%  -->
<!--     .[is.na(doctor_str2)] %>%  -->
<!--   .[,`:=`(procedure_type=10, procedure_modifier="New Patient")] %>%  -->
<!--   .[,.( -->
<!--   primary_doctor = doctor_str1, -->
<!--   primary_doctor_npi = doctor_npi_str1 , -->
<!--   most_important_fac	, -->
<!--   most_important_fac_npi,	 -->
<!--   procedure_type, -->
<!--   procedure_modifier, -->
<!--   tp_med_med, -->
<!--   tp_med_surg, -->
<!--   tp_med_medi, -->
<!--   tp_med_path, -->
<!--   tp_med_radi, -->
<!--   tp_med_anes, -->
<!--   tp_med_faci, -->
<!--   tp_cnt_cnt, -->
<!--   ingest_date = Sys.Date() -->
<!-- )] -->
<!-- ``` -->


<!-- ```{r, eval=FALSE} -->
<!-- bq_table_upload(x=procedure_dev_table, values= checkup_new_bq, create_disposition='CREATE_IF_NEEDED', write_disposition='WRITE_APPEND') -->
<!-- ``` -->



<!-- ```{r, eval=FALSE} -->
<!-- checkup_est <-  checkup_est[,`:=`( -->
<!--   surg_sp_name_clean = surg_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   surg_bp_name_clean = surg_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   medi_sp_name_clean = medi_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   medi_bp_name_clean = medi_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   radi_sp_name_clean = radi_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   radi_bp_name_clean = radi_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   path_sp_name_clean = path_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   path_bp_name_clean = path_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   anes_sp_name_clean = anes_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   anes_bp_name_clean = anes_bp_npi %>% map_chr(get_npi_standard_name), -->

<!--   faci_sp_name_clean = faci_sp_npi %>% map_chr(get_npi_standard_name), -->
<!--   faci_bp_name_clean = faci_bp_npi %>% map_chr(get_npi_standard_name) -->
<!--                            )] -->
<!-- ``` -->

<!-- ```{r, eval=FALSE} -->
<!-- checkup_est %>% saveRDS("checkup_est.RDS") -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup_est <- readRDS("checkup_est.RDS") -->
<!-- ``` -->



<!-- ```{r} -->
<!-- checkup_est_btb4 <- checkup_est %>% btbv4() -->
<!-- ``` -->

<!-- ```{r} -->
<!-- checkup_est_bq <- checkup_est_btb4 %>% -->
<!--   .[,`:=`(procedure_type=10, procedure_modifier="Established Patient")] %>%  -->
<!--   .[is.na(doctor_str2)] %>%  -->
<!--   .[,.( -->
<!--   primary_doctor = doctor_str1, -->
<!--   primary_doctor_npi = doctor_npi_str1 , -->
<!--   most_important_fac	, -->
<!--   most_important_fac_npi,	 -->
<!--   procedure_type, -->
<!--   procedure_modifier, -->
<!--   tp_med_med, -->
<!--   tp_med_surg, -->
<!--   tp_med_medi, -->
<!--   tp_med_path, -->
<!--   tp_med_radi, -->
<!--   tp_med_anes, -->
<!--   tp_med_faci, -->
<!--   tp_cnt_cnt, -->
<!--   ingest_date = Sys.Date() -->
<!-- )] -->
<!-- ``` -->



<!-- ```{r, eval=FALSE} -->
<!-- bq_table_upload(x=procedure_dev_table, values= checkup_est_bq, create_disposition='CREATE_IF_NEEDED', write_disposition='WRITE_APPEND') -->
<!-- ``` -->
