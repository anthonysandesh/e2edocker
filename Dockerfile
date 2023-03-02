FROM python:3.7

COPY . /app

WORKDIR /e2edocker

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

#EXPOSE $PORT
#CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app

CMD gunicorn -w 4 -b 0.0.0.0 app:app
