LOCALBIN = $(shell pwd)/bin
OS_ARCH = $(shell go env GOOS)-$(shell go env GOARCH)
BIN_HELM ?= $(LOCALBIN)/helm
HELM_VERSION := v3.13.0
HELM_URL := https://get.helm.sh/helm-$(HELM_VERSION)-$(OS_ARCH).tar.gz

.PHONY: lint
lint:  $(LOCALBIN) $(BIN_HELM)
	@$(BIN_HELM) lint multicluster-resiliency-addon

.PHONY: package
package: $(LOCALBIN) $(BIN_HELM)
	@$(BIN_HELM) package multicluster-resiliency-addon

.PHONY: test
test: $(LOCALBIN) $(BIN_HELM)
	@$(BIN_HELM) template multicluster-resiliency-addon > /dev/null

.PHONY: install
install: $(LOCALBIN) $(BIN_HELM)
	@$(BIN_HELM) install --generate-name multicluster-resiliency-addon

$(BIN_HELM):
	 curl -sSL "$(HELM_URL)" | tar xzf - -C $(LOCALBIN) --strip-components=1 --wildcards '*/helm'

$(LOCALBIN):
	mkdir -p $(LOCALBIN)
