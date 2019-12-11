#!/bin/bash

curl "http://localhost:4741/dreams" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
