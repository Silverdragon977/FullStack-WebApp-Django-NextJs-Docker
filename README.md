# Django + Next.js + Docker Full Stack App

A containerized full-stack web application using Django for the backend and Next.js (React + TypeScript) for the frontend.

---

## Overview

This full stack app uses Docker to containerize the backend Django framework with the frontent NextJs framework that uses TS and React. 
The backend and frontend are developed independently and connected through an API, while Docker Compose manages the environment.

---

## Tech Stack

- Backend: Django (Python)
- Frontend: Next.js (React, TypeScript)
- Styling: Tailwind CSS
- Environment: Docker, Docker Compose

---

## Getting Started

### Clone the repository

#Run this in Bash

git clone git@github.com:Silverdragon977/django-next-docker-app.git
cd django-next-docker-app

# Optionally you can run 
bash SetupURLAndStartContainer.sh 
# This will add the Host django-app.test:8002 url to your etc/hosts file
# and then run the containers in the background and open the url in default browser

# Otherwise run the container in the directory
docker compose up --build
# To stop container
docker compose down
