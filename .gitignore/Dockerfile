FROM jenkinsci/blueocean:1.4.2

USER root

RUN apk update
RUN apk add python3 jq cargo
RUN cargo install ripgrep
RUN pip3 install awscli
RUN curl -o /usr/local/bin/ecs https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs
RUN chmod +x /usr/local/bin/ecs

ENV PATH "/root/.cargo/bin:$PATH"
RUN chmod +x `which rg`

USER jenkins
