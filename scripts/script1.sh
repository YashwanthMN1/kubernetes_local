# From project-root/
# docker build -t fastapi-app1:latest ./app1
# docker build -t fastapi-app2:latest ./app2

# Load into kind
kind load docker-image fastapi-app1:latest
kind load docker-image fastapi-app2:latest
