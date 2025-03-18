# End-to-End Data Engineering Project: E-Commerce Data Pipeline

## Project Overview
This project demonstrates an **end-to-end data engineering workflow** using **Azure services** to build a data pipeline that ingests, processes, and visualizes e-commerce data. The pipeline includes **SQL and NoSQL data sources, cloud-based ETL, and data visualization with Power BI**.

### Tech Stack
✅ Cloud Platform: Azure (Data Factory, Data Lake Gen2, Synapse Analytics, Databricks)\
✅ Databases: SQL (MySQL, PostgreSQL), NoSQL (MongoDB)\
✅ Big Data Processing: PySpark (Databricks)\
✅ Visualization: Power BI/ Tableau

## Project Architecture

### 1️⃣ Data Sources:
E-commerce data from HTTP source (GitHub raw data)\
SQL database stored in Azure SQL / MySQL\
NoSQL data stored in MongoDB

### 2️⃣ Data Ingestion:
Azure Data Factory used to pull structured data from SQL & unstructured data from HTTP sources.\
Data stored in Azure Data Lake Storage (Raw Layer).

### 3️⃣ Data Processing & Transformation:
Databricks (PySpark) used to clean and transform raw data.\
Data enrichment: Joins with MongoDB for additional insights.

### 4️⃣ Data Storage & Querying:
Transformed data stored in Azure Synapse Analytics for analysis.\
Created external tables for efficient querying.

### 5️⃣ Data Visualization:
Power BI dashboards created for analyzing sales trends, customer behavior, and payment insights.

## Step-by-Step Implementation

### 1️⃣ Setting Up Azure Cloud Resources
Create an Azure Data Factory for ETL pipelines.\
Set up Azure Data Lake Storage for raw data ingestion.\
Deploy Azure Synapse Analytics for structured data processing.

### 2️⃣ Data Ingestion
HTTP Source: Download dataset from GitHub using API requests.\
SQL Database: Import transaction data from a MySQL database into Azure SQL Database.\
NoSQL MongoDB: Load JSON data into MongoDB for unstructured storage.

### 3️⃣ Data Processing in Databricks (PySpark)
Read raw data from Data Lake using PySpark.\
Clean missing values, format timestamps, and normalize data.\
Merge relational SQL data with unstructured MongoDB data.

### 4️⃣ Data Storage & Querying in Azure Synapse Analytics
Store cleaned & processed data in Azure Synapse external tables.\
Optimize queries using indexing and partitioning.

### 5️⃣ Building Power BI Dashboards
Connect Power BI to Azure Synapse for real-time insights.\
Create visualizations for sales trends, customer behavior, and payment insights.

