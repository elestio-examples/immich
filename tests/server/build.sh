cp -r ./server/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-server:latest | docker load