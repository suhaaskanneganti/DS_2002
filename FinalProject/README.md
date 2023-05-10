DS 2002 FinalProject: Actor casting based on film history

By: Suhaas Kanneganti (yvf7ua)

Purpose/Business process:
This project uses Azure MySql Database, MongoDB, a file system within Azure Databricks Data Lake, a CSV file, and various JSON files to simulate a business process of analyzing and choosing actors for films based on their film history.

1. The midterm folder in my repository can be used to recreate the sakila_dw used throughout this project

1. The source_data folder has the files to create the main sakila_dlh, with two seperate folders, batch and source, which each have different files

2. To recreate my project, first run everything in the Midterm folder, then start running the DS2002_Project2.ipynm file in Databricks. This file has the creation of all dimension tables and the fact table, along with queries at the end to analyse and confirm the creation of the tables. Make sure you also create the correct file structure in the DBFS.

      - dim_actor and dim_date were sourced from an Azure MySQL database
      - dim_film has had data loaded into MongoDB, then sourced from the same collection
      - dim_film_actor was sourced from a file system in Databricks
      - fact_casting is the fact table which combines information from the various dimension tables


