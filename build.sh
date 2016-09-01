#!/bin/bash

if [ -e /Developer/Qt/5.6/clang_64/bin ]; then
	QTDIR=/Developer/Qt/5.6/clang_64/bin
fi

if [ -z "$QTDIR" ]; then
	echo "Cannot find Qt installation"
	exit 1;
fi

export PATH=$QTDIR:$PATH

INSTALL=`pwd`/dist

./configure --prefix=$INSTALL

if [ $? -eq 0 ]
then
  ( cd src && make && make install )
  if [ $? -eq 0 ]
  then
    ( cd tools && make && make install )
  fi
fi

echo "*** Build done."

echo "*** Example build & run: "
echo "***   cd examples/devapp"
echo "***   qmake"
echo "***   make"
echo "***   ../../dist/bin/treefrog -e dev"
