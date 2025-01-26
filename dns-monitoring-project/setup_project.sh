#!/bin/bash

# Project name
PROJECT_NAME="dns-monitoring-project"

# Define directories
DIRECTORIES=(
    "$PROJECT_NAME/capture"
    "$PROJECT_NAME/cache"
    "$PROJECT_NAME/threat_detection"
    "$PROJECT_NAME/anomaly_detection"
    "$PROJECT_NAME/alerting"
    "$PROJECT_NAME/visualization"
    "$PROJECT_NAME/data/logs"
    "$PROJECT_NAME/data/cache_dumps"
    "$PROJECT_NAME/data/feeds"
    "$PROJECT_NAME/config"
    "$PROJECT_NAME/tests"
)

# Define files
FILES=(
    "$PROJECT_NAME/capture/capture.py"
    "$PROJECT_NAME/capture/parser.py"
    "$PROJECT_NAME/capture/__init__.py"
    "$PROJECT_NAME/cache/fetch_cache.py"
    "$PROJECT_NAME/cache/parse_cache.py"
    "$PROJECT_NAME/cache/__init__.py"
    "$PROJECT_NAME/threat_detection/fetch_feed.py"
    "$PROJECT_NAME/threat_detection/check_reputation.py"
    "$PROJECT_NAME/threat_detection/__init__.py"
    "$PROJECT_NAME/anomaly_detection/detect_anomalies.py"
    "$PROJECT_NAME/anomaly_detection/__init__.py"
    "$PROJECT_NAME/alerting/email_alert.py"
    "$PROJECT_NAME/alerting/webhook_alert.py"
    "$PROJECT_NAME/alerting/__init__.py"
    "$PROJECT_NAME/visualization/dashboard.py"
    "$PROJECT_NAME/visualization/generate_report.py"
    "$PROJECT_NAME/visualization/__init__.py"
    "$PROJECT_NAME/config/settings.py"
    "$PROJECT_NAME/tests/test_capture.py"
    "$PROJECT_NAME/tests/test_cache.py"
    "$PROJECT_NAME/tests/test_alerting.py"
    "$PROJECT_NAME/main.py"
    "$PROJECT_NAME/requirements.txt"
    "$PROJECT_NAME/README.md"
)

# Create directories
echo "Creating directories..."
for DIR in "${DIRECTORIES[@]}"; do
    mkdir -p "$DIR"
    echo "Created: $DIR"
done

# Create files
echo "Creating files..."
for FILE in "${FILES[@]}"; do
    touch "$FILE"
    echo "Created: $FILE"
done

# Add a README template
cat <<EOF > "$PROJECT_NAME/README.md"
# DNS Cache Monitoring and Malicious IP Detection

## Project Overview
This project monitors DNS traffic, analyzes cache data, and detects malicious IPs using threat intelligence and anomaly detection.

## Folder Structure
- **capture/**: Handles DNS packet capture.
- **cache/**: Fetches and parses DNS cache.
- **threat_detection/**: Integrates threat intelligence APIs.
- **anomaly_detection/**: Detects anomalies in DNS traffic.
- **alerting/**: Sends alerts for suspicious activity.
- **visualization/**: Generates reports and dashboards.
- **data/**: Stores logs, cache dumps, and threat feeds.
- **config/**: Configuration files.
- **tests/**: Unit and integration tests.

## How to Run
1. Install dependencies: \`pip install -r requirements.txt\`
2. Run \`main.py\` to start monitoring.

## Dependencies
- Python (or other languages)
EOF

echo "Setup complete! Navigate to $PROJECT_NAME to start your project."
