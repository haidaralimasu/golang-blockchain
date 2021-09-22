FROM golang:1.16-alphine as base

FROM base as dev

WORKDIR /app

COPY . ./

RUN go mod tidy

RUN run main.go print