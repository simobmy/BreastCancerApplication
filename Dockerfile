FROM python:3.8.0
FROM ubuntu

RUN apt update
RUN apt install python3-pip -y

COPY './requirements.txt' .

RUN pip3 install -r requirements.txt


WORKDIR /user/src/app

COPY . .

CMD [ "python3" , "-m" ,"flask" , "run" , "--host=0.0.0.0" ]

