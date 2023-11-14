SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_weight, 

CASE
WHEN LBX2DF IS NULL THEN NULL 
ELSE SAFE_CAST(LBX2DF AS FLOAT64) 
 END as blood_2_5_dimethylfuran_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD2DFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD2DFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD2DFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD2DFLC AS STRING) 
 END as blood_2_5_dimethylfuran_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBX4CE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.028 AS FLOAT64),0) AS INT64) THEN '0.028' -- categorize numeric values
WHEN LBX4CE IS NULL THEN NULL 
ELSE SAFE_CAST(LBX4CE AS STRING) 
 END as blood_1_1_1_2_tetrachloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4CELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4CELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD4CELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD4CELC AS STRING) 
 END as blood_1_1_1_2_tetrachloroethane_cmt_code, 

CASE
WHEN LBXV06 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV06 AS FLOAT64) 
 END as blood_hexane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV06LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV06LC AS STRING) 
 END as blood_hexane_comment_code, 

CASE
WHEN LBXV07N IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV07N AS FLOAT64) 
 END as blood_heptane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV07LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV07LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV07LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV07LC AS STRING) 
 END as blood_heptane_comment_code, 

CASE
WHEN LBXV08N IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV08N AS FLOAT64) 
 END as blood_octane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV08LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV08LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV08LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV08LC AS STRING) 
 END as blood_octane_comment_code, 

CASE
WHEN LBXV1D IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV1D AS FLOAT64) 
 END as blood_1_2_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV1DLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV1DLC AS STRING) 
 END as blood_1_2_dichlorobenzene_comment_code, 

CASE
WHEN LBXV2A IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2A AS FLOAT64) 
 END as blood_1_2_dichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV2ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2ALC AS STRING) 
 END as blood_1_2_dichloroethane_comment_code, 

CASE
WHEN LBXV3B IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV3B AS FLOAT64) 
 END as blood_1_3_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3BLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3BLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV3BLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV3BLC AS STRING) 
 END as blood_1_3_dichlorobenzene_comment_code, 

CASE
WHEN LBXV4C IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV4C AS FLOAT64) 
 END as blood_tetrachloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV4CLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV4CLC AS STRING) 
 END as blood_tetrachloroethene_comment_code, 

CASE
WHEN LBXVBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBF AS FLOAT64) 
 END as blood_bromoform_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBFLC AS STRING) 
 END as blood_bromoform_comment_code, 

CASE
WHEN LBXVBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBM AS FLOAT64) 
 END as blood_bromodichloromethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBMLC AS STRING) 
 END as blood_bromodichloromethane_comment_code, 

CASE
WHEN LBXVBZ IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBZ AS FLOAT64) 
 END as blood_benzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBZLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBZLC AS STRING) 
 END as blood_benzene_comment_code, 

CASE
WHEN LBXVBZN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBZN AS FLOAT64) 
 END as blood_benzonitrile_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVZBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVZBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVZBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVZBLC AS STRING) 
 END as blood_benzonitrile_comment_code, 

CASE
WHEN LBXVC6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVC6 AS FLOAT64) 
 END as blood_cyclohexane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVC6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVC6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVC6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVC6LC AS STRING) 
 END as blood_cyclohexane_comment_code, 

CASE
WHEN LBXVCB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCB AS FLOAT64) 
 END as blood_chlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCBLC AS STRING) 
 END as blood_chlorobenzene_comment_code, 

CASE
WHEN LBXVCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCF AS FLOAT64) 
 END as blood_chloroform_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCFLC AS STRING) 
 END as blood_chloroform_comment_code, 

CASE
WHEN LBXVCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCM AS FLOAT64) 
 END as blood_dibromochloromethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCMLC AS STRING) 
 END as blood_dibromochloromethane_comment_code, 

CASE
WHEN LBXVCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCT AS FLOAT64) 
 END as blood_carbon_tetrachloride_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCTLC AS STRING) 
 END as blood_carbon_tetrachloride_comment_code, 

CASE
WHEN LBXVDB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDB AS FLOAT64) 
 END as blood_1_4_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVDBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDBLC AS STRING) 
 END as blood_1_4_dichlorobenzene_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXVDE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.011 AS FLOAT64),0) AS INT64) THEN '0.011' -- categorize numeric values
WHEN LBXVDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDE AS STRING) 
 END as blood_1_2_dibromoethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVDELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDELC AS STRING) 
 END as blood_1_2_dibromoethane_comment_code, 

CASE
WHEN LBXVDEE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDEE AS FLOAT64) 
 END as blood_diethyl_ether_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVEELC AS STRING) 
 END as blood_diethyl_ether_comment_code, 

