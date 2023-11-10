SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) 
WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) 
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE NULL 
 END as folate_and_folate_forms_weight, 

CASE
        WHEN LBDRFO IS NOT NULL THEN LBDRFO 
WHEN LBDRFO IS NULL THEN NULL 
ELSE NULL 
 END as rbc_folate_ng_ml, 

CASE
        WHEN LBDRFOSI IS NOT NULL THEN LBDRFOSI 
WHEN LBDRFOSI IS NULL THEN NULL 
ELSE NULL 
 END as rbc_folate_nmol_l, 

 FROM {{ ref('stg_folate_rbc_laboratory') }}