ID=8

API="http://localhost:3000"
# API="https://poll-booth-api.herokuapp.com"

URL_PATH="/surveys/${ID}"

curl "${API}${URL_PATH}" \
  --include \
  --request DELETE

echo
