FROM ubuntu:latest
# RUN apt-get update && apt-get install -y curl bash jq
WORKDIR /app
COPY ./app/. /app
EXPOSE 8000
RUN curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | zsh -s && \
    echo 'export PATH="$HOME/.tailcall/bin:$PATH"' >> ~/.zshrc
CMD /bin/zsh -c "source ~/.zshrc && tc start /app/example.graphql"