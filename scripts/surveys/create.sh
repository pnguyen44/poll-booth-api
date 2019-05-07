TITLE='survey.....'
QUEST='favorite survey?'

API="http://localhost:3000"
# API="https://poll-booth-api.herokuapp.com"
URL_PATH="/surveys"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "survey": {
      "title": "'"${TITLE}"'",
      "question": "'"${QUEST}"'"
    }
  }'

echo
