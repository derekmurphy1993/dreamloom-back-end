# Ex: ID=idgoeshere TOKEN=tokengoeshere sh curl-scripts/examples/destroy.sh

curl "http://localhost:4741/dreams/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \

echo
