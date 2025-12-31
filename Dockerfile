FROM gitlab/gitlab-runner:alpine

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then ARCH="arm64"; else ARCH="amd64"; fi && \
    curl -L https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/0.11.0/linux-${ARCH}/docker-credential-ecr-login -o /usr/local/bin/docker-credential-ecr-login
RUN chmod +x /usr/local/bin/docker-credential-ecr-login
