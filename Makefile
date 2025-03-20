help:; @awk 'BEGIN {FS = ":.*##"; max = 0; } !/^help:.*?#/ && /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { if (length($$1) > max) max = length($$1); } END { print max; }' $(MAKEFILE_LIST) | xargs -I {} awk 'BEGIN {FS = ":.*##"; printfmt = "  \x1b[32;1m%-" {} "s\x1b[0m %s\n"; } !/^help:.*?#/ && /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf printfmt, $$1, $$2 } /^##@/ { printf "\n\x1b[1m%s\x1b[0m\n", substr($$0, 5) }' $(MAKEFILE_LIST)

IMAGE_NAME := osp2-a51
PLATFORM := linux/amd64

.PHONY: build
create-image: ## Build the Docker image
	@docker image inspect $(IMAGE_NAME) > /dev/null 2>&1 || \
		docker build --platform $(PLATFORM) -t $(IMAGE_NAME) .

pk3: ## Build the pk3 file
	@$(MAKE) create-image
	@docker run --platform $(PLATFORM) --rm -v .:/workdir $(IMAGE_NAME) sh -c \
		"cd build/linux-qvm && \
		make dirs && \
		make -j $$(nproc) vm/cgame.qvm && \
		7z u -tzip -mx=9 -mpass=8 -mfb=255 -x!*.DS_Store -- zzz-a51-osp2.pk3 vm/cgame.qvm ../../assets/*"

clean: ## Remove the build files
	@cd build/linux-qvm && rm -rf *.pk3 vm/ ../cgame/*.asm ../game/*.asm ../ui/*.asm
