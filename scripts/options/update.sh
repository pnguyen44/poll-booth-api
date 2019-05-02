ID=16
NAME='!updateing....!!!!!!'
VOTE_COUNT='11'

API="http://localhost:3000"
URL_PATH="/options/${ID}"

curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "option": {
      "name": "'"${NAME}"'",
      "vote_count": "'"${VOTE_COUNT}"'"
    }
  }'

echo
