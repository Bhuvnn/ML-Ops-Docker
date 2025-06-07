# Using an official python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy all of the files (app.py,requirements.txt etc) in the local directory into /app (destination in docker container)
COPY . /app

# Install the needed packagees specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define Environment Variable
ENV FLASK_APP=app.py

# Run the flask app

CMD ["flask", "run", "--host=0.0.0.0"]

