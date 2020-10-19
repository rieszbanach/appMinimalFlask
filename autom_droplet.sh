#!/bin/bash

sudo apt update
sudo apt install python-pip
sudo apt install python-dev
sudo apt install nginx
sudo pip install virtualenv
virtualenv simplexEnvironment2
cd simplexEnvironment2/
source bin/activate
pip install flask==0.12.2
pip uninstall werkzeug
pip install werkzeug==0.16.0
pip install gunicorn==19.9.0

git clone https://github.com/rieszbanach/minimalFlask.git

cd minimalFlask
deactivate

sudo cp appMinimalFlask.service /etc/systemd/system
sudo systemctl start appMinimalFlask.service 
sudo systemctl enable appMinimalFlask.service 
sudo cp default /etc/nginx/sites-enabled/default
nginx restart

