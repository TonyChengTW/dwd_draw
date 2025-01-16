FROM node:18-alpine

WORKDIR /app

# Copy package and lock files first
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the files
COPY . .

# Build the project
RUN yarn run build:prod

# Use a minimal server like serve
RUN yarn global add serve

# Expose the port and set CMD
EXPOSE 8080
CMD ["serve", "-s", ".", "-l", "8080"]
