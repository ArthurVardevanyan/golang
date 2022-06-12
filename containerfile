FROM registry.access.redhat.com/ubi9/go-toolset:1.17.7-14

WORKDIR /opt/app-root/src

COPY go.mod ./
COPY *.go ./

RUN go build main.go

EXPOSE 8080

CMD [ "./main" ]
