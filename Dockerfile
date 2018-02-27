FROM ubuntu:xenial
LABEL Maintainer="naveen.kr.sh1993@gmail.com"
RUN apt-get update -y
RUN apt-get install -y build-essential git libjpeg-dev python3 python3-pip python3-virtualenv

COPY . /app

WORKDIR /app

#RUN virtualenv -p python3 app
#RUN source app/bin/activate

RUN pip3 install Flask

ENTRYPOINT ["python3"]
CMD ["app.py"]