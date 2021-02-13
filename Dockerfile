FROM golang:1.15

WORKDIR /go/src/app
COPY ./ ./


RUN cd hello && go get -d -v ./... && go install -v ./... 




ENTRYPOINT ["./exec.sh"]
