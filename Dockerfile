FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app's source code to the working directory
COPY . .

# Exclude unnecessary files and folders using .dockerignore
# Create a file named ".dockerignore" in the same directory as the Dockerfile
# Add the following content to the .dockerignore file:
# .git
# node_modules

# Start the app
CMD [ "npm", "start" ]