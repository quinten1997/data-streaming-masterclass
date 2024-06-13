from kafka import KafkaProducer
import json
import time

def produce_messages():
    # TODO: Initialize the Kafka producer with necessary configurations
    producer = None  # Replace with KafkaProducer initialization

    # TODO: Produce 10 messages to the 'numbers' topic
    for i in range(10):
        message = {'number': i}
        # TODO: Send the message to Kafka using the producer and print it
        time.sleep(1)

if __name__ == "__main__":
    produce_messages()
