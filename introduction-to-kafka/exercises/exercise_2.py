from kafka import KafkaConsumer
import json

def consume_messages():
    # TODO: Initialize the Kafka consumer with necessary configurations
    consumer = None  # Replace with KafkaConsumer initialization

    # TODO: Consume messages from the 'numbers' topic and print those where 'number' is even
    for message in consumer:
        # TODO: Check if the 'number' is even and print the message if true
        pass

if __name__ == "__main__":
    consume_messages()
