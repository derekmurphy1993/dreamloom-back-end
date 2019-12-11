#!/bin/bash

curl "http://localhost:4741/dreams" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dream": {
      "user_id": "'"${USER_ID}"'",
      "date": "'"${DATE}"'",
      "mood": "'"${MOOD}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
