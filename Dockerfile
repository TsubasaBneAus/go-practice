FROM golang:1.21.4-alpine

WORKDIR /app

COPY src .

WORKDIR /app/src
RUN go mod download

CMD ["go", "run", "main.go"]