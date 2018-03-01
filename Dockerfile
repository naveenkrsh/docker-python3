FROM continuumio/miniconda
LABEL Maintainer="naveen.kr.sh1993@gmail.com"

ENTRYPOINT [ "/bin/bash", "-c" ]

COPY environment.yml /tmp/environment.yml
WORKDIR /tmp
RUN [ "conda", "env", "create", "-n","myenv"]

COPY . /app
WORKDIR /app/src

CMD [ " source activate myenv && exec python app.py" ]