CASE
WHEN LBXVEA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVEA AS FLOAT64) 
 END as blood_ethyl_acetate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVEALC AS STRING) 
 END as blood_ethyl_acetate_comment_code, 

CASE
WHEN LBXVEB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVEB AS FLOAT64) 
 END as blood_ethylbenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVEBLC AS STRING) 
 END as blood_ethylbenzene_comment_code, 

CASE
WHEN LBXVEC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVEC AS FLOAT64) 
 END as blood_chloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVECLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVECLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVECLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVECLC AS STRING) 
 END as blood_chloroethane_comment_code, 

CASE
WHEN LBXVFN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVFN AS FLOAT64) 
 END as blood_furan_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVFNLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVFNLC AS STRING) 
 END as blood_furan_comment_code, 

CASE
WHEN LBXVIBN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVIBN AS FLOAT64) 
 END as blood_isobutyronitrile_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVIBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVIBLC AS STRING) 
 END as blood_isobutyronitrile_comment_code, 

CASE
WHEN LBXVIPB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVIPB AS FLOAT64) 
 END as blood_isopropylbenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVIPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVIPLC AS STRING) 
 END as blood_isopropylbenzene_comment_code, 

CASE
WHEN LBXVMC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVMC AS FLOAT64) 
 END as blood_methylene_chloride_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMCLC AS STRING) 
 END as blood_methylene_chloride_comment_code, 

CASE
WHEN LBXVME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVME AS FLOAT64) 
 END as blood_mtbe_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMELC AS STRING) 
 END as blood_mtbe_comment_code, 

CASE
WHEN LBXVMCP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVMCP AS FLOAT64) 
 END as blood_methylcyclopentane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMPLC AS STRING) 
 END as blood_methylcyclopentane_comment_code, 

CASE
WHEN LBXVMIK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVMIK AS FLOAT64) 
 END as blood_methyl_isobutyl_ketone_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMKLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMKLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMKLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMKLC AS STRING) 
 END as blood_methyl_isobutyl_ketone_comt_code, 

CASE
WHEN LBXVNB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVNB AS FLOAT64) 
 END as blood_nitrobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVNBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVNBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVNBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVNBLC AS STRING) 
 END as blood_nitrobenzene_comment_code, 

CASE
WHEN LBXVOX IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVOX AS FLOAT64) 
 END as blood_o_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVOXLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVOXLC AS STRING) 
 END as blood_o_xylene_comment_code, 

CASE
WHEN LBXVTC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTC AS FLOAT64) 
 END as blood_trichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTCLC AS STRING) 
 END as blood_trichloroethene_comment_code, 

CASE
WHEN LBXVTE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTE AS FLOAT64) 
 END as blood_1_1_1_trichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTELC AS STRING) 
 END as blood_1_1_1_trichloroethane_comment_code, 

CASE
WHEN LBXVTFT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTFT AS FLOAT64) 
 END as blood_aaa_trifluorotoluene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVFTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVFTLC AS STRING) 
 END as blood_aaa_trifluorotoluene_comment_code, 

CASE
WHEN LBXVTHF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTHF AS FLOAT64) 
 END as blood_tetrahydrofuran_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVHTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVHTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVHTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVHTLC AS STRING) 
 END as blood_tetrahydrofuran_comment_code, 

CASE
WHEN LBXVTP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTP AS FLOAT64) 
 END as blood_1_2_3_trichloropropane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTPLC AS STRING) 
 END as blood_1_2_3_trichloropropane_comt_code, 

CASE
WHEN LBXVVB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVVB AS FLOAT64) 
 END as blood_vinyl_bromide_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVVBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVVBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVVBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVVBLC AS STRING) 
 END as blood_vinyl_bromide_comment_code, 

CASE
WHEN LBXVXY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVXY AS FLOAT64) 
 END as blood_m_p_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVXYLC AS STRING) 
 END as blood_m_p_xylene_comment_code, 

CASE
WHEN WTSVOCPR IS NOT NULL THEN SAFE_CAST(WTSVOCPR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSVOCPR IS NOT NULL THEN SAFE_CAST(WTSVOCPR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSVOCPR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOCPR AS FLOAT64) 
 END as voc_subsample_weight_pre_pandemic, 

CASE
WHEN LBXVDX IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDX AS FLOAT64) 
 END as blood_1_4_dioxane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDXLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDXLC AS STRING) 
 END as blood_1_4_dioxane_comment_code, 

CASE
WHEN LBXVTO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTO AS FLOAT64) 
 END as blood_toluene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTOLC AS STRING) 
 END as blood_toluene_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_and_trihalomethanes_mtbe_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VOCWB_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_VOCWB.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/VOCWB_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/VOCWB_H.htm
*/
