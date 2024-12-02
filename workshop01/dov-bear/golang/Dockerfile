# build container
FROM golang:1.23-alpine3.20 AS gobuilder

WORKDIR /src

COPY go.* .
COPY main.go .

# /src/main
RUN go build -o main main.go

# Create the run container
FROM alpine:3.20

WORKDIR /app

# copying from gobuilder:/src/main /app/main
COPY --from=gobuilder /src/main main
COPY public public
COPY templates templates

ENV PORT=3000

EXPOSE ${PORT}

ENTRYPOINT [ "/app/main" ]

CMD []