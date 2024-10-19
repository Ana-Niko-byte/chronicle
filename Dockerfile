FROM python:3.13.0-bullseye

ENV PYTHONUNBUFFERED=1

WORKDIR /backend

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:8000