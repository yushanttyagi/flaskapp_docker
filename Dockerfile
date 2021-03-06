#this is  a temporary container
FROM alpine:latest

RUN apk add py3-pip		

RUN apk add --no-cache python3-dev && pip3 install --upgrade pip

COPY . /appi

WORKDIR /appi
			
RUN pip3 --no-cache-dir install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python3" ]
CMD [ "empl.py" ]
