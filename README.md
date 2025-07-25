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

📈 Visualization Strategy (Power BI/Tableau)

Although this project was built using dummy utility data, it is fully designed to support real-time dashboards in Power BI or Tableau through direct SQL connections or .csv imports. Below is how I would structure the visual reporting layer:

⸻

🔌 Connection Setup
	•	Power BI Desktop:
	•	Connect via Get Data > PostgreSQL Database
	•	Use SQL queries directly or import tables (consumption, revenue, zip_data)
	•	Enable auto-refresh if hosted via cloud or SQL Server
	•	Tableau Public/Desktop:
	•	Connect using PostgreSQL Connector
	•	Import tables or use custom SQL
	•	Join visually or use pre-exported .csv results

⸻

📊 Dashboard 1: Energy Usage Overview
	•	KPI Tiles:
	•	Total kWh Consumed
	•	Average Monthly Usage
	•	Peak ZIP Code Usage
	•	Bar Chart:
	•	Top 10 ZIP Codes by Energy Usage
	•	Map Visualization:
	•	Usage heatmap by ZIP code (Texas overlay)

⸻

💰 Dashboard 2: Billing & Revenue
	•	KPI Tiles:
	•	Total Revenue Collected
	•	Average Revenue per ZIP
	•	Clustered Bar Chart:
	•	Top ZIP Codes by Revenue
	•	Line Chart:
	•	Usage vs Revenue trend by month

⸻

🧠 Dashboard 3: Executive Insights for CenterPoint Energy
	•	Scatter Plot:
	•	Usage vs Billed Amount per ZIP (highlighting outliers)
	•	Heat Map:
	•	Usage intensity by county
	•	Filters:
	•	State, ZIP Code, Billing Month

⸻

⚙️ Additional Visual Features
	•	Tooltips for ZIP, city, county info
	•	Drill-downs from County → ZIP → Month
	•	Interactive slicers for advanced user control
 
## 🧑‍💼 
I built this project end-to-end to demonstrate my SQL fluency, analytical thinking, and comfort working with large volumes of data. Even without real CenterPoint data, this shows how I’d approach a real-world energy analytics problem.

Thank you for reviewing my work!
