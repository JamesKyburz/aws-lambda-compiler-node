# aws lambda compiler for node

AWS Lambda [runtime](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) used to install your modules.

Make sure all modules are compatible for node aws lambda (10.x or 12.x)
installs in a aws linux environment using a docker container.

<a href="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh?autoplay=1&speed=3&size=small&preload=1"><img src="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh.png" width="380"/></a>

## amazon linux version 1

```sh
docker pull jameskyburz/aws-lambda-compiler-node:2018.03.0.20190212
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && nvm use 8.10 && cd /src && npm i && node-prune"
```

## amazon linux version 2

```sh
docker pull jameskyburz/aws-lambda-compiler-node:2.0.20190228
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && nvm use 8.10 && cd /src && npm i && node-prune"
```

# license

[Apache License, Version 2.0](LICENSE)

