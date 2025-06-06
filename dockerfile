# Using an official python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy all of the files (app.py,requirements.txt etc) in the local directory into /app
COPY ./app

# Install the needed packagees specified in requirements.txt
RUN pip install --no cache dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define Environment Variable
ENV FLASK_APP=app.python

# Run the flask app

CMD["flask","run","--host-0.0.0.0"]

