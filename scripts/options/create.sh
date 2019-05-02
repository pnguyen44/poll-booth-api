SURVEY_ID=7
NAME='add more stuffXXXX'
VOTE_COUNT=1

API="http://localhost:3000"
URL_PATH="/options"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "option": {
      "survey_id": "'"${SURVEY_ID}"'",
      "name": "'"${NAME}"'",
      "vote_count": "'"${VOTE_COUNT}"'"
    }
  }'

echo
