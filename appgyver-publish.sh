#!/usr/bin/env sh

ruby appgyver-ensure-version.rb

if [ "$?" -ne "0" ]; then
	echo "fix it"
	exit 1
fi


cd npm
rm *.tgz
npm pack

echo "hit enter to deploy"
read

s3cmd put --acl-public --guess-mime-type *.tgz s3://appgyver-steroids

rm *.tgz
