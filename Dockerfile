FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl jq entr
WORKDIR /exercises
COPY ./exercises/. /exercises
EXPOSE 4000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | bash -s