FROM python:3.7.3-stretch
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8099->80/tcp
ENTRYPOINT ["python","/app/app.py"]
