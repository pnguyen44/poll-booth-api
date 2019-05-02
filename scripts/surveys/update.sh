ID=1
TITLE='!update........!!!!!!'
DES='color!!'
QUEST='favorite color!!!!!'
CREATED_BY='me!!!'

# API="http://localhost:3000"
API="https://poll-booth-api.herokuapp.com"

URL_PATH="/surveys/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "survey": {
      "title": "'"${TITLE}"'",
      "description": "'"${DES}"'",
      "question": "'"${QUEST}"'",
      "created_by": "'"${CREATED_BY}"'"
    }
  }'

echo
