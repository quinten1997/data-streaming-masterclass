from kafka import KafkaProducer
import json
import time

def produce_messages():
    producer = KafkaProducer(
        bootstrap_servers='localhost:9092',
        value_serializer=lambda v: json.dumps(v).encode('utf-8')
    )

    for i in range(10):
        message = {'number': i}
        producer.send('numbers', message)
        print(f'Produced {message}')
        time.sleep(1)

if __name__ == "__main__":
    produce_messages()
