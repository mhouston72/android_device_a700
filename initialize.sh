#!/bin/sh
cd $(dirname "$0")

find . -type f -not -wholename "*.git*" -exec sed -i "s//$1/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s//$2/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s//$3/g" {} \;
git add -A

git mv full_.mk "full_$1.mk"

git rm -f "$0" && git commit -m "Initial commit for device $2 by $3"
