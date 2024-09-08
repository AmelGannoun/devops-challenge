FROM golang:1.22.5-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o getBird

FROM alpine

WORKDIR /app

COPY --from=builder /app/getBird .

EXPOSE 4201

CMD ["./getBird"]