SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN URXUAS3 IS NOT NULL THEN URXUAS3 
WHEN URXUAS3 IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenous_acid_ug_l, 

CASE
        WHEN URDUA3LC = 0 THEN 'At or above the detection limit' 
WHEN URDUA3LC = 1 THEN 'Below lower detection limit' 
WHEN URDUA3LC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenous_acid_comment_code, 

CASE
        WHEN URXUAS5 IS NOT NULL THEN URXUAS5 
WHEN URXUAS5 IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenic_acid_ug_l, 

CASE
        WHEN URDUA5LC = 0 THEN 'At or above the detection limit' 
WHEN URDUA5LC = 1 THEN 'Below lower detection limit' 
WHEN URDUA5LC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenic_acid_comment_code, 

CASE
        WHEN URXUAB IS NOT NULL THEN URXUAB 
WHEN URXUAB IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenobetaine_ug_l, 

CASE
        WHEN URDUABLC = 0 THEN 'At or above the detection limit' 
WHEN URDUABLC = 1 THEN 'Below lower detection limit' 
WHEN URDUABLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenobetaine_comment_code, 

CASE
        WHEN URXUAC IS NOT NULL THEN URXUAC 
WHEN URXUAC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenocholine_ug_l, 

CASE
        WHEN URDUACLC = 0 THEN 'At or above the detection limit' 
WHEN URDUACLC = 1 THEN 'Below lower detection limit' 
WHEN URDUACLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenocholine_comment_code, 

CASE
        WHEN URXUDMA IS NOT NULL THEN URXUDMA 
WHEN URXUDMA IS NULL THEN NULL 
ELSE NULL 
 END as urinary_dimethylarsinic_acid_ug_l, 

CASE
        WHEN URDUDALC = 0 THEN 'At or above the detection limlt' 
WHEN URDUDALC = 1 THEN 'Below lower detection limit' 
WHEN URDUDALC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_dimethylarsinic_acid_comment, 

CASE
        WHEN URXUMMA IS NOT NULL THEN URXUMMA 
WHEN URXUMMA IS NULL THEN NULL 
ELSE NULL 
 END as urinary_monomethylarsonic_acid_ug_l, 

CASE
        WHEN URDUMMAL = 0 THEN 'At or above the detection limit' 
WHEN URDUMMAL = 1 THEN 'below lower detection limit' 
WHEN URDUMMAL IS NULL THEN NULL 
ELSE NULL 
 END as urinary_monomethylarsonic_acid_comment, 

 FROM {{ ref('stg_arsenics_speciated_urine_laboratory') }}