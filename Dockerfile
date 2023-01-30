FROM alpine:3.14
RUN apk --no-cache add aws-cli wget \
    && wget https://storage.googleapis.com/kubernetes-release/release/v1.25.0/bin/linux/arm64/kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && apk del wget
