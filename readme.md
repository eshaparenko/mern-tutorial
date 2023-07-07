# Goalsetter MERN app

This is the goalsetter app from the [Learn the MERN Stack](https://www.youtube.com/watch?v=-0exw-9YJBo) series on YouTube.

## Usage
## Install dependencies

```
# Backend deps
npm install

# Frontend deps
cd frontend
npm install
```

### Run Server

```
npm run server
```
## Run in docker containers

```
git clone https://github.com/eshaparenko/jenkins-docker.git
```
```
cd mern-tutorial
```
```
docker build -t back:latest .
```
```
cd frontend
``` 
```
docker build -t front:latest .
```
#Create network
```
docker network create mern-net
```
```
#Run mongodb container

docker run --name mongodb -v mongo-volume:/data/db --rm -d --network mern-net mongo

#Run backend server

docker run -v back-volume:/app -v /app/node_modules --name mern-backend --rm -d -p 5000:5000 --network mern-net back:latest

#Run frontend server

docker run -v front-volume:/app/src -d --rm -p 3000:3000 --network mern-net --name mern-front front:latest
```

Navigate: localhost:3000


## Docker compose

```
docker compose up -d
```