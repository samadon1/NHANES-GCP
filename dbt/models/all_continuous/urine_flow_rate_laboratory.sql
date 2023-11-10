SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN URXVOL1 IS NOT NULL THEN URXVOL1 
WHEN URXVOL1 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_1_ml, 

CASE
        WHEN URDFLOW1 IS NOT NULL THEN URDFLOW1 
WHEN URDFLOW1 IS NULL THEN NULL 
ELSE NULL 
 END as urine_1_flow_rate_ml_min, 

CASE
        WHEN URDTIME1 IS NOT NULL THEN URDTIME1 
WHEN URDTIME1 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_last_urination_urine_1, 

CASE
        WHEN URXVOL2 IS NOT NULL THEN URXVOL2 
WHEN URXVOL2 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_2_ml, 

CASE
        WHEN URDFLOW2 IS NOT NULL THEN URDFLOW2 
WHEN URDFLOW2 IS NULL THEN NULL 
ELSE NULL 
 END as urine_2_flow_rate_ml_min, 

CASE
        WHEN URDTIME2 IS NOT NULL THEN URDTIME2 
WHEN URDTIME2 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_urine_1_urine_2, 

CASE
        WHEN URXVOL3 IS NOT NULL THEN URXVOL3 
WHEN URXVOL3 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_3_ml, 

CASE
        WHEN URDFLOW3 IS NOT NULL THEN URDFLOW3 
WHEN URDFLOW3 IS NULL THEN NULL 
ELSE NULL 
 END as urine_3_flow_rate_ml_min, 

CASE
        WHEN URDTIME3 IS NOT NULL THEN URDTIME3 
WHEN URDTIME3 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_urine_2_urine_3, 

 FROM {{ ref('stg_urine_flow_rate_laboratory') }}