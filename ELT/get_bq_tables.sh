bq ls --max_results 1000 'nhanes-genai:nhanes' | awk 'NR > 1 {print $1}' > bq_tables.txt