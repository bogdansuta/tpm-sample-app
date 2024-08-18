FROM python:latest
LABEL authors="bobo"

COPY sample /code

WORKDIR /code

ENTRYPOINT ["manage.py", "runserver"]