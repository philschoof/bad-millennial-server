#!/bin/bash

curl --include --request POST http://localhost:3000/users/$ID/words/ \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "word": {
      "entry": "woke bae",
      "definition": "food?"
    }
  }'
