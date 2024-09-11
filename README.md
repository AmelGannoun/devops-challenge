# Bird Application

This is the bird Application! It gives us birds!!!

The app is written in Golang and contains 2 APIs:
- the bird API
- the birdImage API

When you run the application (figure it out), you will see the relationship between those 2 APIs.

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