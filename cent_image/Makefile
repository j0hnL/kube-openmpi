KUBE_OPENMPI_VERSION ?= 0.5
REPOSITORY ?= centos/7

#OPENMPI_VERSION ?= 2.1.2
OPENMPI_VERSION ?= 1.10.7

# Args for SSH Uer embedded in container images
SSH_USER ?= openmpi
SSH_UID ?= 1000
SSH_GID ?= 1000

# Args for Base Image
CENTOS_REPOSITORY ?= centos
CENTOS_TAG ?= 7
CENTOS_IMAGE ?= $(REPOSITORY):$(OPENMPI_VERSION)-$(CENTOS_TAG)-$(KUBE_OPENMPI_VERSION)
CENTOS_ALIAS ?= $(REPOSITORY):$(KUBE_OPENMPI_VERSION)

.PHONY: build
build: ubuntu_image 

ubuntu_image:
	docker build \
		--build-arg WITH_CUDA="false" \
		--build-arg SSH_USER=$(SSH_USER) \
		--build-arg SSH_UID=$(SSH_UID) \
		--build-arg SSH_GID=$(SSH_GID) \
		-t $(CENTOS_IMAGE) \
		.
		#. && \
		#docker tag jlockman:centIB jlockman:0.7.1
		#docker tag $(CENTOS_IMAGE) $(CENTOS_ALIAS)

#publish:
	#docker push $(CENTOS_IMAGE) && docker push $(CENTOS_ALIAS)
