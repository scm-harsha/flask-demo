#!/bin/bash

cd /home/ssm-user/flask-demo
git pull origin main
pip install -r requirements.txt
python3 app.py