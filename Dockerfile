FROM python:3.6-alpine

MAINTAINER gregkoul@gmail.com

COPY webapp-flask-intro/. /opt/

WORKDIR /opt

RUN pip install -r requirements.txt

VOLUME /opt/

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]
