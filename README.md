# Bird Application

This is the bird Application! It gives us birds!!!

The app is written in Golang and contains 2 APIs:
- the bird API
- the birdImage API

When you run the application (figure it out), you will see the relationship between those 2 APIs.

# Installation & How to run it

Find it
# Challenge

How to:
- fork the repository
- work on the challenges
- share your repository link with the recruitment team

Here are the challenges:
- Install and run the app
- Dockerize it (create dockerfile for each API)
- Create an infra on AWS (VPC, SG, instances) using IaC
- Install a small version of kubernetes on the instances (no EKS)
- Build the manifests to run the 2 APIs on k8s 
- Bonus points: observability, helm, scaling

Rules:
- Use security / container / k8s / cloud best practices
- Change in the source code is possible

Evaluation criterias:
- best practices
- code organization
- clarity & readability

# ANSWERS

# Installation & How to run it

## Prerequisites

- **Go**: Ensure that you have Go installed on your machine. You can download it from [golang.org](https://golang.org/dl/).

## Setup

1. **Clone the Repository**

2. **Navigate to the `bird` Directory**
   ```bash
   cd bird
   ```

3. **Use the provided Makefile to build the application**
   ```bash
   make
   ```
4. **Start the bird service**
   ```bash
   ./getBird
   ```
Do the same job for BirdImage API


# Building Docker Images for the Bird Application

## Prerequisites

- **Docker**: Ensure Docker is installed on your machine. You can download it from [docker.com](https://www.docker.com/products/docker-desktop).

## Directory Structure

- `bird/`: Contains the Dockerfile and source code for the `bird` API.
- `birdimage/`: Contains the Dockerfile and source code for the `birdimage` API.

## Building & Running the Docker Images

   ```bash
   cd bird
   docker build -t bird-api -f Dockerfile .
   docker run -p 4201:4201 bird-api
   ```

   ```bash
   cd birdImage
   docker build -t birdimage-api -f Dockerfile .
   docker run -p 4200:4200 birdimage-api
   ```

   Verifying the Images
   ```bash
   docker images
   ```
   
   You can also install portainer for a better docker images management
   [poratiner.io](https://www.portainer.io/)


# Terraform Setup for AWS Infrastructure

## Prerequisites

- **Terraform**: Ensure Terraform is installed on your machine. You can download it from [terraform.io](https://www.terraform.io/downloads.html).
- **AWS CLI**: Ensure the AWS CLI is installed and configured with your credentials. You can download it from [aws.amazon.com/cli](https://aws.amazon.com/cli/).

## Directory Structure

- `infra/`: Contains the Terraform configuration files.

## Setting Up the Infrastructure

   ```bash
   cd infra
   terraform init
   terraform plan
   terraform apply
   terraform destroy (in case you want to destroy the resources)

   ```
# Kubernetes Setup for Bird Application

## Prerequisites

- **Kubernetes**: Ensure you have `kubectl` installed. You can download it from [kubernetes.io](https://kubernetes.io/docs/tasks/tools/).
- **K3s**: Lightweight Kubernetes distribution for installation. You can find it at [k3s.io](https://k3s.io/).

## Directory Structure

- `k8s/`: Contains Kubernetes manifests for deploying the Bird APIs.

## Setting Up Kubernetes

### 1. Set Up a Kubernetes Cluster

1. **Provision a Kubernetes Cluster**:
   - If using K3s, you can install it on your EC2 instances. SSH into each instance and run:
     ```bash
     curl -sfL https://get.k3s.io | sh -
     ```

2. **Configure `kubectl`**:
   - Ensure `kubectl` is configured to use your Kubernetes cluster. 
     ```bash
     sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
     ```

### 2. Deploy the Bird APIs to Kubernetes

1. **Navigate to the `k8s` Directory**:
   ```bash
   cd k8s/bird/
   kubectl apply -f service.yaml
   kubectl apply -f deployment.yaml
   kubectl apply -f ingress.yaml
   ```
2. **U can veriy the deployed manifest by running these commands**:
   ```bash
   kubectl get deployments
   kubectl get pods
   kubectl get services
   kubectl get ingress
   ```

# (HPA) Setup for Bird Application

## Prerequisites
- **Metrics Server**: Ensure that the Metrics Server is installed This is required for HPA to work. You can find the installation instructions at [Metrics Server GitHub](https://github.com/kubernetes-sigs/metrics-server).

First, you have to install Metrics Server:
     ```bash
     kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
     ```
     ```bash
     kubectl apply -f hpa.yaml
     ```

# Helm Setup for Bird Application

## Prerequisites

- **Helm**: Ensure you have Helm installed. You can download it from [helm.sh](https://helm.sh/docs/intro/install/).

## Directory Structure

- `helm/`: Contains the Helm charts for deploying the Bird APIs.

## Setting Up Helm

### 1. Install Helm

### 2. Create Helm Charts

1. **Navigate to the `helm` Directory**:
   ```bash
   cd helm
   helm create bird-api
   helm create birdimage-api
   ```
2. **Verify the charts**:
   ```bash
   helm list
   ```




