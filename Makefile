.PHONY: init generate lint breaking clean

init:
	@which buf > /dev/null 2>&1 && echo "buf is already installed" || { \
		echo "Installing buf..."; \
		go install github.com/bufbuild/buf/cmd/buf@latest; \
	}

generate:
	buf generate

lint:
	buf lint

breaking:
	buf breaking --against '.git#branch=main'

clean:
	rm -rf gen
