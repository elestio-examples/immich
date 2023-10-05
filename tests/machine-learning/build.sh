cp -r ./machine-learning/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-machine-learning:latest | docker load