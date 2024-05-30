#!/bin/bash

# Create the virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment ..."
    python -m venv .venv
fi

# Activate the virtual environment
echo "Activating virtual environment ..."
source .venv/bin/activate

# Upgrade pip in the virtual environment
echo "Upgrading pip ..."
pip install --upgrade pip

# Install the package in editable mode with its dependencies
echo "Installing the package and dependencies ..."
pip install -e .

# Run the additional setup script
echo "Running replace_lib.sh ..."
./scripts/replace_lib.sh

echo "Setup complete."
