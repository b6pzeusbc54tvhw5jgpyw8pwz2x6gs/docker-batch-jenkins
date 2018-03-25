FROM jenkinsci/blueocean:1.4.2

USER root

RUN apk update
RUN apk add python3 jq cargo

RUN pip3 install awscli
RUN curl -o /usr/local/bin/ecs https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs

USER jenkins

RUN cargo install ripgrep
RUN mv /var/jenkins_home/.cargo/bin/rg /usr/local/bin
RUN rm -rf /var/jenkins_home/.cargo

# /var/jenkins_home is defined as volume
