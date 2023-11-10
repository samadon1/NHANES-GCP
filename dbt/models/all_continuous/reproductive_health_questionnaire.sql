SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN RHQ010 IS NOT NULL THEN RHQ010 
WHEN RHQ010 IS NOT NULL THEN RHQ010 
WHEN RHQ010 IS NOT NULL THEN RHQ010 
WHEN RHQ010 IS NOT NULL THEN RHQ010 
WHEN RHQ010 IS NOT NULL THEN RHQ010 
WHEN RHQ010 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_first_menstrual_period_occurred, 

CASE
        WHEN RHD018 IS NOT NULL THEN SAFE_CAST(RHD018 AS FLOAT64) 
WHEN RHD018 IS NOT NULL THEN SAFE_CAST(RHD018 AS FLOAT64) 
WHEN RHD018 IS NOT NULL THEN SAFE_CAST(RHD018 AS FLOAT64) 
WHEN RHD018 IS NULL THEN NULL 
ELSE NULL 
 END as estimated_age_in_months_at_menarche, 

CASE
        WHEN RHQ020 = 1 THEN 'Younger than 10' 
WHEN RHQ020 = 2 THEN '10 to 12' 
WHEN RHQ020 = 3 THEN '13 to 15' 
WHEN RHQ020 = 4 THEN '16 or older' 
WHEN RHQ020 = 7 THEN 'Refused' 
WHEN RHQ020 = 9 THEN 'Dont know' 
WHEN RHQ020 IS NULL THEN NULL 
ELSE NULL 
 END as age_range_at_first_menstrual_period, 

CASE
        WHEN RHQ031 = 1 THEN 'Yes' 
WHEN RHQ031 = 2 THEN 'No' 
WHEN RHQ031 = 7 THEN 'Refused' 
WHEN RHQ031 = 9 THEN 'Dont know' 
WHEN RHQ031 IS NULL THEN NULL 
ELSE NULL 
 END as had_regular_periods_in_past_12_months, 

CASE
        WHEN RHD043 = '1' THEN 'Pregnancy' 
WHEN RHD043 = '2' THEN 'Breast feeding' 
WHEN RHD043 = '3' THEN 'Hysterectomy' 
WHEN RHD043 = '7' THEN 'Menopause/Change of life' 
WHEN RHD043 = '9' THEN 'Other' 
WHEN RHD043 = '77' THEN 'Refused' 
WHEN RHD043 = '99' THEN 'Dont know' 
WHEN RHD043 IS NULL THEN NULL 
ELSE NULL 
 END as reason_not_having_regular_periods, 

CASE
        WHEN RHQ060 IS NOT NULL THEN RHQ060 
WHEN RHQ060 IS NOT NULL THEN RHQ060 
WHEN RHQ060 IS NOT NULL THEN RHQ060 
WHEN RHQ060 IS NOT NULL THEN RHQ060 
WHEN RHQ060 IS NOT NULL THEN RHQ060 
WHEN RHQ060 IS NULL THEN NULL 
ELSE NULL 
 END as age_at_last_menstrual_period, 

CASE
        WHEN RHQ070 = 1 THEN 'Younger than 30' 
WHEN RHQ070 = 2 THEN '30 to 34' 
WHEN RHQ070 = 3 THEN '35 to 39' 
WHEN RHQ070 = 4 THEN '40 to 44' 
WHEN RHQ070 = 5 THEN '45 to 49' 
WHEN RHQ070 = 6 THEN '50 to 54' 
WHEN RHQ070 = 7 THEN '55 or older' 
WHEN RHQ070 = 77 THEN 'Refused' 
WHEN RHQ070 = 99 THEN 'Dont know' 
WHEN RHQ070 IS NULL THEN NULL 
ELSE NULL 
 END as age_range_at_last_menstrual_period, 

CASE
        WHEN RHQ074 = '1' THEN 'Yes' 
