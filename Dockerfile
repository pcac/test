FROM golang:1.10.2-alpine3.7
COPY app.go favicon.ico /go/
RUN go build app.go \
 && rm -fv app.go favicon.ico
CMD ./app
