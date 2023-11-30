SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Excellent,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Very good,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Good,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Fair, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Poor?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ010 AS STRING) 
 END as general_health_condition, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'About the same?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ020 AS STRING) 
 END as health_now_compared_with_1_year_ago, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'There is no place' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'There is more than one place' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ030 AS STRING) 
 END as routine_place_to_go_for_healthcare, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Clinic or health center' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Doctors office or HMO' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Hospital emergency room' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Hospital outpatient department' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Some other place' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Doesnt go to one place most often' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ041 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ041 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ041 AS STRING) 
 END as type_place_most_often_go_for_healthcare, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'None' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '2 to 3' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '4 to 5' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '6 to 7' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN '8 to 9' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '10 to 12' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN '13 to 15' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '16 or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ051 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ051 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ051 AS STRING) 
 END as times_receive_healthcare_over_past_year, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '6 months or less,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'more than 6 months, but not more than 1 year ago,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'more than 1 year, but not more than 2 years ago,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'more than 2 years, but not more than 5 years ago,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'more than 5 years ago, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ061 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ061 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ061 AS STRING) 
 END as how_long_since_last_healthcare_visit, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ071 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ071 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ071 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ071 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HUQ071 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ071 AS STRING) 
 END as overnight_hospital_patient_in_last_year, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '6 times or more' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77777 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99999 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUD080 IS NULL THEN NULL 
ELSE SAFE_CAST(HUD080 AS STRING) 
 END as times_overnite_hospital_patient_last_yr, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ090 AS STRING) 
 END as seen_mental_health_professional_past_yr, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'within the past year (anytime less than 12 months ago)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'within the last 2 years (1 year but less than 2 years ago)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'within the last 5 years (2 years but less than 5 years ago)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '5 years ago or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUD062 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN HUD062 IS NULL THEN NULL 
ELSE SAFE_CAST(HUD062 AS STRING) 
 END as how_long_since_last_healthcare_visit_HUD062, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Clinic or health center' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Doctors office or HMO' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Hospital emergency room' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Hospital outpatient department' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Some other place' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ040 AS STRING) 
 END as type_place_most_often_go_for_healthcare_HUQ040, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 to 3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '4 to 9' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '10 to 12' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '13 or more' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ050 AS STRING) 
 END as times_receive_healthcare_over_past_year_HUQ050, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '6 months or less,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'More than 6 months, but not more than 1 year ago,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'More than 1 year, but not more than 3 years ago,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'More than 3 years, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ060 AS STRING) 
 END as how_long_since_last_healthcare_visit_HUQ060, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ082 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ082 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ082 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ082 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ082 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ082 AS STRING) 
 END as in_long_term_care_facility_last_12_month, 

CASE
WHEN HUQ084 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ084 AS STRING) 
 END as total_of_days_in_long_term_facility, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ086 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ086 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ086 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ086 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ086 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ086 AS STRING) 
 END as non_sp_hh_member_in_care_fac_overnight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ088A AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Acute care facility' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ088A AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ088A AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HUQ088A IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ088A AS STRING) 
 END as acute_care_facility, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ088B AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Long term care facility' -- categorize string values 
WHEN HUQ088B IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ088B AS STRING) 
 END as long_term_care_facility, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HUQ088C AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Rehabilitation facility' -- categorize string values 
WHEN HUQ088C IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ088C AS STRING) 
 END as rehabilitation_facility, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUD070 IS NULL THEN NULL 
ELSE SAFE_CAST(HUD070 AS STRING) 
 END as overnight_hospital_patient_in_last_year_HUD070, 

CASE
WHEN HUQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ080 AS STRING) 
 END as times_overnite_hospital_patient_last_yr_HUQ080, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HUQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HUQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(HUQ070 AS STRING) 
 END as overnight_hospital_patient_in_last_year_HUQ070, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hospital_utilization_access_to_care_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HUQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HUQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HUQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HUQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HUQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HUQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HUQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HUQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/HUQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/HUQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/HUQ.htm
*/
