cp -rf ./web/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-web:latest | docker load