APP := $(shell basename $(shell git remote get-url origin))
VERSION=$(shell git describe --tags --always)-$(shell git rev-parse --short HEAD)
REGISTRY=romanstripa
TARGETOS=linux
TARGETARCH=amd64

format: 
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

get:
	go get

build: format
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o telebot -ldflags "-X 'telebot/cmd.appVersion=${VERSION}'"

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}  --build-arg TARGETARCH=${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf telebot
	docker rmi ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}