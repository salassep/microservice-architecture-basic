# Get base image of node:14 from Docker Hub
FROM node:14.21.1-slim

# Set environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Create a new directory named app and set it as working directory
WORKDIR /app

# Copy all the files in the local working directory to the container working directory (/app)
COPY . .

# Run command to install the required dependencies
RUN npm install --production --unsafe-perm && npm run build

# Expose port on container
EXPOSE 8080

# Command execution when the image is run as a container
CMD ["npm", "start"]