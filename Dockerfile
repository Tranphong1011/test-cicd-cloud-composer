FROM python:3.11-slim

COPY requirements.txt ./
RUN pip3 install --upgrade --no-cache-dir -r requirements.txt
ENV AIRFLOW_HOME=/workspace/airflow
ENV AIRFLOW__CORE__LOAD_EXAMPLES=False
ENV AIRFLOW__CORE__DAGS_FOLDER=/workspace/dags