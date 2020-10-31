FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /usr/src/build
WORKDIR /usr/src/build
RUN yes | apt-get install libmysqlclient-dev
COPY requirements.txt /usr/src/build
RUN pip install -r requirements.txt
COPY . /usr/src/build
