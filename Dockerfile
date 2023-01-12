FROM python:3.9-slim-buster

ENV APP_ROOT /usr/src

WORKDIR $APP_ROOT

ADD requirements.txt .

RUN apt-get update
RUN apt-get -y install vim curl

RUN pip install --no-cache-dir --upgrade pip
RUN apt-get -y install gcc && pip install --no-cache-dir -r requirements.txt && apt-get -y purge gcc

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]