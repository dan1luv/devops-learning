FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip curl

RUN pip3 install certifi --break-system-packages

WORKDIR /app

COPY week-02/check_sites.py .

CMD ["python3", "check_sites.py"]
