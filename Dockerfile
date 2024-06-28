FROM python:3.10

ENV DATABASE_URL="sqlite:////app/var/ccbv.sqlite"

COPY ./ccbv /app/src
RUN mkdir -p /app/var

WORKDIR /app/src
RUN pip3 install -U pip pip-tools \
    && pip-sync requirements.prod.txt requirements.dev.txt

RUN python3 manage.py collectstatic

CMD python3 manage.py runserver 0.0.0.0:8000
