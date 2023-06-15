### STAGE 1: Build ###
# Get the base node image
# Use the official Node.js v14.x image as the base image
FROM node:lts-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies from the package.json file
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application will listen on
EXPOSE 8080

# Start the application when the container starts
CMD ["npm", "start"]