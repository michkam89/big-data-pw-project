FROM linuxserver/code-server:4.9.1

RUN apt-get update \
  && apt-get install -y python3-dev python3-venv python3-pip default-jdk


#USER abc

#COPY requirements.txt .

#RUN python3 -m venv .venv

#RUN python3 -m pip install -r requirements.txt

#USER root
