
FROM golang:1.22.5-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o getBirdImage

FROM alpine

WORKDIR /app

COPY --from=builder /app/getBirdImage .

EXPOSE 4200

CMD ["./getBirdImage"]