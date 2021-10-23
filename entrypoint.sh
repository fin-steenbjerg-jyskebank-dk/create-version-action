#!/bin/sh -l
time=$(date)
echo "Imprinting version $1 to file $2 at" $time
pwd
ls -lrt

[ -f "$2" ] || { echo "$2 NOT FOUND" ; exit 1 ;}

sed -i "s/##VERSION##/$1/g" "$2"
sed -i "s/##BUILD_TIME##/$time/g" "$2"

echo "::set-output name=time::$time"
