DOCKERFILE =$(shell bash .scripts/find_difs.sh)

build_image:
	@if [ "$(DOCKERFILE)" != "" ]; then\
		DOCKERFILE=$(DOCKERFILE) $(DOCKERFILE)/build.sh;\
	fi

push_image:
	@if [ "$(DOCKERFILE)" != "" ]; then\
			DOCKERFILE=$(DOCKERFILE) $(DOCKERFILE)/push.sh;\
	fi
