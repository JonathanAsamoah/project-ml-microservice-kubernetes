[![CircleCI](https://circleci.com/gh/JonathanAsamoah/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

## Project Overview

These projects include the deployment scripts to deploy a prediction algorithm in either a Docker or a Kubernetes environment.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Upload image to Docker Hub
# Set Docker Hub credentials
export dockerusername=
export dockerpassword=
# Upload image to Docker Hub
./upload_docker.sh

### Setup Docker environment
./run_docker.sh

### Setup Kubernetes environment
./run_kubernetes.sh  

### Make prediction
Run: make_prediction.sh

## File structure
.circleci           Configuration for CircleCI

model_data          Data for the prediction model

output_txt_files    Output of implementation

app.py              Prediction application

Dockerfile          Dockerfile

make_prediction.sh  Runs prediction in application

Makefile            Makefile configuration

Readme.md           Readme file

requirements.txt    Python dependencies

run_docker.sh       Start up Docker environment

run_kubernetes.sh   Start up Kubernetes environment

upload_docker.sh    Upload image to Docker Hub



