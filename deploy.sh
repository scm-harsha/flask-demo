#!/bin/bash

cd /home/ec2-user/flask-demo
git pull origin main
pip install -r requirements.txt
python3 app.py