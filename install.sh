#!/bin/bash

# Create dir
mkdir downloads

# Install dependencies
sudo pip install pymysql
sudo pip install jupyterlab
sudo pip install python-decouple
sudo pip install dj-database-url
sudo pip install Unipath

# Repair dir and file permissions
find * -type d -print0 | xargs -0 chmod 0755 # for directories
find . -type f -print0 | xargs -0 chmod 0644 # for files
find ./run.py -type f -print0 | xargs -0 chmod 0744 # for files


# Uncomment while debugging
find . -type f -print0 | xargs -0 chmod 0744 # for files
