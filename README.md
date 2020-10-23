1. Open docker-compose.yml and change parameters

Example:
  
room_id: 35c192ce9be99b8e
listenport: 2020
forwardport: 22
forwardip: 192.168.1.1

2. To build a docker image open a console in this folder and type 'docker-compose -p YOUR_DOCKER_IMAGE_NAME build'

3. To run the docker image type 'docker-compose -p YOUR_DOCKER_IMAGE_NAME up'

You can also build an image and run it right away, type 'docker-compose -p YOUR_DOCKER_IMAGE_NAME up --build'.

If you change the parameters in the docker-compose.yml file, you must rebuild the docker image.

Please run the generated images via docker-compose and not via docker run.