# Real-Time-Data-Analytics-Pipeline

# Real-Time Data Analytics Pipeline
An *end-to-end real-time data analytics pipeline* built using *Azure Data Factory, Databricks, and Synapse Analytics*.  
This project follows the *Medallion Architecture (Bronze → Silver → Gold layers)* to ensure clean, structured, and analytics-ready data flow.

---

## 🚀 *Project Overview*

- Ingested *real-time data dynamically* from the GitHub API into the *Bronze layer*, ensuring continuous data flow for further transformation and analysis.
- Built and automated data pipelines in *Azure Data Factory* using dynamic parameters, loops, copy activities, and linked services.
- Transformed data from *Bronze → Silver* using *PySpark in Azure Databricks*.
- Processed data from *Silver → Gold* by creating *views and external tables* in *Azure Synapse Analytics* for reporting and analytics.

---

## 🛠 *Tech Stack Used*

- *Azure Data Factory* – Orchestrating and automating pipelines  
- *Azure Databricks* – Data transformation using *PySpark*  
- *Azure Synapse Analytics* – Gold layer creation, views, and external tables  
- *GitHub API* – Real-time data ingestion  
- *Python, SQL*

---