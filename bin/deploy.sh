#!/bin/bash

set -e

version=$(node -p "require('./package').version")

echo "-------"
echo "Deploying v${version} of the Interflux Admin Electron app"
echo "-------"

(set -x; rm -rf dist/cdn/)
(set -x; mkdir dist/cdn/)

echo "-------"

(set -x; cp dist/Interflux\ Admin\ Setup\ ${version}.exe dist/cdn/Interflux-Admin-for-Windows.exe)
(set -x; cp dist/Interflux\ Admin-${version}.dmg dist/cdn/Interflux-Admin-for-Mac.dmg)
(set -x; cp dist/interflux-admin-electron_${version}_amd64.snap dist/cdn/Interflux-Admin-for-Linux.snap)

echo "-------"

(set -x; s3cmd put dist/cdn/ s3://cdn-interflux/apps/interflux-admin/ --recursive --acl-public --add-header="Cache-Control:no-cache, max-age=0" --verbose)

echo "-------"
echo " Upload complete complete!"
echo "-------"
