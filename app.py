import yaml
from flask import Flask, render_template

app = Flask(__name__)

# Load data from the YAML file
def load_resume_data():
    with open('temp.yml', 'r') as yaml_file:
        data = yaml.safe_load(yaml_file)
    return data.get('resume_data', {})

@app.route('/')
def index():
    data = load_resume_data()
    return render_template('resume.html', **data)

if __name__ == '__main__':
    app.run(debug=True, port=8000)
 

