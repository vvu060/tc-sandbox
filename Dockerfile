FROM node:latest
RUN apt-get update && apt-get install -y curl jq entr
WORKDIR /exercises
COPY ./exercises/. /exercises
EXPOSE 4000
RUN npm i -g @tailcallhq/tailcall