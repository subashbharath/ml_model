# syntax=docker/dockerfile:1
FROM python:3.6-slim-buster
WORKDIR /ml_model
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
COPY . /ml_model
EXPOSE 5000
CMD [ "python","-m","flask","run","--host=0.0.0.0"]

