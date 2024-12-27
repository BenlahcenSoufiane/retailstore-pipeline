# Data Pipeline Project: CSV to Dashboard

## Overview
This project demonstrates a complete data pipeline workflow from extracting data from a CSV file to building a dashboard for data exploration. It incorporates modern data engineering tools and techniques for ETL, data quality checks, and visualization.

### Key Components:
- **Extract and Load**: Extract data from a CSV file and load it into Google BigQuery.
- **Transform**: Model the data using DBT to create fact and dimension tables.
- **Data Quality**: Implement data quality checks using Soda to ensure the integrity of the data.
- **Orchestration**: Use Apache Airflow to manage the pipeline tasks and visualize DBT models.
- **Visualization**: Create an interactive dashboard with Looker for data exploration.

## Project Workflow

1. **Data Source**: A transactional dataset from Kaggle containing UK-based non-store online retail transactions.
   - Key columns include: `StockCode`, `Description`, `Quantity`, `InvoiceDate`, and more.

2. **Pipeline Architecture**:
   - **Load CSV to Google Cloud Storage**:
     - Create an Airflow task to upload the CSV to Google Cloud Storage.
     - Efficiently load data from GCS into Google BigQuery.
   - **Data Quality Checks**:
     - Use Soda to validate the raw data for consistency and correctness.
   - **Transform Data**:
     - Model raw data into a fact table and dimension tables using DBT.
   - **Orchestrate with Airflow**:
     - Orchestrate tasks for data loading, quality checks, and transformations.
     - Visualize DBT models in the Airflow UI.
   - **Dashboard Creation**:
     - Build an interactive dashboard in Looker to explore the data.

## Tools Used

### Data Engineering:
- **Apache Airflow**: Orchestrate and automate data pipeline tasks.
- **DBT**: Transform data and create a data model with fact and dimension tables.
- **Google BigQuery**: Store and query the transformed data.
- **Soda**: Perform data quality checks on raw data.

### Visualization:
- **Looker**: Create an interactive dashboard for data exploration.

### Data Source:
- **Kaggle**: Transactional dataset for UK-based online retail.

## Getting Started

### Prerequisites
1. **Environment Setup**:
   - Install Docker to run Apache Airflow.
   - Set up a Google Cloud Project with BigQuery and Cloud Storage enabled.
2. **Dependencies**:
   - Python packages: `apache-airflow`, `google-cloud-storage`, `dbt-core`, `soda-sql`.
   - Looker instance for dashboard creation.

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/BenlahcenSoufiane/retailstore-pipeline
   cd <repository-folder>
   ```

2. **Configure Environment Variables**:
   - Set up credentials for Google Cloud.
   - Add Soda configuration for data quality checks.

3. **Run the Pipeline**:
   - Start the Airflow scheduler and webserver.
   - Trigger the pipeline DAG from the Airflow UI.

4. **Explore the Data**:
   - Use Looker to create and view dashboards based on the transformed data.

## Project Diagram

Below is an overview of the data pipeline:

1. **Raw Data**: Extract data from CSV.
2. **Data Loading**: Load data into Google BigQuery using Airflow.
3. **Data Quality**: Validate data using Soda.
4. **Transformation**: Model data into fact and dimension tables with DBT.
5. **Visualization**: Create an interactive dashboard in Looker.

## Credits

- **Instructor**: Macramatti (THANK YOU MARC FOR THIS CONTENT).
- **Dataset**: Kaggle - UK-based online retail transactions.

## Support

For questions or feedback, feel free to open an issue or contact the repository maintainer.

---

### Additional Resources
- [Apache Airflow Documentation](https://airflow.apache.org/)
- [DBT Documentation](https://docs.getdbt.com/)
- [Google BigQuery Documentation](https://cloud.google.com/bigquery/docs)
- [Soda SQL Documentation](https://soda.io/)
- [Looker Documentation](https://cloud.google.com/looker/docs)
