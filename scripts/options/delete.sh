ID=4

# API="http://localhost:3000"
API="https://poll-booth-api.herokuapp.com"

URL_PATH="/options/${ID}"

curl "${API}${URL_PATH}" \
  --include \
  --request DELETE

echo
