SELECT
SEQN as respondent_sequence_number,
WHEN WTDRD1 IS NOT NULL THEN WTDRD1WHEN WTDRD1 IS NULL THEN NULL 
ELSE NULL 
 END as dietary_day_one_sample_weight,
WHEN WTDR2D IS NOT NULL THEN WTDR2DWHEN WTDR2D IS NULL THEN NULL 
ELSE NULL 
 END as dietary_two_day_sample_weight,
CASE
        WHEN DR1DRSTZ = 1 THEN 'Reliable and met the minimum criteria' 
WHEN DR1DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' 
WHEN DR1DRSTZ = 4 THEN 'Reported consuming breast-milk' 
WHEN DR1DRSTZ = 5 THEN 'Not done' 
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE NULL 
 END as dietary_recall_status,
WHEN DR1EXMER IS NOT NULL THEN DR1EXMERWHEN DR1EXMER IS NULL THEN NULL 
ELSE NULL 
 END as interviewer_id_code,
CASE
        WHEN DRDINT = 1 THEN 'Day 1 only' 
WHEN DRDINT = 2 THEN 'Day 1 and day 2' 
WHEN DRDINT IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_of_intake,
WHEN DR1DBIH IS NOT NULL THEN DR1DBIHWHEN DR1DBIH IS NULL THEN NULL 
ELSE NULL 
 END as of_days_b_w_intake_and_hh_interview,
CASE
        WHEN DR1DAY = 1 THEN 'Sunday' 
WHEN DR1DAY = 2 THEN 'Monday' 
WHEN DR1DAY = 3 THEN 'Tuesday' 
WHEN DR1DAY = 4 THEN 'Wednesday' 
WHEN DR1DAY = 5 THEN 'Thursday' 
WHEN DR1DAY = 6 THEN 'Friday' 
WHEN DR1DAY = 7 THEN 'Saturday' 
WHEN DR1DAY IS NULL THEN NULL 
ELSE NULL 
 END as intake_day_of_the_week,
CASE
        WHEN DR1LANG = 1 THEN 'English' 
WHEN DR1LANG = 2 THEN 'Spanish' 
WHEN DR1LANG = 3 THEN 'English and Spanish' 
WHEN DR1LANG = 4 THEN 'Other' 
WHEN DR1LANG = 5 THEN 'Asian Languages' 
WHEN DR1LANG = 6 THEN 'Asian Languages and English' 
WHEN DR1LANG IS NULL THEN NULL 
ELSE NULL 
 END as language_respondent_used_mostly,
CASE
        WHEN DS1LOC = 1 THEN 'HouseHold Interview' 
WHEN DS1LOC = 2 THEN 'MEC Interview' 
WHEN DS1LOC = 3 THEN 'Phone Interview' 
WHEN DS1LOC IS NULL THEN NULL 
ELSE NULL 
 END as location_supplement_originally_recorded,
WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64)WHEN DSDPID IS NULL THEN NULL 
ELSE NULL 
 END as nchs_supplement_id,
CASE
        WHEN DSDSUPP = 'Supplement Name' THEN 'Value was recorded' 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE NULL 
 END as supplement_name,
CASE
        WHEN DS1MTCH = 1 THEN 'Exact or near exact match' 
WHEN DS1MTCH = 2 THEN 'Probable match' 
WHEN DS1MTCH = 3 THEN 'Generic match' 
WHEN DS1MTCH = 4 THEN 'Reasonable match' 
WHEN DS1MTCH = 5 THEN 'Default match' 
WHEN DS1MTCH = 6 THEN 'No match' 
WHEN DS1MTCH = 7 THEN 'Refused' 
WHEN DS1MTCH = 9 THEN 'Don\'t know' 
WHEN DS1MTCH IS NULL THEN NULL 
ELSE NULL 
 END as matching_code,
CASE
        WHEN DS1ANTA = 0 THEN 'Non-antacid supplement' 
WHEN DS1ANTA = 1 THEN 'Antacid containing calcium and/or magnesium' 
WHEN DS1ANTA = 2 THEN 'Antacids reported with antacids' 
WHEN DS1ANTA IS NULL THEN NULL 
ELSE NULL 
 END as antacid_containing_calcium_magnesium,
WHEN DS1ACTSS IS NOT NULL THEN DS1ACTSSWHEN DS1ACTSS IS NULL THEN NULL 
ELSE NULL 
 END as reported_serving_size_label_serving_size,
WHEN DS1IKCAL IS NOT NULL THEN DS1IKCALWHEN DS1IKCAL IS NULL THEN NULL 
ELSE NULL 
 END as energy_kcal,
WHEN DS1IPROT IS NOT NULL THEN DS1IPROTWHEN DS1IPROT IS NULL THEN NULL 
ELSE NULL 
 END as protein_gm,
WHEN DS1ICARB IS NOT NULL THEN DS1ICARBWHEN DS1ICARB IS NULL THEN NULL 
ELSE NULL 
 END as carbohydrate_gm,
WHEN DS1ISUGR IS NOT NULL THEN DS1ISUGRWHEN DS1ISUGR IS NULL THEN NULL 
ELSE NULL 
 END as total_sugars_gm,
