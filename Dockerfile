# Use the official Node.js 18 image
FROM node:20-alpine

# starts working directory to this path
WORKDIR /usr/app

# Copy only package json only
COPY ./package.json ./
# Install dependency
RUN npm install
# Copy all other files
COPY ./ ./

# Install dependency
RUN npm install

# Default command
CMD ["npm", "run", "dev"]