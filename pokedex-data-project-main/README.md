# pokédex-data-project 🏗️🔍
A complete data pipeline for ingesting, transforming, and storing Pokémon data using Python, Terraform, Snowflake, and Airflow.

## 📌 Project Overview

This project demonstrates a real-world data engineering workflow, simulating how businesses handle large-scale data processing. The pipeline extracts data from the Pokémon API, processes and transforms it, and loads it into Snowflake, all while following industry best practices for scalability, automation, and observability.

## 🔧 Tech Stack

- **Python** 🐍 → Data extraction & transformation
- **Terraform** 🏗️ → Infrastructure as Code (Snowflake setup)
- **Snowflake** ❄️ → Cloud data warehouse
- **Airflow** 🔄 → Data pipeline orchestration
- **GitHub** 🛠️ → Version control & collaboration
- **VS Code** 💻 → Development environment

## 📊 Pipeline Workflow

- 1️⃣ **Extract** → Fetch Pokémon data from the API (species, evolutions, types, stats).
- 2️⃣ **Transform** → Clean & structure the data (group evolutions, categorise by type, format timestamps).
- 3️⃣ **Load** → Store processed data in Snowflake for analytics.
- 4️⃣ **Orchestrate** → Automate the pipeline using Apache Airflow.

## 🚀 Key Features

- ✅ **Infrastructure as Code (IaC)** → Terraform automates Snowflake setup.
- ✅ **Automated Pipelines** → Airflow schedules and monitors the ETL process.
- ✅ **Cloud-Based Storage** → Snowflake ensures fast, scalable data storage.
- ✅ **Real-World Use Case** → Simulates how data engineers process & store external API data.
