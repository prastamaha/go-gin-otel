FROM golang:1.18

WORKDIR /app/

COPY . .

RUN go mod download

RUN CGO_ENABLED=1 go build -o main main.go

EXPOSE 8090

CMD ["/app/main"]
