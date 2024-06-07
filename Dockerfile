FROM python:3.7.3-stretch
ADD . /python-flask
WORKDIR /python-flask
RUN pip install -r requirements.txt
CMD [ "python", "./app.py" ]
