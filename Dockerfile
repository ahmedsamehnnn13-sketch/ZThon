FROM python:3.9-slim-buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    git \
    curl \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ahmedsamehnnn13-sketch/ZThon.git /root/zthon
WORKDIR /root/zthon

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "-m", "zedthon"]
