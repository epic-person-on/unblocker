FROM node:bookworm-slim

# Add a label for Github
LABEL org.opencontainers.image.description "A Dockerized version of the Unblocker proxy."

# Set environment variable for production
ENV NODE_ENV=production

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json (if available)
COPY package*.json ./

RUN npm install 

# Copy the rest of the application code
COPY . .

EXPOSE 80

# Command to run the application
CMD [ "sudo PORT=80 npm start" ]
