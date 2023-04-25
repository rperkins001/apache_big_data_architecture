from kafka import KafkaProducer
import time

producer = KafkaProducer(bootstrap_servers="kafka:9092")

for i in range(100):
    message = f"Message {i}"
    producer.send("input_topic", message.encode("utf-8"))
    time.sleep(1)

producer.close()