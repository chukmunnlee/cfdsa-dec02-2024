# this is a comment
# Getting node 23
FROM node:23

LABEL maintainer=chuk

## Build the application
# Create a directory /app cd into /app
WORKDIR /app

# In /app, copy files into the container
#COPY package-lock.json .
#COPY package.json .
COPY package*.json .
COPY main.js .

COPY public public
COPY views views

# Install dependencies
RUN npm ci 

## How to run the application
ENV APP_PORT=3000

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
   CMD curl http://localhost:${APP_PORT}/health

# what port to expose
EXPOSE ${APP_PORT}

# command to run the application
ENTRYPOINT node main.js
#ENTRYPOINT [ "node", "main.js" ]