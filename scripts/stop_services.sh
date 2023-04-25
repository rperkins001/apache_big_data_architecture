#!/bin/bash

# Stop Cassandra services
$CASSANDRA_HOME/bin/nodetool stopdaemon

# Stop NiFi services
$NIFI_HOME/bin/nifi.sh stop

# Stop Kafka services
$KAFKA_HOME/bin/kafka-server-stop.sh

# Stop HBase services
$HBASE_HOME/bin/stop-hbase.sh

# Stop Hive services
pkill -f "hive --service metastore"

# Stop Spark services
$SPARK_HOME/sbin/stop-master.sh

# Stop Hadoop services
$HADOOP_HOME/sbin/stop-yarn.sh
$HADOOP_HOME/sbin/stop-dfs.sh