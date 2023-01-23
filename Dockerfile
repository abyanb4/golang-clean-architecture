FROM --platform=linux/amd64 golang:1.17
USER root

ENV FILE_LOC=./.dev/.air.toml

RUN echo ${FILE_LOC}

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . .

RUN curl -flo install.sh  https://raw.githubusercontent.com/cosmtrek/air/master/install.sh \
    && chmod +x install.sh && sh install.sh && cp ./bin/air /bin/air

# RUN go build -o /golang-clean-architecture

# CMD [ "/golang-clean-architecture"]
# CMD ["air", "-c", "./.dev/.air.toml"]


CMD air -c $FILE_LOC