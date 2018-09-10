docker run -d -p 8080:8080 -e SA_LOGIC_API_URL='http://<container_ip or docker machine ip>:5000' $DOCKER_USER_ID/sentiment-analysis-web-app  
Native docker support needs the Container IP
CONTAINER_IP: To forward messages to the sa-logic container we need to get its IP. To do so execute:

$ docker container list

Copy the id of sa-logic container and execute:

$ docker inspect <container_id>

The Containers IP address is found under the property NetworkSettings.IPAddress, use it in the RUN command.

docker inspect b25bd1f956de | grep IPAddress

Docker Machine on a VM
Get Docker Machine IP by executing:

$ docker-machine ip


