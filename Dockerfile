# use this empty Dockerfile to build your assignment
FROM ubuntu:22.04
RUN apt update
RUN apt -y upgrade
RUN apt -y install nodejs npm
RUN node -v
WORKDIR /app
COPY package.json .
COPY . .
RUN npm install
RUN npm start

# NOTE: The instructions are now in the README.md file in this directory.
