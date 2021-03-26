#!/bin/bash

cd /
cd /home/ubuntu

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
    -a fetch-config \
    -m ec2 \
    -c file:/opt/cloudwatch-config.json \
    -s

sleep 10 
sudo node app.js > /dev/null 2>&1 &