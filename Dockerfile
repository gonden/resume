# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Define environment variable
ENV FLASK_APP app.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
