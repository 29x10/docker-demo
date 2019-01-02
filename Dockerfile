FROM golang:1.11.4-alpine3.8

RUN apk --update add git openssh && \
rm -rf /var/lib/apt/lists/* && \
rm /var/cache/apk/*

WORKDIR /go/src/app
COPY app.go .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]