FROM alpine:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apk add --no-cache go
RUN go version
RUN go build -o main .
CMD ["/app/main"]