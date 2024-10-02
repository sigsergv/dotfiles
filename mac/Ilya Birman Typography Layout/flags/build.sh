#!/bin/bash

set -x

SRC=$1
SRC_DIR=$(readlink -f $SRC)
START_DIR=$(pwd)

if [ -z "$SRC_DIR" ]; then
	exit 1
fi

T=$(mktemp -d)
# T=tmp

cd "${T}"
mkdir 'English - Ilya Birman Typography.iconset' 'Russian - Ilya Birman Typography.iconset'
cp "${SRC_DIR}/en/"*.png 'English - Ilya Birman Typography.iconset'
cp "${SRC_DIR}/ru/"*.png 'Russian - Ilya Birman Typography.iconset'
iconutil --convert icns 'English - Ilya Birman Typography.iconset'
iconutil --convert icns 'Russian - Ilya Birman Typography.iconset'
rm -rf 'English - Ilya Birman Typography.iconset' 'Russian - Ilya Birman Typography.iconset'
mkdir -p 'Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle/Contents/Resources'
cp 'English - Ilya Birman Typography.icns' 'Russian - Ilya Birman Typography.icns' 'Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle/Contents/Resources'
zip_file="${START_DIR}/Ilya Birman Typography Layout flags - ${SRC}.zip"
#zip_file="${START_DIR}/t.zip"
rm "${zip_file}"
zip -r "${zip_file}" 'Library'
rm -r "${T}"
