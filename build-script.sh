#!/bin/bash

# Определение переменных
DOCKER_USERNAME="bakdau"
DOCKER_PASSWORD="M)L?.@>Ehk9}a6G"

# Вход в Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Сборка и пуш образов в Docker Hub
docker build -t "$DOCKER_USERNAME/backend:latest" ./backend
docker build -t "$DOCKER_USERNAME/frontend:latest" ./frontend
docker push "$DOCKER_USERNAME/backend:latest"
docker push "$DOCKER_USERNAME/frontend:latest"
