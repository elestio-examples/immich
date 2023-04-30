# #set env vars
# set -o allexport; source .env; set +o allexport;

# #wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 60s;

target=$(docker-compose port immich-proxy 8080)
curl https://${target}/api/auth/admin-sign-up \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
  -H 'content-type: application/json' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36' \
  --data-raw '{"email":"'${ADMIN_EMAIL}'","password":"'${ADMIN_PASSWORD}'","firstName":"Admin","lastName":"Admin"}' \
  --compressed


