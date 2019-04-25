API="http://localhost:3000"
URL_PATH="/surveys/${ID}"
ID=1

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
