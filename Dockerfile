FROM ubuntu:latest

RUN apt update && apt install ansible -y

WORKDIR /app

COPY . .