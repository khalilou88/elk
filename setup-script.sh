#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if Docker is installed
check_docker() {
    if ! command -v docker &> /dev/null; then
        echo -e "${YELLOW}Docker is not installed. Please install Docker and Docker Compose.${NC}"
        echo "Visit: https://docs.docker.com/get-docker/"
        exit 1
    fi
}

# Function to start ELK stack
start_elk() {
    echo -e "${GREEN}Starting ELK Stack...${NC}"
    docker-compose up -d
    echo -e "${GREEN}ELK Stack started successfully!${NC}"
    echo -e "Access Interfaces:"
    echo -e "- Kibana: ${YELLOW}http://localhost:5601${NC}"
    echo -e "- Elasticsearch: ${YELLOW}http://localhost:9200${NC}"
}

# Function to stop ELK stack
stop_elk() {
    echo -e "${GREEN}Stopping ELK Stack...${NC}"
    docker-compose down
    echo -e "${GREEN}ELK Stack stopped.${NC}"
}

# Main script
case "$1" in
    start)
        check_docker
        start_elk
        ;;
    stop)
        check_docker
        stop_elk
        ;;
    restart)
        check_docker
        stop_elk
        start_elk
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
esac

exit 0
