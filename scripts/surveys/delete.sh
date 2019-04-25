ID=1

API="http://localhost:3000"
URL_PATH="/surveys/${ID}"

curl "${API}${URL_PATH}" \
  --include \
  --request DELETE

echo
