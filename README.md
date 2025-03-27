# pokédex-data-project 🏗️🔍
A complete data pipeline for ingesting, transforming, and storing Pokémon data using **Python**, **Terraform**, **PySpark**, **PostgreSQL (Azure)**, and **Airflow**.

## 🔧 Tech Stack

- **Python** 🐍 → Data extraction & transformation
- **Terraform** 🏗️ → Infrastructure as Code (Azure PostgreSQL setup)
- **PySpark** 🔥 → Scalable data transformation & manipulation
- **PostgreSQL (Azure)** 🛢️ → Cloud relational database
- **Airflow** 🔄 → Data pipeline orchestration
- **GitHub** 🛠️ → Version control & collaboration
- **VS Code** 💻 → Development environment

## 📊 Pipeline Workflow

- 1️⃣ **Extract** → Fetch Pokémon data from the API.
- 2️⃣ **Transform** → Use **PySpark** to clean, structure, and manipulate the data efficiently.
- 3️⃣ **Load** → Store processed data in **PostgreSQL on Azure**.
- 4️⃣ **Orchestrate** → Automate the pipeline using **Apache Airflow**.

## 🚀 Key Features

- ✅ **Infrastructure as Code (IaC)** → Terraform automates **Azure PostgreSQL** setup.
- ✅ **Automated Pipelines** → Airflow schedules and monitors the ETL process.
- ✅ **Scalable Transformations** → **PySpark** handles large datasets and complex transformations.
- ✅ **Cloud-Based Storage** → PostgreSQL ensures structured data storage.
- ✅ **Real-World Use Case** → Simulates how data engineers process & store external API data.

## 🧑‍💻 Integration of PySpark

- **Data Transformation**: **PySpark** is used to efficiently process and manipulate large datasets in parallel. It allows for scalable data transformations like filtering, adding new columns, and aggregating data.
  
  Example tasks in the transformation phase include:
  - Cleaning and structuring raw Pokémon data.
  - Adding calculated columns (e.g., converting weight units).
  - Filtering data based on certain conditions (e.g., Pokémon with a certain weight threshold).
  
  This makes the project highly scalable and efficient, especially if the dataset grows or you need to handle more complex transformations.

- **PostgreSQL Integration**: Once the transformation is done, the processed data is written to **PostgreSQL** for structured storage, ensuring you can query it easily later on.

- **Airflow Orchestration**: The entire process, including the PySpark job, is orchestrated with **Apache Airflow**, allowing for scheduled and automated runs of the ETL pipeline.

---

### Example PySpark Transformation:
```python
from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder.appName("Pokédex").getOrCreate()

# Sample Pokémon data
pokemon_data = [
    {"name": "bulbasaur", "type": "grass", "weight": 6.9, "abilities": ["overgrow", "chlorophyll"]},
    {"name": "charmander", "type": "fire", "weight": 8.5, "abilities": ["blaze", "solar-power"]},
    {"name": "squirtle", "type": "water", "weight": 9.0, "abilities": ["torrent", "rain-dish"]},
]

# Load data into a Spark DataFrame
df = spark.createDataFrame(pokemon_data)

# Perform transformations
df = df.withColumn("weight_pounds", df["weight"] * 2.20462)
df_filtered = df.filter(df["weight_pounds"] > 7)

# Show the result
df_filtered.show()
