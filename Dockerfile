FROM golang:1.19-bullseye
WORKDIR /opt/app
COPY . .
RUN apt update
RUN apt install -y build-essential libpcap-dev
# RUN export GO111MODULE=on
# RUN export GOPROXY=https://goproxy.cn
RUN go build .
EXPOSE 10000
ENTRYPOINT [ "./ipxbox" ]
