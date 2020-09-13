#!/bin/sh
# Download and prepare latest WordPress for installation

command -v curl >/dev/null 2>&1 || { echo >&2 "curl is not installed. Aborting."; exit 1; }

echo "Downloading WordPress..."
curl -Os https://wordpress.org/latest.tar.gz

echo "Extracting WordPress files..."
tar xzf latest.tar.gz
mv ./wordpress/* ./

echo "Cleaning up..."
rmdir ./wordpress
rm latest.tar.gz

echo "All done. Now visit your website to start the WordPress installation."
