#! /bin/bash
COUNTER=10
echo "$COUNTER"

let COUNTER-=1
echo "$COUNTER"

let COUNTER=COUNTER-1
echo "$COUNTER"


echo "$((COUNTER-=1))"
echo "$((COUNTER=COUNTER-1))"

echo "$[COUNTER-=1]"
echo "$[COUNTER=COUNTER-1]"
