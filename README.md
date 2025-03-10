# ELK Stack 

## Overview

This project sets up a complete ELK (Elasticsearch, Logstash, Kibana) stack with Filebeat for log collection and processing.

## Prerequisites

Install Docker and Docker Compose

- Docker
- Docker Compose

## Components

- **Elasticsearch**: Distributed search and analytics engine
- **Logstash**: Data processing pipeline
- **Kibana**: Visualization and management interface
- **Filebeat**: Lightweight log shipper

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/khalilou88/elk.git
cd elk
```

### 2. Project Structure

```
elk/
│
├── docker-compose.yml
├── config/
│   ├── logstash.conf
│   ├── logstash.yml
│   └── filebeat.yml
├── data/
│   └── elasticsearch/  # Persistent Elasticsearch data
└── README.md
```

### 3. Start the Stack

```bash
docker-compose up -d
```

### 4. Access Interfaces

- Kibana: http://localhost:5601
- Elasticsearch: http://localhost:9200

### 5. Configuration

- Customize log parsing in `logstash/pipeline/logstash.conf`
- Modify Filebeat inputs in `filebeat/filebeat.yml`

### 6. Troubleshooting

- Check container logs: `docker-compose logs <service>`
- Verify Elasticsearch health: `curl http://localhost:9200/_cluster/health`

### 7. Stopping the Stack

```bash
docker-compose down
```

## License

MIT License
