IMAGE = andreahsu7676/threestudio
# DATA = $(shell readlink -f data)
# SHMEM_SIZE = 32G

build:
	docker build . -t $(IMAGE) -f docker/Dockerfile

start:
	docker run --rm	-i -t \
		-v $(PWD):/threestudio \
		--gpus all \
		$(IMAGE)


# --shm-size $(SHMEM_SIZE) \