DS 2002 Midterm: Actor casting based on film history
By: Suhaas Kanneganti (yvf7ua)

Purpose/Business process:
This project uses MySql, MongoDB, a local file system, and JSON files to simulate a business process of analyzing and choosing actors for films based on their film history.

1. The sakila_data folder has the files to create the main sakila data mart, and the data folder has the JSON files used in this project of the same data.

2. To recreate my project, first run the files in the sakila_data folder, then start running the Midterm_jupiter.ipynm file in JupyterLab. This file has the creation of all dimension tables and the fact table, along with queries at the end to analyse and confirm the creation of the tables.

      - dim_actor has information regarding the available actors
      - dim_film has information regarding all the films
      - dim_film_actor has information regarding which actors were in which films
      - fact_casting is the fact table which combines information from the various dimension tables

3. Afterwards, use the Midterm_Create_Populate_Dim_Date.sql and Midterm_Integrate_Dim_Date.sql files to create a Date dimension for the dates in the fact table.

