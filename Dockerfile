FROM continuumio/miniconda
LABEL Maintainer="naveen.kr.sh1993@gmail.com"
# RUN apt-get update -y
# RUN apt-get install -y build-essential git libjpeg-dev python3 python3-pip python3-virtualenv

ENTRYPOINT [ "/bin/bash", "-c" ]

COPY environment.yml /tmp/environment.yml
WORKDIR /tmp
RUN [ "conda", "env", "create", "-n","myenv"]

COPY . /app
WORKDIR /app/src

CMD [ " source activate myenv && exec python app.py" ]

# RUN conda create -n py352 python=3.5.2 anaconda
# RUN /bin/bash -c "source activate py352  && python -version"

#RUN conda env list



#RUN virtualenv -p python3 app
#RUN source app/bin/activate



#RUN pip install Flask

# ENTRYPOINT ["python"]
# CMD ["app.py"]