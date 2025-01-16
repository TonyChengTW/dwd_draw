# Use a Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock first to leverage Docker caching
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the project
RUN yarn run build:prod

# Expose the port your app will run on
EXPOSE 8080

# Start the server using serve
CMD ["npx", "serve", ".", "-l", "8080"]