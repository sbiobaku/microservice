FROM python:3.10-slim-bullseye

RUN apt-get update \
&& apt-get install -y --no-install-recommends --no-install-suggests \
build-essential ffmpeg\
&& pip install --no-cache-dir --upgrade pip

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r  requirements.txt
COPY . .

CMD python3 consumer.py
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]