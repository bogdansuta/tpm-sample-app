#!/usr/bin/env bash

COMMAND=$1

case "${COMMAND}" in
    *)
        echo "Running migrations"
        /code/manage.py migrate
        echo "Running server"
        /code/manage.py runserver 0.0.0.0:8000
esac
