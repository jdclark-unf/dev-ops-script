# Basic Workflow
* Install docker on your desired machine, for learning probably going to be a free tier ec2
* Create an image `docker build -t image-name .`
    - This will build the image using a dockerfile from your current directory and tag it with a name of your choosing
* Run a container from the image `docker run -d -p 3000:3000 image-name`
    - the -d flag runs it as detached from your console, the -p flag ties the host computer port to the docker container port
# Other Useful Commands
* `docker images`
    - List all created images
* `docker ps`
    - List all running containers
* `docker rmi [image-id] -f`
    - You only need to specify enough of the image id to uniquely identify the image
* `docker tag image-name another-alias`
    - Create another alias for your image
* `docker stop`
    - Stop a running container
* `docker rm`
    - Remove a vontainer