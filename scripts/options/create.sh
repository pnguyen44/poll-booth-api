SURVEY_ID=3
NAME='blackberries'
VOTE_COUNT=1

# API="http://localhost:3000"
API="https://poll-booth-api.herokuapp.com"

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
