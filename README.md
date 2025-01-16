# LuckyDraw

這是一個方便的免費線上抽獎程式，無論您是行銷抽獎活動、公司年度尾牙抽獎或是節慶活動抽獎，都能符合您的需求。

在未經同意時，請勿複製改寫用於公司商業用途。

[Lucky Draw](https://apan1121.github.io/luckydraw/)  
[Demo Video](https://www.youtube.com/watch?v=Vp7fli021d8)

---

## Table of Contents
1. [Running Locally](#running-locally)
   - [Install Dependencies](#install-dependencies)
   - [Install Required Packages](#install-required-packages)
   - [Build the Project](#build-the-project)
   - [Serve the Built Files](#serve-the-built-files)
2. [Running with Docker](#running-with-docker)
   - [Build the Docker Image](#build-the-docker-image)
   - [Run the Docker Container](#run-the-docker-container)
   - [Access the Application](#access-the-application)
3. [Notes](#notes)

---

# Running Locally

## Install Dependencies
Ensure you have Yarn installed. If not, you can install it via npm:

```bash
npm install -g yarn
```

## Install Required Packages
Navigate to your project directory and run:

```bash
yarn install
```

## Build the Project
Run the production build command:

```bash
yarn run build:prod
```

## Serve the Built Files
Use the `serve` command to serve the built files:

```bash
serve . -l 8080
```

The application will be available at [http://localhost:8080](http://localhost:8080).

---

# Running with Docker

## Build the Docker Image
In your project directory, run the following command to build the Docker image:

```bash
docker build -t luckydraw:latest .
```

## Run the Docker Container
After building the image, run the following command to start the service in Docker:

```bash
docker stop luckydraw
docker run -d -p 8080:8080 luckydraw:latest
```

## Access the Application
The application will be available at [http://localhost:8080](http://localhost:8080) on your local machine.

# Notes
1. `docker rmi $(docker images -f "dangling=true" -q)`