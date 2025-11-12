# ⚙️ Scripts Folder

This folder contains the scripts used to create the database and perform the ETL pipeline.

---

## 1️⃣ database_creation.sql
- Creates **OlympicsDB** database and the table: `athlete_events`.
- Run this script first in **SQL Server Management Studio** to set up the DB.
- Note: `noc_regions.csv` is **not loaded into SQL Server**, it will be read directly by the ETL notebook.

---

## 2️⃣ olympic_etl_notebook.ipynb
- Implements the **ETL pipeline** using Python (Pandas + SQLAlchemy):
  1. Extract: Load `athlete_events` from SQL Server, `noc_regions.csv` from local storage
  2. Transform: Clean, merge, normalize, and engineer features
  3. Load: Create dimension and fact tables (Star Schema)
  4. Visualization: Analyze and visualize the data

---

## ⚡ Usage
1. Run `database_creation.sql` in SQL Server to create the `athlete_events` table.
2. Place `noc_regions.csv` inside `data/raw/`.
3. Open `olympic_etl_notebook.ipynb` in Jupyter Notebook.
4. Execute the notebook sequentially to reproduce the ETL workflow and export the final warehouse tables to `data/warehouse/`.

