#Getting a base image for our docker container
FROM ubuntu:latest

#Setting the working directory in our image
WORKDIR /app

#Copy the files from the local/source file system to the image file system [copying helloWorld and Dockerfile from local to working directory in our image]
COPY . /app

#Install the necessary packages required to run the application
RUN apt-get update -y && apt-get install -y python3 python3.pip

#Run a command to start the application
CMD ["python3", "helloWorld.py"]