WHEN DS1IFIBE IS NOT NULL THEN DS1IFIBEWHEN DS1IFIBE IS NULL THEN NULL 
ELSE NULL 
 END as dietary_fiber_gm,
WHEN DS1ITFAT IS NOT NULL THEN DS1ITFATWHEN DS1ITFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_fat_gm,
WHEN DS1ISFAT IS NOT NULL THEN DS1ISFATWHEN DS1ISFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_saturated_fatty_acids_gm,
WHEN DS1IMFAT IS NOT NULL THEN DS1IMFATWHEN DS1IMFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_monounsaturated_fatty_acids_gm,
WHEN DS1IPFAT IS NOT NULL THEN DS1IPFATWHEN DS1IPFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_polyunsaturated_fatty_acids_gm,
WHEN DS1ICHOL IS NOT NULL THEN DS1ICHOLWHEN DS1ICHOL IS NULL THEN NULL 
ELSE NULL 
 END as cholesterol_mg,
WHEN DS1ILYCO IS NOT NULL THEN DS1ILYCOWHEN DS1ILYCO IS NULL THEN NULL 
ELSE NULL 
 END as lycopene_mcg,
WHEN DS1ILZ IS NOT NULL THEN DS1ILZWHEN DS1ILZ IS NULL THEN NULL 
ELSE NULL 
 END as lutein_zeaxanthin_mcg,
WHEN DS1IVB1 IS NOT NULL THEN DS1IVB1WHEN DS1IVB1 IS NULL THEN NULL 
ELSE NULL 
 END as thiamin_vitamin_b1_mg,
WHEN DS1IVB2 IS NOT NULL THEN DS1IVB2WHEN DS1IVB2 IS NULL THEN NULL 
ELSE NULL 
 END as riboflavin_vitamin_b2_mg,
WHEN DS1INIAC IS NOT NULL THEN DS1INIACWHEN DS1INIAC IS NULL THEN NULL 
ELSE NULL 
 END as niacin_mg,
WHEN DS1IVB6 IS NOT NULL THEN DS1IVB6WHEN DS1IVB6 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b6_mg,
WHEN DS1IFA IS NOT NULL THEN DS1IFAWHEN DS1IFA IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_mcg,
WHEN DS1IFDFE IS NOT NULL THEN DS1IFDFEWHEN DS1IFDFE IS NULL THEN NULL 
ELSE NULL 
 END as folate_dfe_mcg,
WHEN DS1ICHL IS NOT NULL THEN DS1ICHLWHEN DS1ICHL IS NULL THEN NULL 
ELSE NULL 
 END as total_choline_mg,
WHEN DS1IVB12 IS NOT NULL THEN DS1IVB12WHEN DS1IVB12 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b12_mcg,
WHEN DS1IVC IS NOT NULL THEN DS1IVCWHEN DS1IVC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg,
WHEN DS1IVK IS NOT NULL THEN DS1IVKWHEN DS1IVK IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_k_mcg,
WHEN DS1IVD IS NOT NULL THEN DS1IVDWHEN DS1IVD IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_d_d2_d3_mcg,
WHEN DS1ICALC IS NOT NULL THEN DS1ICALCWHEN DS1ICALC IS NULL THEN NULL 
ELSE NULL 
 END as calcium_mg,
WHEN DS1IPHOS IS NOT NULL THEN DS1IPHOSWHEN DS1IPHOS IS NULL THEN NULL 
ELSE NULL 
 END as phosphorus_mg,
WHEN DS1IMAGN IS NOT NULL THEN DS1IMAGNWHEN DS1IMAGN IS NULL THEN NULL 
ELSE NULL 
 END as magnesium_mg,
WHEN DS1IIRON IS NOT NULL THEN DS1IIRONWHEN DS1IIRON IS NULL THEN NULL 
ELSE NULL 
 END as iron_mg,
WHEN DS1IZINC IS NOT NULL THEN DS1IZINCWHEN DS1IZINC IS NULL THEN NULL 
ELSE NULL 
 END as zinc_mg,
WHEN DS1ICOPP IS NOT NULL THEN DS1ICOPPWHEN DS1ICOPP IS NULL THEN NULL 
ELSE NULL 
 END as copper_mg,
WHEN DS1ISODI IS NOT NULL THEN DS1ISODIWHEN DS1ISODI IS NULL THEN NULL 
ELSE NULL 
 END as sodium_mg,
WHEN DS1IPOTA IS NOT NULL THEN DS1IPOTAWHEN DS1IPOTA IS NULL THEN NULL 
ELSE NULL 
 END as potassium_mg,
WHEN DS1ISELE IS NOT NULL THEN DS1ISELEWHEN DS1ISELE IS NULL THEN NULL 
ELSE NULL 
 END as selenium_mcg,
WHEN DS1ICAFF IS NOT NULL THEN DS1ICAFFWHEN DS1ICAFF IS NULL THEN NULL 
ELSE NULL 
 END as caffeine_mg,
WHEN DS1IIODI IS NOT NULL THEN SAFE_CAST(DS1IIODI AS FLOAT64)WHEN DS1IIODI IS NULL THEN NULL 
ELSE NULL 
 END as iodine_mcg,
 FROM {{ ref('stg_dietary_supplement_use_24_hour_individual_dietary_supplements_first_day_dietary') }}