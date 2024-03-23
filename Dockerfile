# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose the port your server listens on (e.g., 3000)
EXPOSE 3000

# Define the command to run your server (e.g., npm start)
CMD ["npm", "start"]
