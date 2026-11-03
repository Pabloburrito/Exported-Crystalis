# Use a lightweight Node.js image
FROM node:20-alpine

# Install serve globally
RUN npm install -g serve

# Set working directory
WORKDIR /app

# Copy your built files into the container
COPY . .

# Start the static server
CMD ["serve", "-l", "3000"]
