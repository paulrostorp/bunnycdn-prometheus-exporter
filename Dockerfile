FROM golang:alpine as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o bunnycdn_exporter

FROM golang:alpine
WORKDIR /bin

COPY --from=builder /app/bunnycdn_exporter ./

ENTRYPOINT ["/bin/bunnycdn_exporter"]
EXPOSE     9584
