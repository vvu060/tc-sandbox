FROM alpine:latest
RUN apk add --no-cache curl bash jq
WORKDIR /app
COPY ./app/. /app
EXPOSE 8000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | bash -s && \
    echo 'export PATH="$HOME/.tailcall/bin:$PATH"' >> ~/.bash_profile
CMD /bin/bash -c "source ~/.bash_profile"