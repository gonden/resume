# Flask Resume Web App

This README file provides an overview of the Flask Resume Web App, which is a simple web application for displaying 
a resume based on data loaded from a YAML file. The application uses the Flask web framework and serves a web page with the resume information.
Below, you'll find information on how to set up, use, and customize the application.


## Prerequisites

Before you can run the Flask Resume Web App, make sure you have the following prerequisites installed on your system:

- Python 3.x
- Flask (install via `pip install Flask`)
- PyYAML (install via `pip install PyYAML`)

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/flask-resume-web-app.git

Navigate to the project directory:

   ```bash
   cd flask-resume-web-app


Place your resume data in a YAML file named temp.yml within the project directory. You can use the provided temp.yml file as a template and replace the content with your own resume information.

Customize the HTML template in the templates/resume.html file to match your preferred resume layout and design (see Customization below).

Run the Flask app:

   ```bash
    python app.py

Open a web browser and go to http://localhost:8000 to view your resume.

Project Structure

The project structure is organized as follows:


flask-resume-web-app/
│
├── app.py                 # The Flask application
├── temp.yml               # YAML file containing resume data
├── templates/
│   └── resume.html        # HTML template for displaying the resume
└── static/
    └── dennis.jpg         # Your profile picture (replace with your own)

Customization
Resume Data (temp.yml)

Edit the temp.yml file to provide your resume data. Replace the existing data with your personal information, skills, work experience, education, etc.
Resume Template (templates/resume.html)

Customize the resume.html template to change the appearance and layout of your resume. You can modify the HTML and CSS as needed. You may also want to replace the profile picture (static/dennis.jpg) with your own image.


To create a Docker image for your Flask Resume Web App, you can use a Dockerfile. Here's a simple Dockerfile that you can use:

Dockerfile

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

Make sure to place this Dockerfile in the root directory of your project alongside the other files.

Here's a breakdown of what this Dockerfile does:

    It starts from an official Python 3.8 image.
    Sets the working directory to /app in the container.
    Copies the contents of your current directory (including your Flask app files) into the /app directory in the container.
    Installs the Python packages specified in your requirements.txt file.
    Exposes port 8000, which is the port your Flask app is running on.
    Sets the FLASK_APP environment variable to app.py.
    Defines the command to run the Flask application using flask run, listening on all available interfaces (0.0.0.0) and port 8000.

To build a Docker image from this Dockerfile, navigate to the directory containing the Dockerfile and run the following command:

bash

docker build -t flask-resume-app .

This command will build a Docker image named flask-resume-app.

Once the image is built, you can run a container using the following command, mapping port 8000 on your host to port 8000 in the container:

bash

docker run -p 8000:8000 flask-resume-app

Your Flask Resume Web App should now be accessible at http://localhost:8000 in your web browser, running within a Docker container.
