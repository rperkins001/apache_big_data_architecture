#!/bin/bash

# Start Hadoop services
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

# Start Spark services
$SPARK_HOME/sbin/start-master.sh

# Start Hive services
$HIVE_HOME/bin/hive --service metastore &

# Start HBase services
$HBASE_HOME/bin/start-hbase.sh

# Start Kafka services
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties &

# Start NiFi services
$NIFI_HOME/bin/nifi.sh start

# Start Cassandra services
$CASSANDRA_HOME/bin/cassandra -R