FROM node:bookworm-slim

# Set environment variable for production
ENV NODE_ENV=production

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json (if available)
COPY package*.json ./

RUN npm install 

# Copy the rest of the application code
COPY . .

EXPOSE 8080

# Command to run the application
CMD [ "node", "index.js" ]
