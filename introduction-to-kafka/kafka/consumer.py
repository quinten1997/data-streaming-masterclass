from kafka import KafkaConsumer
import json

def consume_messages():
    consumer = KafkaConsumer(
        'numbers',
        bootstrap_servers='localhost:9092',
        auto_offset_reset='earliest',
        value_deserializer=lambda m: json.loads(m.decode('utf-8'))
    )
    for message in consumer:
        print(f'Consumed {message.value}')

if __name__ == "__main__":
    consume_messages()
