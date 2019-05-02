ID=14

API="http://localhost:3000"
URL_PATH="/options/${ID}"

curl "${API}${URL_PATH}" \
  --include \
  --request DELETE

echo
