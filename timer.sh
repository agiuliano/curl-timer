#! /bin/bash

while [ true ]; do

    curl -i -X "$HTTP_VERB" "$URL" \
        -H "Authorization: $AUTH_TYPE $AUTH"

    sleep $TIMER
done
