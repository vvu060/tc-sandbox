FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl jq entr
WORKDIR /exercises
COPY ./exercises/. /exercises
RUN apt-get install -y entr
EXPOSE 4000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/master/install.sh | bash -s -- v0.16.0