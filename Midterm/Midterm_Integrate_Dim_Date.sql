# ===================================================================================
# How to Integrate a Dimension table. In other words, how to look-up Foreign Key
# values FROM a dimension table and add them to new Fact table columns.
#
# First, go to Edit -> Preferences -> SQL Editor and disable 'Safe Edits'.
# Close SQL Workbench and Reconnect to the Server Instance.
# ===================================================================================

USE sakila_dw;

# ==============================================================
# Step 1: Add New Column(s)
# ==============================================================
ALTER TABLE sakila_dw.fact_casting
ADD COLUMN last_update_key int NOT NULL AFTER last_update;

# ==============================================================
# Step 2: Update New Column(s) with value from Dimension table
#         WHERE Business Keys in both tables match.
# ==============================================================
UPDATE sakila_dw.fact_casting AS fo
JOIN sakila_dw.dim_date AS dd
ON DATE(fo.last_update) = dd.full_date
SET fo.last_update_key = dd.date_key;

# ==============================================================
# Step 3: Validate that newly updated columns contain valid data
# ==============================================================
SELECT last_update
	, last_update_key
FROM sakila_dw.fact_casting
LIMIT 10;

# =============================================================
# Step 4: If values are correct then drop old column(s)
# =============================================================
ALTER TABLE sakila_dw.fact_casting
DROP COLUMN last_update;

# =============================================================
# Step 5: Validate Finished Fact Table.
# =============================================================
SELECT * FROM sakila_dw.fact_casting
LIMIT 10;

