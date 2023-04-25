Big Data Project

This repository contains a big data project that uses various Apache components to build an end-to-end data processing pipeline. It includes Hadoop, Spark, Hive, HBase, Kafka, NiFi, and Cassandra.
Repository Structure:

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
	1.	init.sh: Initializes the environment by starting necessary services.
	2.	start_services.sh: Starts all required services, such as Hadoop, Spark, Hive, HBase, Kafka, NiFi, and Cassandra.
	3.	stop_services.sh: Stops all running services.
	4.	kafka_producer.py: Python script to produce data to Kafka topics.
	5.	nifi_template.xml: NiFi flow template for ingesting and processing data.
	6.	job1.py, job2.py, job3.py: PySpark jobs for data processing and transformation.
	7.	manage.py: Python script to manage the data processing pipeline, including starting and stopping jobs.
	8.	monitor.py: Python script for monitoring the progress and performance of the data processing pipeline.

