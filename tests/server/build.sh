rm -f package-lock.json .gitignore LICENSE .editorconfig .gitattributes .gitmodules CODE_OF_CONDUCT.md Makefile install.sh localizely.yml package-lock.json renovate.json
rm -rf .git cli design docker docs fastlane machine-learning misc mobile nginx web
cp -rf ./server/* ./
docker buildx build . --output type=docker,name=elestio4test/immich-server:latest | docker load