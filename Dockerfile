FROM Ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY panorbit /app
COPY static/js /app
COPY templates /app
COPY world /app
COPY manage.py /app
COPY world.sql /app

RUN apt-get install && \
    apt-get install -y python-3.7.2 python-pip mysql-8.0.15 && \
    pip install -r requirements.txt && \
    cd 
