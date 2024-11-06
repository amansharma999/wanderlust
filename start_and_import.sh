#!/bin/bash

# Step 1: Run Docker Compose
echo "Starting Docker Compose..."
docker-compose up -d

# Step 2: Change to backend directory
echo "Navigating to backend directory..."
cd backend || exit

# Step 3: Import MongoDB data
echo "Importing data into MongoDB..."
mongoimport --db wanderlust --collection posts --file ./data/sample_posts.json --jsonArray

echo "MongoDB data import complete."

