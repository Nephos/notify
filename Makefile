all: build

run:
	crystal run src/Notify.cr
build:
	crystal build src/Notify.cr --stats
release:
	crystal build src/Notify.cr --stats --release
test:
	crystal spec
install:
	crystal deps install
update:
	crystal deps update
doc:
	crystal docs

.PHONY: all run build release test install update doc
