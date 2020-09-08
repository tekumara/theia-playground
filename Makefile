.PHONY: browser
browser: examples/browser/src-gen
	cd examples/browser && yarn start

examples/browser/lib examples/browser/src-gen: examples/browser/package.json
	cd examples/browser && yarn
	touch examples/browser/lib && examples/browser/src-gen

.PHONY: theia-python
theia-python: theia-python/src-gen theia-python/plugins
	cd theia-python && yarn start

theia-python/lib theia-python/src-gen: theia-python/package.json
	cd theia-python && yarn
	touch theia-python/lib && touch theia-python/src-gen

theia-python/plugins: theia-python/package.json
	cd theia-python && yarn run theia download:plugins
	touch theia-python/plugins
