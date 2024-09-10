
Setting Up and Deploying Microservices

1. Prepare your environment:
   - Install Python and pip
   - Set up Docker and Git
   - Initialize a Git repository: `git init`

2. Create and configure microservices:
   - Set up directories for hello and world services
   - Create virtual environments and install Flask
   - Develop application files 

3. Containerize services:
   - Create Dockerfiles for both services
   - Build Docker images:
     ```
     docker build -t hello-service -f hello-service/Dockerfile hello-service/
     docker build -t world-service -f world-service/Dockerfile world-service/
     ```
   - Test locally:
     ```
     docker run -d -p 5000:5000 hello-service
     docker run -d -p 5001:5001 world-service
     ```

4. Deploy to Kubernetes:
   - Start Minikube: `minikube start`
   - Create and apply Kubernetes manifests:
     ```
     kubectl apply -f hello-service-deployment.yaml
     kubectl apply -f world-service-deployment.yaml
     ```

5. Access the hello service URL:
   - Open a new terminal and run:
     ```
     minikube service hello-service -n default --url
     ```
   - Update the `run.sh` script, replacing the `hello_URL` variable with this output

6. Access the world service URL:
   - In a new terminal, execute:
     ```
     minikube service world-service -n default --url
     ```
   - Update the `run.sh` script, replacing the `world_URL` variable with this output

7. Test the integrated services:
   - Make the script executable: `chmod +x run.sh`
   - Execute the script: `./run.sh`
   - This will make API calls to both services and display the worlds in the terminal

8. Troubleshooting:
   - If services aren't running, use `kubectl` commands to inspect pods, deployments, and services
   - Check logs: `kubectl logs <pod-name>`
   - If needed, delete and reapply deployments and services


Docker Images to docker Hub:
hello-service: "https://hub.docker.com/layers/khs17/hello-service/latest/images/sha256-1c154e49f4d919aea9e1bba77807f810164e4b5ec807c9201b10853bacc37787?context=repo"

world-service: "https://hub.docker.com/layers/khs17/world-service/latest/images/sha256-83ef0f562b0c22518f6b429bd188f9ad103410313de235564328c621dcdc6a05?context=repo"

