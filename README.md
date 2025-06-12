# CI Pipeline: Build and Push React App as Docker Image

This project uses GitHub Actions to build a Vite React app as a Docker image and push it to Docker Hub using a multi-stage Dockerfile.

## Pipeline steps

- Checkout code from repository
- Login to Docker Hub using GitHub Secrets
- Build Docker image using multi-stage Dockerfile (Node.js and Nginx)
- Tag the image with the Git commit SHA
- Push the image to Docker Hub

## Docker Hub

Image: docker pull cansinerdi/my-react-app:ea1b395b463e504c3d6d35ad1a86117b3e0232e4