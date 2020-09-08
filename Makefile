.PHONY: browser
browser: examples/browser/lib plugins
	cd examples/browser && yarn start

examples/browser/lib examples/browser/src-gen: examples/browser/package.json
	cd examples/browser && yarn
	touch examples/browser/lib

