FROM python:2.7
ADD kafka-slack-notify.py /scripts/kafka-slack-notify.py

RUN pip install slackclient 
RUN pip install confluent_kafka
CMD ["python","/scripts/kafka-slack-notify.py"]
