#!/bin/bash

# Name of notebook to deploy (excluding .ipynb extension)
<name>=app

# Convert notebook to py script
jupyter nbconvert --to script hire.ipynb

# Depending on notebook metadata, command above may output a .txt file
# If so, change extension to .py
if [ -f hire.txt ]; then
   mv hire.txt hire.py
fi