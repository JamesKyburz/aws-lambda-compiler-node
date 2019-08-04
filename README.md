# aws lambda compiler for node

Make sure all modules are compatible for node aws lambda (6.10.3, 8.10.0 or 10.15)
installs in a aws linux environment using a docker container.

<a href="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh?autoplay=1&speed=3&size=small&preload=1"><img src="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh.png" width="380"/></a>

## amazon linux version 1

```sh
docker pull jameskyburz/aws-lambda-compiler-node:amazon-linux-1-1.0.1
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && nvm use 8.10 && cd /src && npm i && node-prune"
```

## amazon linux version 2

```sh
docker pull jameskyburz/aws-lambda-compiler-node:amazon-linux-2-1.0.1
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && nvm use 8.10 && cd /src && npm i && node-prune"
```

# license

[Apache License, Version 2.0](LICENSE)

