# Introduction to Kafka Data Streams

Welcome to the Introduction to Kafka Data Streams class. This repository contains the materials and exercises for a 30-minute to 1-hour introductory tutorial on using Kafka with Python.

## Prerequisites

1. Python 3.6 or later installed
2. Kafka installed and running (local or Docker setup)
3. Basic understanding of Python

## Setup Instructions

1. Clone this repository:

    ```bash
    git clone https://github.com/yourusername/kafka-intro-class.git
    cd kafka-intro-class
    ```

2. Install the required Python packages:

    ```bash
    pip install -r requirements.txt
    ```

3. Ensure Kafka is running. You can use Docker (start docker) for a quick setup:

    ```bash
    cd kafka/
    docker-compose up -d
    ```

4. Verify setup.

    ```bash
    docker-compose logs kafka
    docker-compose logs zookeeper
    ```
## Class Outline

### 1. Introduction to Kafka

- What is Kafka?
- Kafka architecture
- Key concepts: Topics, Producers, Consumers, Brokers

### 2. Setting Up Kafka with Python

- Installing Kafka Python client
- Writing a simple Kafka producer
- Writing a simple Kafka consumer

### 3. Exercises

We have provided a few beginner-level exercises to practice using Kafka with Python.
Please check the documentation if you're stuck: https://kafka.apache.org/documentation/

#### Exercise 1: Writing a Kafka Producer

In this exercise, you will write a Kafka producer that sends messages to a Kafka topic.

#### Exercise 2: Writing a Kafka Consumer

In this exercise, you will write a Kafka consumer that reads messages from a Kafka topic.

#### Exercise 3: Simple Data Processing

In this exercise, you will write a Kafka consumer that processes messages from a Kafka topic and produces new messages to another topic.

## Exercises

The exercises are located in the `exercises` folder. Follow the instructions in each file to complete them.

1. [Exercise 1: Kafka Producer](exercises/exercise_1.py)
2. [Exercise 2: Kafka Consumer](exercises/exercise_2.py)
3. [Exercise 3: Simple Data Processing](exercises/exercise_3.py)

Good luck and happy coding!