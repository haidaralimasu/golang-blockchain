FROM golang:1.16-alpine

WORKDIR /blockchain

COPY go.mod /blockchain/
COPY go.sum /blockchain/

COPY . /blockchain/

RUN mkdir tmp
RUN mkdir tmp/blocks

RUN go mod tidy

RUN go run main.go printusage
