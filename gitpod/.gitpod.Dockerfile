FROM gitpod/workspace-go

RUN sudo apt update 
RUN sudo apt install -y protobuf-compiler

WORKDIR $GOPATH/src/google.golang.org/grpc

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

RUN export PATH="$PATH:$(go env GOPATH)/bin"