WHEN RHQ074 = '2' THEN 'No' 
WHEN RHQ074 = '7' THEN 'Refused' 
WHEN RHQ074 = '9' THEN 'Dont know' 
WHEN RHQ074 IS NULL THEN NULL 
ELSE NULL 
 END as tried_for_a_year_to_become_pregnant, 

CASE
        WHEN RHQ076 = '1' THEN 'Yes' 
WHEN RHQ076 = '2' THEN 'No' 
WHEN RHQ076 = '7' THEN 'Refused' 
WHEN RHQ076 = '9' THEN 'Dont know' 
WHEN RHQ076 IS NULL THEN NULL 
ELSE NULL 
 END as seen_a_dr_b_c_unable_to_become_pregnant, 

CASE
        WHEN RHQ078 = '1' THEN 'Yes' 
WHEN RHQ078 = '2' THEN 'No' 
WHEN RHQ078 = '7' THEN 'Refused' 
WHEN RHQ078 = '9' THEN 'Dont know' 
WHEN RHQ078 IS NULL THEN NULL 
ELSE NULL 
 END as ever_treated_for_a_pelvic_infection_pid, 

CASE
        WHEN RHQ131 = 1 THEN 'Yes' 
WHEN RHQ131 = 2 THEN 'No' 
WHEN RHQ131 = 7 THEN 'Refused' 
WHEN RHQ131 = 9 THEN 'Dont know' 
WHEN RHQ131 IS NULL THEN NULL 
ELSE NULL 
 END as ever_been_pregnant, 

CASE
        WHEN RHD143 = 1 THEN 'Yes' 
WHEN RHD143 = 2 THEN 'No' 
WHEN RHD143 = 7 THEN 'Refused' 
WHEN RHD143 = 9 THEN 'Dont know' 
WHEN RHD143 IS NULL THEN NULL 
ELSE NULL 
 END as are_you_pregnant_now, 

CASE
        WHEN RHQ160 IS NOT NULL THEN RHQ160 
WHEN RHQ160 IS NOT NULL THEN RHQ160 
WHEN RHQ160 IS NOT NULL THEN RHQ160 
WHEN RHQ160 IS NOT NULL THEN RHQ160 
WHEN RHQ160 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_times_have_been_pregnant, 

CASE
        WHEN RHQ162 = '1' THEN 'Yes' 
WHEN RHQ162 = '2' THEN 'No' 
WHEN RHQ162 = '3' THEN 'Borderline' 
WHEN RHQ162 = '7' THEN 'Refused' 
WHEN RHQ162 = '9' THEN 'Dont know' 
WHEN RHQ162 IS NULL THEN NULL 
ELSE NULL 
 END as during_pregnancy_told_you_have_diabetes, 

CASE
        WHEN RHQ163 IS NOT NULL THEN SAFE_CAST(RHQ163 AS FLOAT64) 
WHEN RHQ163 IS NOT NULL THEN SAFE_CAST(RHQ163 AS FLOAT64) 
WHEN RHQ163 IS NOT NULL THEN SAFE_CAST(RHQ163 AS FLOAT64) 
WHEN RHQ163 IS NOT NULL THEN SAFE_CAST(RHQ163 AS FLOAT64) 
WHEN RHQ163 IS NOT NULL THEN SAFE_CAST(RHQ163 AS FLOAT64) 
WHEN RHQ163 IS NULL THEN NULL 
ELSE NULL 
 END as age_told_you_had_diabetes_while_pregnant, 

CASE
        WHEN RHQ166 IS NOT NULL THEN SAFE_CAST(RHQ166 AS FLOAT64) 
WHEN RHQ166 IS NOT NULL THEN SAFE_CAST(RHQ166 AS FLOAT64) 
WHEN RHQ166 IS NOT NULL THEN SAFE_CAST(RHQ166 AS FLOAT64) 
WHEN RHQ166 IS NOT NULL THEN SAFE_CAST(RHQ166 AS FLOAT64) 
WHEN RHQ166 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_vaginal_deliveries, 

CASE
        WHEN RHQ169 IS NOT NULL THEN SAFE_CAST(RHQ169 AS FLOAT64) 
