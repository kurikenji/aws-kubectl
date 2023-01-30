FROM alpine:3.14 as build
RUN apk --no-cache add aws-cli wget \
    && wget https://storage.googleapis.com/kubernetes-release/release/v1.25.0/bin/linux/arm64/kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

FROM alpine:3.14
COPY --from=build /usr/local/bin/kubectl /usr/local/bin/kubectl
