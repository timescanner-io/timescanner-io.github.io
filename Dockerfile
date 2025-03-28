# Use Ruby slim image as a parent image
FROM ruby:3.2-slim

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential nodejs npm

# Set the working directory
WORKDIR /app

# Copy the application
COPY . .

RUN bundle install
RUN npm install --save-dev

RUN npm run watch:css

# Command to run when the container starts
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]