FROM gitlab/gitlab-runner:alpine

RUN wget -nv -q https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/0.4.0/linux-amd64/docker-credential-ecr-login -O /usr/local/bin/docker-credential-ecr-login && chmod +x /usr/local/bin/docker-credential-ecr-login
