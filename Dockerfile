FROM python:3.6-alpine

MAINTAINER gregkoul@gmail.com

RUN pip install flask flask-sqlalchemy

COPY webapp-flask-intro/. /opt/

EXPOSE 5000

VOLUME /opt/

WORKDIR /opt

ENTRYPOINT ["python"]

CMD ["app.py"]
