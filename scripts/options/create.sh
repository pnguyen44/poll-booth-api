SURVEY_ID=3
NAME='test optioin'
VOTE_COUNT=1

API="http://localhost:3000"
URL_PATH="/options"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "option": {
      "survey_id": "3",
      "name": "'"${NAME}"'",
      "vote_count": "'"${VOTE_COUNT}"'"
    }
  }'

echo
