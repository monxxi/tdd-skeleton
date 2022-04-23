#!/bin/bash
commandName=`basename "$0"`
target=`pwd`

if [ "$#" -ne 1 ]; then
  echo "Vous devez specifier un nom de repertoire"
  exit 1;
fi;

if [ -f "`pwd`/$commandName" ]; then
 target="`pwd`/../.."
fi;

git clone git@github.com:monxxi/tdd-skeleton.git $target/$1
pushd $target/$1
rm -rf ./.git
git init
git add .
git commit -m "first commit of $1 project"
popd
