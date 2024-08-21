FROM python:latest
LABEL authors="bobo"

COPY requirements.txt entrypoint.sh cacert.crt /

RUN pip install -U pip && \
    pip install -r /requirements.txt && \
    cat cacert.crt >> /usr/local/lib/python3.12/site-packages/certifi/cacert.pem && \
    rm -rf /requirements.txt /cacert.crt

COPY sample /code

WORKDIR /code

ENTRYPOINT ["/entrypoint.sh"]