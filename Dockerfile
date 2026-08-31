# Use Node.js 20 as the base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Build React application
RUN npm run build

# React development server port
EXPOSE 3000

# Allow access from outside the container
ENV HOST=0.0.0.0

# Start React application
CMD ["npm", "start"]
