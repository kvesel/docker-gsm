.PHONY: all build

all: build

build:
	docker build --tag ${USER}/gr-gsm .
