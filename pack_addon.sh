#!/bin/sh
NAME=${1%/}
VERSION=`sed -n  's/.*version="\([0-9]\.[0-9]\.[0-9]\)".*/\1/p' $1/addon.xml`

echo $NAME $VERSION
rm $1/*.zip
zip -r $1/$NAME-$VERSION.zip $1 