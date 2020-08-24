SOURCE=Dockerfile
IMAGE=ignite/ubuntuvm:latest
CONTAINER=ubuntu-vm

SSH_DIR=~/.ssh
TRUE_INVENTORY=~/config/conoha_vps/inventory
CONTAINER_INVENTORY=/playbook/inventory

# build container
image: Dockerfile
	docker image build -f ${SOURCE} -t ${IMAGE} .

# create new container and login to the shell
shell:
	docker container run -it --rm \
		-v ${PWD}/playbook:/playbook \
		-v ${SSH_DIR}:/tmp/.ssh \
		-v ${TRUE_INVENTORY}:${CONTAINER_INVENTORY} \
		${IMAGE} bash -c "cp -r /tmp/.ssh ~/.ssh && bash"

# clean up all stopped containers
clean:
	docker container prune

# delete all image
doomsday:
	docker image rm `docker image ls -q`
