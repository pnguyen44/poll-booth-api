ID=10
TITLE='!update........!!!!!!'
QUEST='favorite color!!!!!'

API="http://localhost:3000"
# API="https://poll-booth-api.herokuapp.com"

URL_PATH="/surveys/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "survey": {
      "title": "'"${TITLE}"'",
      "question": "'"${QUEST}"'"
    }
  }'

echo
