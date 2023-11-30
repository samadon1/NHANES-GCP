# NHANES-GPT

- Overview and motivation for the project can be found in [this Google Doc](https://docs.google.com/document/d/1yGMVv0lAG1Khn-1e-n5j36-AqhUl2MlwFfkcyCe8Dnk/edit#heading=h.1pjtlu1ugxog).
- The Google Cloud Project for this work can be found at [this location](https://console.cloud.google.com/home/dashboard?authuser=8&organizationId=511853297911&project=nhanes-genai).
- The public version of the data for this project can be found on the [NHANES website](https://www.cdc.gov/nchs/nhanes/index.htm).
- Potential data integration ideas can be found on the [data linkage site](https://www.cdc.gov/nchs/data-linkage/index.htm) and in the data [linkage PDF](https://www.cdc.gov/nchs/data/datalinkage/LinkageTable_1.pdf). 

# HOW TO RUN SCRIPTS TO PREPARE THE SAUSAGE
1. Use venv or conda to create a virtual environment with poetry installed.
```
python3.11 -m venv myenv
source myenv/bin/activate
pip install poetry
# or 
conda create --name myenv python=3.11 poetry
```
2. git clone this repo
3. cd into this repo
4. activate the virtual environment `source myenv/bin/activate` or `conda activate myenv`
4. run `poetry init`
5. run `python scrape_nhanes_metadata.py` to gather the metadata for each file into Google Cloud Storage and store a table of those records in BigQuery. 
6. run `python scrape_nhanes_data_files.py` to download the data files and docs for each NHANES survey record to Google Cloud Storage.
7. run `python create_nhanes_dataset.py` to build the multi-year tables in BigQuery.
8. run `bash get_bq_tables.sh` to store a list of tables that will be transformed in dbt.
9. run `bash get_bq_schemas.sh` to store the column-level data types for each table.
10. run `python generate_dbt_models.py` to iteratively create the data models from the docs available at the CDC website. 
11. run `dbt build --select all_continuous.*` to build the tables in BigQuery from the models. 
