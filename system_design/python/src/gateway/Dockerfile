FROM python:3.10-slim-bullseye

RUN apt-get update \
&& apt-get install -y --no-install-recommends --no-install-suggests \
build-essential \
&& pip install --no-cache-dir --upgrade pip

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r  requirements.txt
COPY . .

EXPOSE 8080

CMD python3 server.py
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]