FROM node:lts-alpine

# Install build dependencies
RUN apk add --no-cache python3 g++ make

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app's code
COPY . .

# Expose the app port (change as needed)
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]
