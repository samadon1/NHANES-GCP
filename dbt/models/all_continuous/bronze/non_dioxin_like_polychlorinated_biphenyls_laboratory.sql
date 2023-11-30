SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_c, 

CASE
    WHEN LBX044 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX044 AS FLOAT64) 
 END as pcb44_ng_g, 

CASE
    WHEN LBX044LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX044LA AS FLOAT64) 
 END as pcb44_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD044LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD044LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD044LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD044LC AS STRING) 
 END as pcb44_comment_code, 

CASE
    WHEN LBX049 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX049 AS FLOAT64) 
 END as pcb49_ng_g, 

CASE
    WHEN LBX049LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX049LA AS FLOAT64) 
 END as pcb49_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD049LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD049LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD049LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD049LC AS STRING) 
 END as pcb49_comment_code, 

CASE
    WHEN LBX052 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX052 AS FLOAT64) 
 END as pcb52_ng_g, 

CASE
    WHEN LBX052LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX052LA AS FLOAT64) 
 END as pcb52_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD052LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD052LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD052LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD052LC AS STRING) 
 END as pcb52_comment_code, 

CASE
    WHEN LBX087 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX087 AS FLOAT64) 
 END as pcb87_ng_g, 

CASE
    WHEN LBX087LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX087LA AS FLOAT64) 
 END as pcb87_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD087LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD087LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD087LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD087LC AS STRING) 
 END as pcb87_comment_code, 

CASE
    WHEN LBX099 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX099 AS FLOAT64) 
 END as pcb99_ng_g, 

CASE
    WHEN LBX099LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX099LA AS FLOAT64) 
 END as pcb99_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD099LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD099LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD099LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD099LC AS STRING) 
 END as pcb99_comment_code, 

CASE
    WHEN LBX101 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX101 AS FLOAT64) 
 END as pcb101_ng_g, 

CASE
    WHEN LBX101LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX101LA AS FLOAT64) 
 END as pcb101_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD101LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD101LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD101LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD101LC AS STRING) 
 END as pcb101_comment_code, 

CASE
    WHEN LBX110 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX110 AS FLOAT64) 
 END as pcb110_ng_g, 

CASE
    WHEN LBX110LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX110LA AS FLOAT64) 
 END as pcb110_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD110LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD110LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD110LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD110LC AS STRING) 
 END as pcb110_comment_code, 

CASE
    WHEN LBX128 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX128 AS FLOAT64) 
 END as pcb128_ng_g, 

CASE
    WHEN LBX128LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX128LA AS FLOAT64) 
 END as pcb128_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD128LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD128LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD128LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD128LC AS STRING) 
 END as pcb128_comment_code, 

CASE
    WHEN LBX138 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX138 AS FLOAT64) 
 END as pcb138_158_ng_g, 

CASE
    WHEN LBX138LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX138LA AS FLOAT64) 
 END as pcb138_158_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD138LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD138LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD138LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD138LC AS STRING) 
 END as pcb138_158_comment_code, 

CASE
    WHEN LBX146 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX146 AS FLOAT64) 
 END as pcb146_ng_g, 

CASE
    WHEN LBX146LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX146LA AS FLOAT64) 
 END as pcb146_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD146LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD146LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD146LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD146LC AS STRING) 
 END as pcb146_comment_code, 

CASE
    WHEN LBX149 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX149 AS FLOAT64) 
 END as pcb149_ng_g, 

CASE
    WHEN LBX149LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX149LA AS FLOAT64) 
 END as pcb149_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD149LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD149LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD149LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD149LC AS STRING) 
 END as pcb149_comment_code, 

CASE
    WHEN LBX151 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX151 AS FLOAT64) 
 END as pcb151_ng_g, 

CASE
    WHEN LBX151LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX151LA AS FLOAT64) 
 END as pcb151_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD151LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD151LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD151LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD151LC AS STRING) 
 END as pcb151_comment_code, 

CASE
    WHEN LBX153 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX153 AS FLOAT64) 
 END as pcb153_ng_g, 

CASE
    WHEN LBX153LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX153LA AS FLOAT64) 
 END as pcb153_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD153LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD153LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD153LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD153LC AS STRING) 
 END as pcb153_comment_code, 

