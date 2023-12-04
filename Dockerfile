# Use the official Alpine Linux base image
FROM python:latest

RUN pip install httpx
RUN pip install python-dateutil
RUN pip install openpyxl
RUN pip install tweety-ns


ENV xu=feed@migcrz.com
ENV xp=P@ssw0rd1234
ENV xe=ijx3djq8

# Set the working directory inside the container (optional)
WORKDIR /app

# Copy your application files into the container
COPY . /app

# Expose any necessary ports (optional)
# EXPOSE 80

# Define any default command to run when the container starts
CMD ["tail", "-f", "/dev/null"]
