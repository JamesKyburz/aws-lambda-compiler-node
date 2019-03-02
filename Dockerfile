FROM amazonlinux:2017.03.1.20170812

LABEL maintainer="James Kyburz james.kyburz@gmail.com"

RUN yum install -y git git-core tar gcc-c++ make zip

ENV GOPATH /root/.go
ENV GOROOT /usr/local/go
ENV PATH "/usr/local/go/bin:${PATH}"
ENV PATH "/root/.go/bin:${PATH}"
ENV NPM_CONFIG_LOGLEVEL warn

RUN \
  curl https://storage.googleapis.com/golang/go1.11.4.linux-amd64.tar.gz -o go.tar.gz && \
  tar -xzf go.tar.gz && \
  mv go /usr/local && \
  rm -rf go.tar.gz

RUN go get github.com/tj/node-prune/cmd/node-prune

RUN \
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash && \
  . /root/.nvm/nvm.sh && \
  nvm install 6.10.3 && \
  nvm install 8.10 && \
  nvm install 10.15 && \
  curl -o- -L https://yarnpkg.com/install.sh | bash && \
  /root/.yarn/bin/yarn global add npm@latest npx@latest && \
  rm -rf /root/.nvm/versions/node/v6.10*/lib/node_modules/npm && \
  rm -rf /root/.nvm/versions/node/v8.10*/lib/node_modules/npm && \
  rm -rf /root/.nvm/versions/node/v10.15*/lib/node_modules/npm && \
  rm -rf /root/.nvm/versions/node/v6.10*/lib/node_modules/npx && \
  rm -rf /root/.nvm/versions/node/v8.10*/lib/node_modules/npx && \
  rm -rf /root/.nvm/versions/node/v10.15*/lib/node_modules/npx && \
  npm config set audit false
