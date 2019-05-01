API="http://localhost:3000"
URL_PATH="/options"


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --data '{
    "option": {
    }
  }'

echo
