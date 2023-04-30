#!/bin/bash

cd /home/ec2-user/flask-demo

# Update code from Git repository
git pull origin main
if [ $? -ne 0 ]; then
    echo "Error: Git pull failed"
    exit 1
fi

# Install new dependencies (if any)
pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "Error: pip install failed"
    exit 1
fi

# Stop any existing Flask app running on port 80
pid=$(sudo fuser 80/tcp)
sudo kill -9 $pid

# Start the Flask app
sudo python3 app.py &
if [ $? -ne 0 ]; then
    echo "Error: Failed to start Flask app"
    exit 1
fi

echo "started the app"
exit 0