#!/usr/bin/env bash

COMMAND=$1

case "${COMMAND}" in
    *)
        /code/manage.py migrate
        /code/manage.py runserver 0.0.0.0:8000
esac
