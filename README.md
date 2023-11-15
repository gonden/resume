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
