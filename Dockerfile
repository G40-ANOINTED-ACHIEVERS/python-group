FROM python:3.12.0b1-alpine3.18

ADD requirements.txt /

RUN pip install -r requirements.txt

ADD app.py /

ADD templates /templates

CMD [ "python", "./app.py" ]