WHEN RHQ169 IS NOT NULL THEN SAFE_CAST(RHQ169 AS FLOAT64) 
WHEN RHQ169 IS NOT NULL THEN SAFE_CAST(RHQ169 AS FLOAT64) 
WHEN RHQ169 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_cesarean_deliveries, 

CASE
        WHEN RHQ172 = '1' THEN 'Yes' 
WHEN RHQ172 = '2' THEN 'No' 
WHEN RHQ172 = '7' THEN 'Refused' 
WHEN RHQ172 = '9' THEN 'Dont know' 
WHEN RHQ172 IS NULL THEN NULL 
ELSE NULL 
 END as any_babies_weigh_9_lbs_or_more, 

CASE
        WHEN RHD173 IS NOT NULL THEN SAFE_CAST(RHD173 AS FLOAT64) 
WHEN RHD173 IS NOT NULL THEN SAFE_CAST(RHD173 AS FLOAT64) 
WHEN RHD173 IS NOT NULL THEN SAFE_CAST(RHD173 AS FLOAT64) 
WHEN RHD173 IS NOT NULL THEN SAFE_CAST(RHD173 AS FLOAT64) 
WHEN RHD173 IS NOT NULL THEN SAFE_CAST(RHD173 AS FLOAT64) 
WHEN RHD173 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_delivered_baby_9_lbs_or_more, 

CASE
        WHEN RHQ171 IS NOT NULL THEN SAFE_CAST(RHQ171 AS FLOAT64) 
WHEN RHQ171 IS NOT NULL THEN SAFE_CAST(RHQ171 AS FLOAT64) 
WHEN RHQ171 IS NOT NULL THEN SAFE_CAST(RHQ171 AS FLOAT64) 
WHEN RHQ171 IS NOT NULL THEN SAFE_CAST(RHQ171 AS FLOAT64) 
WHEN RHQ171 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_deliveries_live_birth_result, 

CASE
        WHEN RHD180 IS NOT NULL THEN SAFE_CAST(RHD180 AS FLOAT64) 
WHEN RHD180 IS NOT NULL THEN SAFE_CAST(RHD180 AS FLOAT64) 
WHEN RHD180 IS NOT NULL THEN SAFE_CAST(RHD180 AS FLOAT64) 
WHEN RHD180 IS NOT NULL THEN SAFE_CAST(RHD180 AS FLOAT64) 
WHEN RHD180 IS NOT NULL THEN SAFE_CAST(RHD180 AS FLOAT64) 
WHEN RHD180 IS NULL THEN NULL 
ELSE NULL 
 END as age_at_first_live_birth, 

CASE
        WHEN RHD190 IS NOT NULL THEN SAFE_CAST(RHD190 AS FLOAT64) 
WHEN RHD190 IS NOT NULL THEN SAFE_CAST(RHD190 AS FLOAT64) 
WHEN RHD190 IS NOT NULL THEN SAFE_CAST(RHD190 AS FLOAT64) 
WHEN RHD190 IS NOT NULL THEN SAFE_CAST(RHD190 AS FLOAT64) 
WHEN RHD190 IS NOT NULL THEN SAFE_CAST(RHD190 AS FLOAT64) 
WHEN RHD190 IS NULL THEN NULL 
ELSE NULL 
 END as age_at_last_live_birth, 

CASE
        WHEN RHQ197 IS NOT NULL THEN SAFE_CAST(RHQ197 AS FLOAT64) 
WHEN RHQ197 IS NOT NULL THEN SAFE_CAST(RHQ197 AS FLOAT64) 
WHEN RHQ197 IS NOT NULL THEN SAFE_CAST(RHQ197 AS FLOAT64) 
WHEN RHQ197 IS NOT NULL THEN SAFE_CAST(RHQ197 AS FLOAT64) 
WHEN RHQ197 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_months_ago_have_baby, 

CASE
        WHEN RHQ200 = 1 THEN 'Yes' 
