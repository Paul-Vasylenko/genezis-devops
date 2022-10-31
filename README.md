1. docker pull paul1408/devops-kpi
2. docker run --rm --memory="64M" --cpus="1.5"  -p 80:4000 --name devops-kpi-container paul1408/devops-kpi:latest

or

1. docker build -t devops-kpi .
2. docker run --rm --memory="64M" --cpus="1.5"  -p 80:4000 --name devops-kpi-container devops-kpi:latest


to stop use:  docker stop devops-kpi-container
