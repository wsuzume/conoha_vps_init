SOURCE=Dockerfile
IMAGE=ignite/ubuntuvm:latest
CONTAINER=ubuntu-vm

SSH_KEY_OUTPUT=~/.ssh/id_ed25519_vps

# build container
image: Dockerfile
	docker image build -f ${SOURCE} -t ${IMAGE} .

# create new container and login to the shell
shell:
	docker container run -it --rm -v ${PWD}/workspace:/workspace ${IMAGE}

# clean up all stopped containers
clean:
	docker container prune

# delete all image
doomsday:
	docker image rm `docker image ls -q`

keygen:
	ssh-keygen -t ed25519 -f ${SSH_KEY_OUTPUT}
