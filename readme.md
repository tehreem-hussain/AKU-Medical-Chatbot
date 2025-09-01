Step 2: Create a Virtual Environment
It's highly recommended to use a virtual environment to isolate your project's dependencies from other Python projects.

python -m venv venv

This command creates a new directory named venv containing a fresh Python environment.

Step 4: Create the requirements.txt file
pip freeze > requirements.txt


Step 3: Activate the Virtual Environment

On Windows:

.\venv\Scripts\activate

.\venv\Scripts\pip.exe install -r requirements.txt



Step 4: Install Dependencies
With the virtual environment active, use pipenv to install all the required libraries from your Pipfile.lock.

pipenv install --system

The --system flag tells pipenv to install the packages into the active virtual environment, which is what we want.

Step 5: Run the Application
Now that all dependencies are installed, you can start your Streamlit application.

streamlit run medibot.py



Docker Setup
 pip freeze > requirements.txt
docker build -t medibot .