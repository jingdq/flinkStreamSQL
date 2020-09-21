#!/bin/zsh
KAFKA_HOME=/Users/jingdongqi/opt/module/kafka_2.11-2.4.1
case $1 in
start)
  "$KAFKA_HOME"/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties
  ;;
stop)
  "$KAFKA_HOME"/bin/kafka-server-stop.sh
  ;;
produce)
   "$KAFKA_HOME"/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic "$2"
  ;;
consume)
   "$KAFKA_HOME"/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic "$2"
  ;;
create)
   "$KAFKA_HOME"/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --topic "$2"
  ;;

esac
