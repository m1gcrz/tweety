# Use the official Alpine Linux base image
FROM alpine:latest

# Set environment variables (optional)
ENV MY_VARIABLE=value

# Install necessary packages or dependencies
RUN apk update && \
    apk add --no-cache \
    package1 \
    package2 \
    && rm -rf /var/cache/apk/*

# Set the working directory inside the container (optional)
WORKDIR /app

# Copy your application files into the container
COPY . /app

# Expose any necessary ports (optional)
EXPOSE 80

# Define any default command to run when the container starts
CMD ["sh", "-c", "echo Hello, this is your Docker container!"]
