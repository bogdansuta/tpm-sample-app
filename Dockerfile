FROM python:latest
LABEL authors="bobo"

COPY requirements.txt /

RUN pip install -U pip && \
    pip install -r /requirements.txt

COPY sample /code

WORKDIR /code

ENTRYPOINT ["/code/manage.py", "runserver", "0.0.0.0:8000"]