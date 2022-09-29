FROM gitpod/workspace-go

USER root

RUN sudo apt update 
RUN sudo apt install -y protobuf-compiler

WORKDIR $GOPATH/grpc-poc

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

RUN export PATH="$PATH:$(go env GOPATH)/bin"

run go mod init