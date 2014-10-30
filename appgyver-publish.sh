#!/usr/bin/env sh

cd npm
rm *.tgz
npm pack

echo "hit enter to deploy"
read

s3cmd put --acl-public --guess-mime-type *.tgz s3://appgyver-steroids

rm *.tgz
