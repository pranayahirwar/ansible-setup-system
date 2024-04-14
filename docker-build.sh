#!/usr/bin/env bash

# Define some colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Running docker build command:${NC}"
echo "docker build . -t nc // nc=new container"
docker build . -t nc