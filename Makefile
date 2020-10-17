MAKEFLAGS += --warn-undefined-variables
SHELL = /bin/bash -o pipefail
.DEFAULT_GOAL := help

## display help message
help:
	@awk '/^##.*$$/,/^[~\/\.0-9a-zA-Z_-]+:/' $(MAKEFILE_LIST) | awk '!(NR%2){print $$0p}{p=$$0}' | awk 'BEGIN {FS = ":.*?##"}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' | sort


.PHONY: browser
## browser example from the theia repo with no plugins
browser: examples/browser/src-gen
	cd examples/browser && yarn start

examples/browser/lib examples/browser/src-gen: examples/browser/package.json
	cd examples/browser && yarn
	touch examples/browser/lib && touch examples/browser/src-gen

.PHONY: theia-python
## theia-python
theia-python: theia-python/src-gen theia-python/plugins
	cd theia-python && yarn start

theia-python/lib theia-python/src-gen: theia-python/package.json
	cd theia-python && yarn
	touch theia-python/lib && touch theia-python/src-gen

theia-python/plugins: theia-python/package.json
	cd theia-python && yarn run theia download:plugins
	touch theia-python/plugins
