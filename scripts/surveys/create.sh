TITLE='!!!!'
DES='movies'
QUEST='favorite color'
CREATED_BY='me'

API="http://localhost:3000"
URL_PATH="/surveys"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
