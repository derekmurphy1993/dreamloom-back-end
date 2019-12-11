# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/dreams/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "dream": {
        "date": "'"${DATE}"'",
        "mood": "'"${MOOD}"'",
        "body": "'"${BODY}"'"
      }
  }'

  echo
