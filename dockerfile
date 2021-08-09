FROM python:3.7

RUN pip install fastapi uvicorn

EXPOSE 80

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN pip install Rx==3.1.1
COPY ./app /app

RUN cd /app
COPY /app .

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]