CASE
    WHEN LBX170 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX170 AS FLOAT64) 
 END as pcb170_ng_g, 

CASE
    WHEN LBX170LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX170LA AS FLOAT64) 
 END as pcb170_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD170LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD170LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD170LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD170LC AS STRING) 
 END as pcb170_comment_code, 

CASE
    WHEN LBX172 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX172 AS FLOAT64) 
 END as pcb172_ng_g, 

CASE
    WHEN LBX172LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX172LA AS FLOAT64) 
 END as pcb172_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD172LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD172LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD172LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD172LC AS STRING) 
 END as pcb172_comment_code, 

CASE
    WHEN LBX177 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX177 AS FLOAT64) 
 END as pcb177_ng_g, 

CASE
    WHEN LBX177LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX177LA AS FLOAT64) 
 END as pcb177_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD177LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD177LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD177LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD177LC AS STRING) 
 END as pcb177_comment_code, 

CASE
    WHEN LBX178 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX178 AS FLOAT64) 
 END as pcb178_ng_g, 

CASE
    WHEN LBX178LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX178LA AS FLOAT64) 
 END as pcb178_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD178LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD178LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD178LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD178LC AS STRING) 
 END as pcb178_comment_code, 

CASE
    WHEN LBX180 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX180 AS FLOAT64) 
 END as pcb180_ng_g, 

CASE
    WHEN LBX180LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX180LA AS FLOAT64) 
 END as pcb180_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD180LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD180LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD180LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD180LC AS STRING) 
 END as pcb180_comment_code, 

CASE
    WHEN LBX183 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX183 AS FLOAT64) 
 END as pcb183_ng_g, 

CASE
    WHEN LBX183LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX183LA AS FLOAT64) 
 END as pcb183_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD183LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD183LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD183LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD183LC AS STRING) 
 END as pcb183_comment_code, 

CASE
    WHEN LBX187 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX187 AS FLOAT64) 
 END as pcb187_ng_g, 

CASE
    WHEN LBX187LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX187LA AS FLOAT64) 
 END as pcb187_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD187LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD187LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD187LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD187LC AS STRING) 
 END as pcb187_comment_code, 

CASE
    WHEN LBX194 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX194 AS FLOAT64) 
 END as pcb194_ng_g, 

CASE
    WHEN LBX194LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX194LA AS FLOAT64) 
 END as pcb194_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD194LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD194LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD194LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD194LC AS STRING) 
 END as pcb194_comment_code, 

CASE
    WHEN LBX195 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX195 AS FLOAT64) 
 END as pcb195_ng_g, 

CASE
    WHEN LBX195LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX195LA AS FLOAT64) 
 END as pcb195_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD195LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD195LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD195LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD195LC AS STRING) 
 END as pcb195_comment_code, 

CASE
    WHEN LBX196 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX196 AS FLOAT64) 
 END as pcb196_203_ng_g, 

CASE
    WHEN LBX196LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX196LA AS FLOAT64) 
 END as pcb196_203_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD196LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD196LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD196LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD196LC AS STRING) 
 END as pcb196_203_comment_code, 

CASE
    WHEN LBD199 IS NULL THEN NULL 
ELSE SAFE_CAST(LBD199 AS FLOAT64) 
 END as pcb199_ng_g, 

CASE
    WHEN LBD199LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBD199LA AS FLOAT64) 
 END as pcb199_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD199LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD199LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD199LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD199LC AS STRING) 
 END as pcb199_comment_code, 

CASE
    WHEN LBX206 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX206 AS FLOAT64) 
 END as pcb206_ng_g, 

CASE
    WHEN LBX206LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX206LA AS FLOAT64) 
 END as pcb206_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD206LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD206LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD206LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD206LC AS STRING) 
 END as pcb206_comment_code, 

CASE
    WHEN LBX209 IS NULL THEN NULL 
ELSE SAFE_CAST(LBX209 AS FLOAT64) 
 END as pcb209_ng_g, 

CASE
    WHEN LBX209LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX209LA AS FLOAT64) 
 END as pcb209_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD209LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD209LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD209LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD209LC AS STRING) 
 END as pcb209_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_non_dioxin_like_polychlorinated_biphenyls_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L28NPB_C.htm
*/