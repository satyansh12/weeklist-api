# Use an official Node runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source inside the docker image
COPY . .

# Your app binds to port 8000
EXPOSE 8000

# Define the command to run your app
CMD [ "node", "index.js" ]