WHEN RHQ200 = 2 THEN 'No' 
WHEN RHQ200 = 7 THEN 'Refused' 
WHEN RHQ200 = 9 THEN 'Dont know' 
WHEN RHQ200 IS NULL THEN NULL 
ELSE NULL 
 END as now_breastfeeding_a_child, 

CASE
        WHEN RHD280 = 1 THEN 'Yes' 
WHEN RHD280 = 2 THEN 'No' 
WHEN RHD280 = 7 THEN 'Refused' 
WHEN RHD280 = 9 THEN 'Dont know' 
WHEN RHD280 IS NULL THEN NULL 
ELSE NULL 
 END as had_a_hysterectomy, 

CASE
        WHEN RHQ291 IS NOT NULL THEN RHQ291 
WHEN RHQ291 IS NOT NULL THEN RHQ291 
WHEN RHQ291 IS NOT NULL THEN RHQ291 
WHEN RHQ291 IS NOT NULL THEN RHQ291 
WHEN RHQ291 IS NOT NULL THEN RHQ291 
WHEN RHQ291 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_had_hysterectomy, 

CASE
        WHEN RHQ305 = '1' THEN 'Yes' 
WHEN RHQ305 = '2' THEN 'No' 
WHEN RHQ305 = '7' THEN 'Refused' 
WHEN RHQ305 = '9' THEN 'Dont know' 
WHEN RHQ305 IS NULL THEN NULL 
ELSE NULL 
 END as had_both_ovaries_removed, 

CASE
        WHEN RHQ332 IS NOT NULL THEN SAFE_CAST(RHQ332 AS FLOAT64) 
WHEN RHQ332 IS NOT NULL THEN SAFE_CAST(RHQ332 AS FLOAT64) 
WHEN RHQ332 IS NOT NULL THEN SAFE_CAST(RHQ332 AS FLOAT64) 
WHEN RHQ332 IS NOT NULL THEN SAFE_CAST(RHQ332 AS FLOAT64) 
WHEN RHQ332 IS NOT NULL THEN SAFE_CAST(RHQ332 AS FLOAT64) 
WHEN RHQ332 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_both_ovaries_removed, 

CASE
        WHEN RHQ420 = 1 THEN 'Yes' 
WHEN RHQ420 = 2 THEN 'No' 
WHEN RHQ420 = 7 THEN 'Refused' 
WHEN RHQ420 = 9 THEN 'Dont know' 
WHEN RHQ420 IS NULL THEN NULL 
ELSE NULL 
 END as ever_taken_birth_control_pills, 

CASE
        WHEN RHQ540 = 1 THEN 'Yes' 
WHEN RHQ540 = 2 THEN 'No' 
WHEN RHQ540 = 7 THEN 'Refused' 
WHEN RHQ540 = 9 THEN 'Dont know' 
WHEN RHQ540 IS NULL THEN NULL 
ELSE NULL 
 END as ever_use_female_hormones, 

CASE
        WHEN RHQ542A = '10' THEN 'Pills' 
WHEN RHQ542A = '77' THEN 'Refused' 
WHEN RHQ542A = '99' THEN 'Dont know' 
WHEN RHQ542A IS NULL THEN NULL 
ELSE NULL 
 END as hormone_pills_used, 

CASE
        WHEN RHQ542B = '11' THEN 'Patches' 
WHEN RHQ542B IS NULL THEN NULL 
ELSE NULL 
 END as hormone_patches_used, 

CASE
        WHEN RHQ542C = '12' THEN 'Cream/suppository/injection' 
WHEN RHQ542C IS NULL THEN NULL 
ELSE NULL 
 END as hormone_cream_suppository_injection_used, 

CASE
        WHEN RHQ542D = '13' THEN 'Other' 
WHEN RHQ542D IS NULL THEN NULL 
ELSE NULL 
 END as other_form_of_female_hormone_used, 

CASE
        WHEN RHQ554 = 1 THEN 'Yes' 
