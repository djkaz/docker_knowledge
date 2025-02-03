# Use a Node.js base image
FROM node:16-alpine

# Create a non-root user and group
RUN addgroup -S myuser && adduser -S -G myuser myuser

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application listens on (e.g., 80 for a web server)
EXPOSE 80

# Start the application.  Adjust the command if needed (e.g., npm start, node index.js)
CMD ["npm", "start"] 
# or if your start command is different
# CMD ["node", "index.js"] or any other command
