# Use a lightweight official Python image as a base
FROM python:3.13-slim

# Set a working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container
COPY . /app

# Expose the port that Streamlit will run on
EXPOSE 8501

# Define the command to run the application
# --server.port sets the port, and --server.address=0.0.0.0 makes it accessible from outside the container
CMD ["streamlit", "run", "medibot.py", "--server.port=8501", "--server.address=0.0.0.0"]