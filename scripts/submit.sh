#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "Usage: ./scripts/submit.sh <submission_file> [message]"
    exit 1
fi

FILE=$1
MESSAGE=${2:-"Automated submission"}

echo "Submitting $FILE to Kaggle..."
kaggle competitions submit -c house-prices-advanced-regression-techniques -f "$FILE" -m "$MESSAGE"
