#!/bin/sh
set -x

[ -f "$1" ] || { echo "$1 NOT FOUND" ; exit 1 ;}
time=$(date)
version=$(echo $GITHUB_REF | cut -d / -f 3)
echo "imprinting version $version, git sha $GITHUB_SHA and time $time"
sed -i "s/##VERSION##/$version/g" "$1"
sed -i "s/##BUILD_TIME##/$time/g" "$1"
sed -i "s/##SHA##/$GITHUB_SHA/g" "$1"

echo "::set-output name=version::$version"
echo "::set-output name=sha::$GTIHUB_SHA"
