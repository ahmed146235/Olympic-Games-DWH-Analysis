# Olympic Games Data Analysis & DWH Project

## 1. Project Overview
This project analyzes Olympic Games data (1896–2016) to provide insights into athletes, countries, sports, and medals.  
It covers the full pipeline: **raw CSV files → cleaning → ETL → data warehouse → analysis → interactive Power BI dashboard**.

**Objectives:**
- Transform raw Olympic datasets into a structured data warehouse.
- Perform ETL (Extract, Transform, Load) for clean and ready-to-analyze data.
- Enable SQL analysis and interactive Power BI visualization.
- Provide insights on athlete performance, medal counts, and trends over time.

---

## 2. Datasets

1. **athlete_events.csv**  
   - Contains athlete details: Name, Sex, Age, Height, Weight, Team/NOC, Sport, Event, Games, Year, Season, City, Medal.

2. **noc_regions.csv**  
   - Maps NOC codes to regions and additional notes.  

**Relationship:** `athlete_events.NOC → noc_regions.NOC`  

These datasets together allow analysis by athlete, country, sport, and region.

---

## 3. Project Structure
```text
Olympic-Games-DWH-Analysis/
├── README.md
├── data/
│   ├── raw/                 # Original CSV files
│   │   ├── athlete_events.csv
│   │   └── noc_regions.csv
│   └── warehouse/           # Dimension & Fact tables after ETL
│       ├── athlete_dim.csv
│       ├── games_dim.csv
│       ├── event_dim.csv
│       ├── medal_dim.csv
│       └── participation_fact.csv
├── scripts/
│   ├── database_creation(athlete_events).sql
│   └── olympic_etl_notebook.ipynb
├── dashboards/
│   └── Olympic_Games_Dashboard.pbix
└── requirements.txt
```
---

## 4. Data Cleaning & Preprocessing
- Checked dataset shape, info, and statistics.
- Handled missing values:
  - `Age`, `Height`, `Weight` → filled with median
  - `Medal` → "No Medal"
  - `noc_region` and `reg` → "Unknown"
  - Dropped `notes` column
- Removed duplicates
- Converted categorical columns to `category` dtype
- Normalized text columns:
  - `Name` → title case & strip
  - `Team`, `NOC` → upper case & strip
  - `City`, `Sport`, `Event`, `Medal` → title case & strip

Result: clean, consistent, ready-to-use dataset.

---

## 5. Feature Engineering
- **Age_Group** → categorize athletes by age
- **Participation_Number** → count athlete participations
- **Is_Winter** → Boolean if the Games were Winter
- **Event_Type** → Team or Individual
- **Medal_Score** → numeric value (Gold=3, Silver=2, Bronze=1, No Medal=0)
- **Region_Country** → unified country/region info

---

## 6. Data Warehouse Design
**Star Schema:**
- **Dimension Tables:**
  - `athlete_dim` → athlete details
  - `games_dim` → Olympic Games info
  - `event_dim` → sports and event type
  - `medal_dim` → medal type and score
- **Fact Table:**
  - `participation_fact` → central fact table connecting dimensions, includes participation metrics

---

## 7. Exploratory Data Analysis (EDA)
- Top countries by total medal score
- Athlete distribution by age groups
- Top 10 athletes by medal score and participations
- Athletes grouped by sex
- Medal counts by type and gender

---

## 8. Power BI Dashboard
File: `dashboards/Olympic_Games_Dashboard.pbix`

**Sections:**
1. **Overview:** KPIs, medals trend, world map
2. **Olympic Athletes Insights:** Top athletes, age/gender distribution, top countries
3. **Olympic Medals Analysis:** Medals by type, country, gender, sport
4. **Olympic Sports Insights:** Participation trends by sport and gender

---

## 9. Setup & Requirements
**Requirements:**
- Python 3.x  
- Pandas  
- SQLAlchemy / PyODBC (if using SQL Server)  
- Jupyter Notebook  
- Power BI  

**Install dependencies:**

pip install -r requirements.txt

---

## 10. How to Run
Place the raw CSV files in `data/raw/`. Open the Jupyter Notebook `scripts/olympic_etl_notebook.ipynb` and execute the ETL steps to generate warehouse tables in `data/warehouse/`. Then, run the SQL script `database_creation(athlete_events).sql` to create the database tables. Open the Power BI dashboard `dashboards/Olympic_Games_Dashboard.pbix` to explore insights.

---

## 11. Notes
Large CSV files can be replaced with sample datasets for GitHub. Ensure correct paths in scripts and notebooks. Maintain the folder structure for reproducibility. Use `requirements.txt` to set up the Python environment.

---

## 12. License & Credits
**License:** MIT License  
**Credits:** Data sourced from Kaggle Olympic Games datasets.

