from kafka import KafkaConsumer
import json

def consume_messages():
    consumer = KafkaConsumer(
        'numbers',
        bootstrap_servers='localhost:9092',
        auto_offset_reset='earliest',
        value_deserializer=lambda m: json.loads(m.decode('utf-8'))
    )

    count = 0
    for message in consumer:
        if message.value['number'] % 2 == 0:
            print(f'Consumed {message.value}')
            count += 1
        
        # cut off the stream.
        if count == 5:
            break

if __name__ == "__main__":
    consume_messages()
