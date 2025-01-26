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
1. Install dependencies: `pip install -r requirements.txt`
2. Run `main.py` to start monitoring.

## Dependencies
- Python (or other languages)
