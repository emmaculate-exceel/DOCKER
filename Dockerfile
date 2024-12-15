# Use the official Node.js image from the Docker Hub
FROM node:16-slim

# Set the working directory in the container
WORKDIR /app

# Copy the server.js file into the container
COPY server.js /app/

# Install any dependencies (if you have any, here we don’t need extra ones)
# RUN npm install

# Expose the port (8080) that the server will listen on
EXPOSE 8080 8000

# Run the server script when the container starts
CMD ["node", "server.js"]
