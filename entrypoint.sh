#!/usr/bin/env bash

/code/manage.py migrate
/code/manage.py runserver 0.0.0.0:8000
