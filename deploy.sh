#!/bin/bash

cd /home/ec2-user/flask-demo
git pull origin main
# pip install -r requirements.txt
# Find the PID of the process listening on port 80
pid=$(sudo fuser 80/tcp)

# Kill the process with the PID we found
sudo kill -9 $pid
sudo python3 app.py &