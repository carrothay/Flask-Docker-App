# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# install the dependencies and packages in the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# If you want to service to be available outside of the container you must listen to correct ips.
CMD flask run -h 0.0.0.0 -p 5000`