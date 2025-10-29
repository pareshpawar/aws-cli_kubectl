FROM alpine/git:latest

# Install AWS CLI
RUN apk add --no-cache python3 py3-pip \
    && pip3 install awscli

# Install kubectl
RUN apk add --no-cache curl \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl
