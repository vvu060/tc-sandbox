FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl jq
WORKDIR /app
COPY ./app/. /app
EXPOSE 8000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | bash -s && \
    echo 'export PATH="$HOME/.tailcall/bin:$PATH"' >> /root/.bashrc
CMD /bin/bash -c "source /root/.bashrc"