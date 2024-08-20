FROM python:latest
LABEL authors="bobo"

COPY requirements.txt entrypoint.sh /

RUN pip install -U pip && \
    pip install -r /requirements.txt && \
    rm -rf /requirements.txt

COPY sample /code

WORKDIR /code

ENTRYPOINT ["/entrypoint.sh"]