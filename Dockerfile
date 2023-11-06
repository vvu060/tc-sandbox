FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl jq entr
WORKDIR /app
COPY ./app/. /app
EXPOSE 3000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | bash -s