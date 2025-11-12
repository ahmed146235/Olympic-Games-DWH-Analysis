# 🗂️ Data Folder

This folder contains the datasets used and generated throughout the **Olympic Games Data Warehouse & Analysis Project**.

---

## 📊 Datasets Overview

### 1. Raw Data
Located in the `raw/` folder.

| File | Description | Source |
|------|--------------|---------|
| `athlete_events_sample.csv` | Sample of the original athlete events dataset containing player info, events, and medals | [Kaggle – Olympic History Dataset](https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results) |
| `noc_regions.csv` | Mapping of NOC codes to regions/countries | Kaggle (same source) |

---

### 2. Data Warehouse (Star Schema)
Located in the `warehouse/` folder.

| File | Table Type | Description |
|------|-------------|--------------|
| `athlete_dim.csv` | Dimension | Descriptive info about each athlete (Name, Sex, Age_Group, Team, Region, etc.) |
| `games_dim.csv` | Dimension | Olympic Games details (Year, Season, City, Is_Winter flag) |
| `event_dim.csv` | Dimension | Sports and events (Sport, Event, Event_Type) |
| `medal_dim.csv` | Dimension | Medal categories with numeric scores (Gold=3, Silver=2, Bronze=1, No Medal=0) |
| `participation_fact.csv` | Fact | Central fact table linking all dimensions, includes measures such as Medal_Score and Participation_Number |

---

## ⚙️ Notes
- Only **sample data** (a few rows per table) is included to demonstrate the structure.
- The Star Schema model represents the final cleaned and modeled stage of the ETL pipeline.
- Full data can be reproduced by running the transformation scripts located in the `scripts/` folder.

