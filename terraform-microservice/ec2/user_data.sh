#!/bin/bash
# This script is executed on instance startup to configure the EC2 instance.
# Update the package manager
sudo apt-get update -y

# Install necessary packages
sudo apt-get install -y python3 python3-pip

# Install Flask
pip3 install Flask

# Create a simple Flask application
cat <<EOF > /home/ubuntu/app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, World!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
EOF

# Run the Flask application
nohup python3 /home/ubuntu/app.py &
# Ensure the application starts on boot
echo "nohup python3 /home/ubuntu/app.py &" >> /home/ubuntu/start_flask.sh
chmod +x /home/ubuntu/start_flask.sh
echo "@reboot ubuntu /home/ubuntu/start_flask.sh" | crontab -