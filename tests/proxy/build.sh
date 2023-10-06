cp -rf ./proxy/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-proxy:latest | docker load