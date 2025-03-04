# ELK Stack Logging Project

## Overview

This project sets up a complete ELK (Elasticsearch, Logstash, Kibana) stack with Filebeat for log collection and processing.

## Prerequisites

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

### 2. Start the Stack

```bash
docker-compose up -d
```

### 3. Access Interfaces

- Kibana: http://localhost:5601
- Elasticsearch: http://localhost:9200

## Configuration

- Customize log parsing in `logstash/pipeline/logstash.conf`
- Modify Filebeat inputs in `filebeat/filebeat.yml`

## Troubleshooting

- Check container logs: `docker-compose logs <service>`
- Verify Elasticsearch health: `curl http://localhost:9200/_cluster/health`

## License

MIT License
