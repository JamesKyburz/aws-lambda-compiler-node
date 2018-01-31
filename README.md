# aws lambda compiler for node

```sh
docker pull jameskyburz/aws-lambda-compiler-node
docker run --rm -v $(PWD)/src/test:/src aws-lambda-compiler-node \
  sh -c ". /root/.nvm/nvm.sh && cd /src && npm i && node-prune"
```

# license

[Apache License, Version 2.0](LICENSE)

