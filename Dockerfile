FROM quay.io/astronomer/astro-runtime:12.1.0
# Use the official Python 3.10 image as a base


# Create a directory for your application
USER root



RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install soda into a virtual environment
RUN python -m venv soda_venv && \
    source soda_venv/bin/activate && \
    pip install --no-cache-dir soda-core-bigquery==3.0.45 && \
    pip install --no-cache-dir soda-core-scientific==3.0.45 && \
    deactivate
# Optionally, you can set the environment variable for the virtual environment

RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-bigquery==1.5.3 && deactivate
# Your additional Dockerfile instructions go here
