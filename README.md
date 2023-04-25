Big Data Project

This repository contains a big data project that uses various Apache components to build an end-to-end data processing pipeline. It includes Hadoop, Spark, Hive, HBase, Kafka, NiFi, and Cassandra.
Repository Structure

kotlin

big_data_project/
│
├── hadoop/
│   ├── etc/
│   │   └── hadoop/
│   │       ├── core-site.xml
│   │       ├── hdfs-site.xml
│   │       ├── mapred-site.xml
│   │       └── yarn-site.xml
│   └── data/
│
├── spark/
│   ├── conf/
│   │   └── spark-defaults.conf
│   └── python/
│       └── pyspark/
│
├── hive/
│   ├── conf/
│   │   └── hive-site.xml
│   └── data/
│
├── hbase/
│   ├── conf/
│   │   └── hbase-site.xml
│   └── data/
│
├── kafka/
│   ├── config/
│   │   ├── server.properties
│   │   └── producer.properties
│   └── data/
│
├── nifi/
│   ├── conf/
│   │   ├── nifi.properties
│   │   └── flow.xml.gz
│   └── data/
│
├── cassandra/
│   ├── conf/
│   │   └── cassandra.yaml
│   └── data/
│
├── scripts/
│   ├── init.sh
│   ├── start_services.sh
│   └── stop_services.sh
│
├── notebooks/
│   └── example_pyspark_notebook.ipynb
│
└── data_processing/
    ├── ingestion/
    │   ├── kafka_producer.py
    │   └── nifi_template.xml
    ├── pyspark_jobs/
    │   ├── job1.py
    │   ├── job2.py
    │   └── job3.py
    └── monitoring/
        ├── manage.py
        └── monitor.py

Scripts

    init.sh: Initializes the environment by starting necessary services.
    start_services.sh: Starts all required services, such as Hadoop, Spark, Hive, HBase, Kafka, NiFi, and Cassandra.
    stop_services.sh: Stops all running services.
    kafka_producer.py: Python script to produce data to Kafka topics.
    nifi_template.xml: NiFi flow template for ingesting and processing data.
    job1.py, job2.py, job3.py: PySpark jobs for data processing and transformation.
    manage.py: Python script to manage the data processing pipeline, including starting and stopping jobs.
    monitor.py: Python script for monitoring the progress and performance of the data processing pipeline.

Usage

    Clone the repository:

bash

git clone https://github.com/yourusername/big_data_project.git

    Run the init.sh script to initialize the environment:

bash

cd big_data_project/scripts
./init.sh

    Start all the required services using the start_services.sh script:

bash

./start_services.sh

    Run the data ingestion script to start producing data to Kafka:

bash

cd ../data_processing/ingestion
python kafka_producer.py

    Execute the PySpark jobs:

bash

cd ../pyspark_jobs
spark-submit
