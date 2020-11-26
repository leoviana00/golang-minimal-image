FROM golang

ENV APP_NAME code 
ENV PORT 8080
COPY . /go/src/${APP_NAME}
WORKDIR /go/src/${APP_NAME}
#RUN go get ./
RUN go build -o ${APP_NAME}
CMD ./${APP_NAME}
EXPOSE ${PORT}