# use this empty Dockerfile to build your assignment
FROM ubuntu:22.04
RUN apt update
RUN apt -y upgrade
RUN apt -y install nodejs npm
RUN node -v
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD [ "npm", "start" ]
EXPOSE 3000
# NOTE: The instructions are now in the README.md file in this directory.