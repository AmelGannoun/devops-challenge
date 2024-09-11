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