WHEN RHQ554 = 2 THEN 'No' 
WHEN RHQ554 = 7 THEN 'Refused' 
WHEN RHQ554 = 9 THEN 'Dont know' 
WHEN RHQ554 IS NULL THEN NULL 
ELSE NULL 
 END as use_hormone_pills_w_estrogen_only, 

CASE
        WHEN RHQ560Q IS NOT NULL THEN RHQ560Q 
WHEN RHQ560Q IS NOT NULL THEN RHQ560Q 
WHEN RHQ560Q IS NOT NULL THEN RHQ560Q 
WHEN RHQ560Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_taking_estrogen_only_pills, 

CASE
        WHEN RHQ560U = 1 THEN 'Months' 
WHEN RHQ560U = 2 THEN 'Years' 
WHEN RHQ560U = 7 THEN 'Refused' 
WHEN RHQ560U = 9 THEN 'Dont know' 
WHEN RHQ560U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_months_years, 

CASE
        WHEN RHQ570 = 1 THEN 'Yes' 
WHEN RHQ570 = 2 THEN 'No' 
WHEN RHQ570 = 7 THEN 'Refused' 
WHEN RHQ570 = 9 THEN 'Dont know' 
WHEN RHQ570 IS NULL THEN NULL 
ELSE NULL 
 END as used_estrogen_progestin_combo_pills, 

CASE
        WHEN RHQ576Q IS NOT NULL THEN RHQ576Q 
WHEN RHQ576Q IS NOT NULL THEN RHQ576Q 
WHEN RHQ576Q IS NOT NULL THEN RHQ576Q 
WHEN RHQ576Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_taking_estrogen_progestin, 

CASE
        WHEN RHQ576U = 1 THEN 'Months' 
WHEN RHQ576U = 2 THEN 'Years' 
WHEN RHQ576U = 7 THEN 'Refused' 
WHEN RHQ576U = 9 THEN 'Dont know' 
WHEN RHQ576U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_months_years, 

CASE
        WHEN RHQ580 = 1 THEN 'Yes' 
WHEN RHQ580 = 2 THEN 'No' 
WHEN RHQ580 = 7 THEN 'Refused' 
WHEN RHQ580 = 9 THEN 'Dont know' 
WHEN RHQ580 IS NULL THEN NULL 
ELSE NULL 
 END as used_estrogen_only_patches, 

CASE
        WHEN RHQ586Q IS NOT NULL THEN RHQ586Q 
WHEN RHQ586Q IS NOT NULL THEN RHQ586Q 
WHEN RHQ586Q IS NOT NULL THEN RHQ586Q 
WHEN RHQ586Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_using_estrogen_only_patches, 

CASE
        WHEN RHQ586U = 1 THEN 'Months' 
WHEN RHQ586U = 2 THEN 'Years' 
WHEN RHQ586U = 7 THEN 'Refused' 
WHEN RHQ586U = 9 THEN 'Dont know' 
WHEN RHQ586U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_months_years, 

CASE
        WHEN RHQ596 = 1 THEN 'Yes' 
WHEN RHQ596 = 2 THEN 'No' 
WHEN RHQ596 = 7 THEN 'Refused' 
WHEN RHQ596 = 9 THEN 'Dont know' 
WHEN RHQ596 IS NULL THEN NULL 
ELSE NULL 
 END as used_estrogen_progestin_combo_patches, 

CASE
        WHEN RHQ602Q IS NOT NULL THEN RHQ602Q 
WHEN RHQ602Q IS NOT NULL THEN RHQ602Q 
WHEN RHQ602Q IS NOT NULL THEN RHQ602Q 
WHEN RHQ602Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_use_estrogen_progestin_patch, 

CASE
        WHEN RHQ602U = 1 THEN 'Months' 
WHEN RHQ602U = 2 THEN 'Years' 
WHEN RHQ602U = 7 THEN 'Refused' 
WHEN RHQ602U = 9 THEN 'Dont know' 
WHEN RHQ602U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_months_years, 

 FROM {{ ref('stg_reproductive_health_questionnaire') }}