FROM node:20

ENV NODE_ENV=production

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["node", "index.js"]

