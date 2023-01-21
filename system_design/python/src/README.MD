https://www.youtube.com/watch?v=hmkF77F9TLw
Install the following
    Docker
    minikube
    Brew install k9s
    Python3 
    brew install mysql
        brew services restart mysql
        mysql -u root
Python venv 
    location: /system_design/python/src/auth/venv
    install 
        pip3 install pylint, jedi, jwt, flask, flask_mysqldb
Create USER table in the database - init.sql
DROP USER failed for 'auth_user'@'localhost'
Create JWT autentication / autorization for login
Create Dockerfile
Create the image and push to a registry in docker hub
    docker build .
    docker tag 718aac28a6e939b78048b2ee5a5786acdc6cd26f20abaa9b56e0bd3d1d416487 saifb/auth:latest
    docker login - sbt4
    docker push saifb/auth:latest
Create the kubernetes mainifest folder and yaml files

minikube addons enable ingress
minikube tunnel
With the rabbitMQ pod running log in with guest/guest

127.0.0.1	mp3converter.com
127.0.0.1       rabbitmq-manager.com

Testing:
curl -X POST http://mp3converter.com/login -u saifbiobaku@slb.com:testing1234
This returns a token

Use the token to upload the video.

kubectl logs mypod --all-containers
kubectl logs mypod -c mycontainer
kubectl get events


Debug
apt install net-tools netcat
netstat -tulpn
nc -vz host.minikube.internal 8000
