SELECT
SEQN as respondent_sequence_number,
WHEN LBXWBCSI IS NOT NULL THEN LBXWBCSIWHEN LBXWBCSI IS NULL THEN NULL 
ELSE NULL 
 END as white_blood_cell_count_1000_cells_ul,
WHEN LBXLYPCT IS NOT NULL THEN LBXLYPCTWHEN LBXLYPCT IS NULL THEN NULL 
ELSE NULL 
 END as lymphocyte_percent,
WHEN LBXMOPCT IS NOT NULL THEN LBXMOPCTWHEN LBXMOPCT IS NULL THEN NULL 
ELSE NULL 
 END as monocyte_percent,
WHEN LBXNEPCT IS NOT NULL THEN LBXNEPCTWHEN LBXNEPCT IS NULL THEN NULL 
ELSE NULL 
 END as segmented_neutrophils_percent,
WHEN LBXEOPCT IS NOT NULL THEN LBXEOPCTWHEN LBXEOPCT IS NULL THEN NULL 
ELSE NULL 
 END as eosinophils_percent,
WHEN LBXBAPCT IS NOT NULL THEN LBXBAPCTWHEN LBXBAPCT IS NULL THEN NULL 
ELSE NULL 
 END as basophils_percent,
WHEN LBDLYMNO IS NOT NULL THEN LBDLYMNOWHEN LBDLYMNO IS NULL THEN NULL 
ELSE NULL 
 END as lymphocyte_number_1000_cells_ul,
WHEN LBDMONO IS NOT NULL THEN LBDMONOWHEN LBDMONO IS NULL THEN NULL 
ELSE NULL 
 END as monocyte_number_1000_cells_ul,
WHEN LBDNENO IS NOT NULL THEN LBDNENOWHEN LBDNENO IS NULL THEN NULL 
ELSE NULL 
 END as segmented_neutrophils_num_1000_cell_ul,
WHEN LBDEONO IS NOT NULL THEN LBDEONOWHEN LBDEONO IS NULL THEN NULL 
ELSE NULL 
 END as eosinophils_number_1000_cells_ul,
WHEN LBDBANO IS NOT NULL THEN LBDBANOWHEN LBDBANO IS NULL THEN NULL 
ELSE NULL 
 END as basophils_number_1000_cells_ul,
WHEN LBXRBCSI IS NOT NULL THEN LBXRBCSIWHEN LBXRBCSI IS NULL THEN NULL 
ELSE NULL 
 END as red_blood_cell_count_million_cells_ul,
WHEN LBXHGB IS NOT NULL THEN LBXHGBWHEN LBXHGB IS NULL THEN NULL 
ELSE NULL 
 END as hemoglobin_g_dl,
WHEN LBXHCT IS NOT NULL THEN LBXHCTWHEN LBXHCT IS NULL THEN NULL 
ELSE NULL 
 END as hematocrit,
WHEN LBXMCVSI IS NOT NULL THEN LBXMCVSIWHEN LBXMCVSI IS NULL THEN NULL 
ELSE NULL 
 END as mean_cell_volume_fl,
WHEN LBXMCHSI IS NOT NULL THEN LBXMCHSIWHEN LBXMCHSI IS NULL THEN NULL 
ELSE NULL 
 END as mean_cell_hemoglobin_pg,
WHEN LBXMC IS NOT NULL THEN LBXMCWHEN LBXMC IS NULL THEN NULL 
ELSE NULL 
 END as mean_cell_hgb_conc_g_dl,
WHEN LBXRDW IS NOT NULL THEN LBXRDWWHEN LBXRDW IS NULL THEN NULL 
ELSE NULL 
 END as red_cell_distribution_width,
WHEN LBXPLTSI IS NOT NULL THEN LBXPLTSIWHEN LBXPLTSI IS NULL THEN NULL 
ELSE NULL 
 END as platelet_count_1000_cells_ul,
WHEN LBXMPSI IS NOT NULL THEN LBXMPSIWHEN LBXMPSI IS NULL THEN NULL 
ELSE NULL 
 END as mean_platelet_volume_fl,
WHEN LBXNRBC IS NOT NULL THEN LBXNRBCWHEN LBXNRBC IS NULL THEN NULL 
ELSE NULL 
 END as nucleated_red_blood_cells,
 FROM {{ ref('stg_complete_blood_count_with_5_part_differential_laboratory') }}