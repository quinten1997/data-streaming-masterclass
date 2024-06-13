from kafka import KafkaProducer, KafkaConsumer
import json
import time
import random

def produce_messages():
    producer = KafkaProducer(
        bootstrap_servers='localhost:9092',
        value_serializer=lambda v: json.dumps(v).encode('utf-8')
    )

    for i in range(10):
        message = {'number': i, 'timestamp': time.time(), 'status': random.choice(['new', 'processed', 'error'])}
        # TODO: Send the message to Kafka
        producer.send('numbers', message)
        print(f'Produced {message}')
        time.sleep(1)

def consume_and_process_messages():
    consumer = KafkaConsumer(
        'numbers',
        bootstrap_servers='localhost:9092',
        auto_offset_reset='earliest',
        value_deserializer=lambda m: json.loads(m.decode('utf-8'))
    )

    producer = KafkaProducer(
        bootstrap_servers='localhost:9092',
        value_serializer=lambda v: json.dumps(v).encode('utf-8')
    )

    count = 0
    for message in consumer:
        data = message.value
        # TODO: Process the message (e.g., change the status to 'processed')
        # TODO: Send the processed message to a new topic 'processed_numbers'
        print(f'Processed and forwarded {data}')
        count += 1
        pass
        
        # cut off the stream.
        if count == 10:
            break


if __name__ == "__main__":
    # Run the producer to generate initial messages
    produce_messages()

    # Run the consumer to process messages
    consume_and_process_messages()
