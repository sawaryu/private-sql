#!/bin/bash

PROJECT_ID=$(gcloud config get-value project)
if [ -z "$PROJECT_ID" ]; then
    echo "Default project ID is not set in gcloud."
    exit 1
fi

apis=(
    "compute.googleapis.com"
    "servicenetworking.googleapis.com"
    "vpcaccess.googleapis.com"
    "cloudfunctions.googleapis.com"
    "cloudbuild.googleapis.com"
)

for api in "${apis[@]}"
do
    echo "Enabling $api..."
    gcloud services enable "$api" --project="$PROJECT_ID"
    if [ $? -ne 0 ]; then
        echo "Failed to enable $api"
        exit 1
    fi
done

echo "All APIs have been enabled successfully."
