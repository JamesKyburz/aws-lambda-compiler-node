# aws lambda compiler for node

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

