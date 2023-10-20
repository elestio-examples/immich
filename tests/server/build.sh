rm package-lock.json
rm LICENSE
rm .gitignore
cp -rf ./server/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-server:latest | docker load