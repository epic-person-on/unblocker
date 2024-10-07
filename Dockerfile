FROM node:bookworm-slim

# Add a label for GitHub
LABEL org.opencontainers.image.description="A Dockerized version of the Unblocker proxy."

# Set environment variable for production
ENV NODE_ENV=production

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
