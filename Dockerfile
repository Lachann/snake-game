FROM alpine:latest

COPY nosuchfile .

CMD ["echo", "Hello, World!"]
