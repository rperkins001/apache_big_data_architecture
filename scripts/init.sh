#!/bin/bash

# Set environment variables
export HADOOP_HOME=/path/to/hadoop
export SPARK_HOME=/path/to/spark
export HIVE_HOME=/path/to/hive
export HBASE_HOME=/path/to/hbase
export KAFKA_HOME=/path/to/kafka
export NIFI_HOME=/path/to/nifi
export CASSANDRA_HOME=/path/to/cassandra

# Create necessary directories
mkdir -p /hadoop/data/namenode /hadoop/data/datanode /kafka/data /nifi/data /cassandra/data/data
