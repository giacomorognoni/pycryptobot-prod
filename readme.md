# Python Crypto Bot - GR Instantiation

## Overview

A custom instantiation of the pycrypto bot project. The pycrypto bot project is a bot capable of transaction on various crypto exchanges applying various trading buy/sell strategies.

## Project Description

The project includes the following directories:

### .gitub/workflows

Used to define the git actions when changes are pushed to master. In this case, the git actions connect to AWS ECR, build and push the image to the relevant repository, to be picked up by the relevant ECS service generated through terraform.

### Market/[market strategy]

Configuration file for the relevant market strategy, in this case only includes:

* coinbase.key: to connect to coinbase account for trading
* config.json: to define configuration with crypto exchange

### Models

Folder containing all pycryptobot trading models (predefined by project creators), allow the possibility of including additional strategies as required by the user.

### Tests

Folder containing unit and functional tests for the project, currently empty.

### docker-compose.yml and Dockerfile

Used to build the docker image and run the pycryptobot from the CMD line.

### pycryptobot.py

Main script and client for the pycryptobot project, used to instantiate and run the bot according to the chosen config.

### requirements.txt

Dependencies required for the project.