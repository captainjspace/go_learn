FROM golang:1.15 as build

# this is a builder docker file 
WORKDIR /go/src/app
ENV GOBIN $GOPATH/bin

COPY ./ ./

#RUN cd hello && go get -d -v ./... && go install -v ./... 
#RUN cd deferex && go get -d -v ./... && go install -v ./...
RUN bash -c "./in_docker_build.sh"

ENTRYPOINT ["./exec.sh"]
