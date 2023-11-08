LOCALBIN = $(shell pwd)/bin
$(LOCALBIN):
	mkdir -p $(LOCALBIN)

OS_ARCH = $(shell go env GOOS)-$(shell go env GOARCH)

BIN_HELM ?= $(LOCALBIN)/helm
HELM_VERSION := v3.13.0
HELM_URL := https://get.helm.sh/helm-$(HELM_VERSION)-$(OS_ARCH).tar.gz


.PHONY: lint
lint:  $(LOCALBIN) $(BIN_HELM)
	@$(BIN_HELM) lint multicluster-resiliency-addon

$(BIN_HELM):
	 curl -sSL "$(HELM_URL)" | tar xzf - -C $(LOCALBIN) --strip-components=1 --wildcards '*/helm'
