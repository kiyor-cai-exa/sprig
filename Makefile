.PHONY: test
test:
	@echo "==> Running tests"
	GO111MODULE=on go test -v

.PHONY: test-cover
test-cover:
	@echo "==> Running Tests with coverage"
	GO111MODULE=on go test -cover .

VERSION := $(shell cat VERSION)
release:
	git tag -a $(VERSION) -m "release" || true
	git push origin master --tags
.PHONY: release
