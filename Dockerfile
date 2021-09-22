FROM golang:1.16-alpine

WORKDIR /blockchain

COPY go.mod /blockchain/
COPY go.sum /blockchain/

COPY . /blockchain/

RUN go mod tidy

RUN go run main.go printusage

RUN echo Use exec command to intreact with Docker Image