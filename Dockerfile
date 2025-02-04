# Use an official Node runtime as a parent image  

FROM node:latest 

# Set the working directory in the container

WORKDIR /app

# Copy the package.json and package-lock.json

Copy package*.json ./   

# Install the dependencies

RUN npm install 

# Copy the rest of the application code

COPY . .

# expose the port and runs on

EXPOSE 5173

CMD ["npm", "run","dev"]

