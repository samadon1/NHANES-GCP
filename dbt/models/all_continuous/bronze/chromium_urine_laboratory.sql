SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSAPRP = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE WTSAPRP 
 END as subsample_a_weights_pre_pandemic, 

CASE
            WHEN URXUCM IS NULL THEN NULL 
ELSE URXUCM 
 END as chromium_urine_ug_l, 

CASE
            WHEN URDUCMLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN URDUCMLC = 1 THEN 'below lower detection limit' -- categorize numeric values
WHEN URDUCMLC IS NULL THEN NULL 
ELSE URDUCMLC 
 END as chromium_urine_comment_code, 

 FROM {{ ref('stg_chromium_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UCM.htm
        