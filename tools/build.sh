#!/usr/bin/env bash
echo "Building Extension"
EXTENSIONNAME="Letterboxd-Streaming-Providers"
DES=builds

TAG=$(date +"%y%m%d"_%H%M)

FIREFOXFILENAME=${EXTENSIONNAME}_Firefox_Dev_${TAG}
CHROMEFILENAME=${EXTENSIONNAME}_Chrome_Opera_Dev_${TAG}

mkdir -p $DES
cd extension/

cp manifest.firefox.json manifest.json
zip -r ${FIREFOXFILENAME}.xpi *
mv ${FIREFOXFILENAME}.xpi ../$DES/

cp manifest.chrome.json manifest.json
zip -r ${CHROMEFILENAME}.zip *
mv ${CHROMEFILENAME}.zip ../$DES/

echo "Package done."
