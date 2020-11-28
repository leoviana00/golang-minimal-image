FROM golang:1.15

ENV APP_NAME app
ENV PORT 8080
COPY . /go/src/${APP_NAME}
WORKDIR /go/src/${APP_NAME}
RUN go get ./
RUN go build -o ${APP_NAME}
CMD ["./app"]
EXPOSE ${PORT}