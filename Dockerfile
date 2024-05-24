# syntax=docker/dockerfile:1

# base image -> step1
FROM python:3.8-slim-buster

# where do i need to run my code -> step 2
WORKDIR /python-docker

# code the code that i have written inside the container
COPY requirements.txt requirements.txt

# run my code
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# build an image for my need basis a base image
# run the docker container based on the image i created
# Process of creating an image is called building an image -> 
# Running a container