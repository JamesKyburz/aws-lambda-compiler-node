# aws lambda compiler for node

Make sure all modules are compatible for node aws lambda (6.10.3 or 8.10.0)
installs in a aws linux environment using a docker container.

<a href="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh?autoplay=1&speed=3&size=small&preload=1"><img src="https://asciinema.org/a/45cCXXLbOLQedFAv9ZvUVekhh.png" width="380"/></a>

## 6.10.3

```sh
docker pull jameskyburz/aws-lambda-compiler-node
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && cd /src && npm i && node-prune"
```

## 8.10.0

```sh
docker pull jameskyburz/aws-lambda-compiler-node
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && nvm use 8.10 && cd /src && npm i && node-prune"
```

# license

[Apache License, Version 2.0](LICENSE)

