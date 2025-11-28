#!/bin/bash
set -e

# Create data directory if it doesn't exist
mkdir -p data

# Download competition data
echo "Downloading competition data..."
kaggle competitions download -c house-prices-advanced-regression-techniques -p data

# Unzip data
echo "Unzipping data..."
unzip -o data/house-prices-advanced-regression-techniques.zip -d data/

# Remove zip file
rm data/house-prices-advanced-regression-techniques.zip

echo "Data setup complete."
