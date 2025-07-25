# cnp-sql-project
SQL based energy usage and billing analytics for CNP 
# CenterPoint Energy SQL Project

# CenterPoint Energy Analytics SQL Project

## 🧠 Project Overview
This project simulates a real-world analytics pipeline for a utility company (CenterPoint Energy). Using dummy energy usage and revenue data across Texas ZIP codes, I built a PostgreSQL database, cleaned and analyzed large datasets, and generated key performance insights. 

This was created to showcase my SQL and analytical skills for a Senior Data Analyst role — the goal was to demonstrate:
- Data ingestion from CSVs into a PostgreSQL database via pgAdmin
- Table creation and foreign key relationships
- Writing and executing real SQL queries for business insight
- Exporting query results to CSVs for visualization tools (Power BI/Tableau)
- Project organization for GitHub and LinkedIn portfolios

---

## 📁 Files Included
- `CNP small.sql` – All SQL code for table creation and analytical queries
- `zip_data.csv` – ZIP code info (dummy city, county, state data)
- `energy_consumption.csv` – Electricity usage data
- `revenue_data.csv` – Revenue collected per ZIP
- `monthly_usage.csv`, `monthly_rev.csv`, `usage vs rev.csv` – Aggregated outputs
- `Peak Usage ZIP.csv`, `usage by zip.csv`, `rev by zipcode.csv` – Exported query results

---

## 🛠️ Tools Used
- PostgreSQL 17
- pgAdmin 4
- GitHub (for version control and portfolio hosting)

---

## 🔍 Key Queries Performed
- Monthly energy consumption by ZIP
- Total billed revenue by ZIP and city
- Peak usage ZIP codes
- Comparative analysis: usage vs. revenue

---

## 📊 How I’d Use Power BI / Tableau
Although I didn’t use BI tools here due to dummy data limitations, here’s what I would do with real data:
- Connect Power BI or Tableau to the PostgreSQL database or use the exported CSVs
- Build visual dashboards:
  - Heatmap of usage by ZIP code
  - Bar charts for revenue trends
  - Line chart comparing usage vs revenue over time
- Create filters for ZIP, city, month, etc.
- Share via Tableau Public or Power BI Service

---

## 🧑‍💼 
I built this project end-to-end to demonstrate my SQL fluency, analytical thinking, and comfort working with large volumes of data. Even without real CenterPoint data, this shows how I’d approach a real-world energy analytics problem.

Thank you for reviewing my work!
