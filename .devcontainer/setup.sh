#!/bin/bash

sudo apt update && sudo apt install tree -y
pipenv install --dev
pipenv run pre-commit install
