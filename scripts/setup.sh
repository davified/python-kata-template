#!/bin/bash

set -e 

echo "Installing homebrew if it's not installed..."
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# python dependencies, needed for configuring IDE to have proper intellisense and autocomplete
echo "Installing python3 if it's not installed..."
which python3 || brew install python3

echo "Activating virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "Installing python dependencies..."
pip install --upgrade pip
pip install -r requirements-dev.txt