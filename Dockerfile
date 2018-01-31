FROM amazonlinux:2017.03.1.20170812

LABEL maintainer="James Kyburz james.kyburz@gmail.com"

RUN yum install -y git git-core tar

ENV GOPATH /root/.go
ENV GOROOT /usr/local/go
ENV PATH "/usr/local/go/bin:${PATH}"
ENV PATH "/root/.go/bin:${PATH}"
ENV NPM_CONFIG_LOGLEVEL warn

RUN \
  curl https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz -o go.tar.gz && \
  tar -xzf go.tar.gz && \
  mv go /usr/local && \
  rm -rf go.tar.gz

RUN go get github.com/tj/node-prune/cmd/node-prune

RUN \
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \
  . /root/.nvm/nvm.sh && \
  nvm install 6.10.3 && \
  npm i npm@latest
