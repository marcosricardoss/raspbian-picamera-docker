FROM raspbian/fpixel

USER root
RUN apt-get update 
RUN apt-get install -y python3-pip
RUN apt-get install -y libraspberrypi-bin

WORKDIR /usr/src/app

ADD requirements.txt ./requirements.txt
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt 