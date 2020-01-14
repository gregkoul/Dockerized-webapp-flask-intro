# Dockerized-webapp-flask-intro

This is a simple flask webapp that implements GRUD functionality. 

# Follow these steps in order to create your Dockerized-webapp-flask-intro

1. First of all you have to clone this repository on your server.
```bash
    -$ mkdir -p ~/MyProjects
    -$ cd ~/MyProjects
    -$ git clone https://github.com/gregkoul/Dockerized-webapp-flask-intro.git
                      OR via SSH
    -$ git clone git@github.com:gregkoul/Dockerized-webapp-flask-intro.git
```
2. Now you have to build the Docker Image locally.
```bash
    -$ cd ~/MyProjects/Dockerized-webapp-flask-intro
    -$ docker build . -t gregkoul/webapp-flask-intro:1.0
```
3. Now you have to create a persistent volume.
```bash
    -$ docker volume create myvol
    -$ docker volume ls
```
4. Now you have to create SQLite database.
```bash
    -$ docker run -t -p 5000:5000 -v myvol:/opt gregkoul/webapp-flask-intro:1.0 createdb.py
```
5. Now you have to spin up your container.
```bash
    -$ docker run -t -p 5000:5000 -v myvol:/opt gregkoul/webapp-flask-intro:1.0
```
