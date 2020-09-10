# https://www.arcanetech.xyz/scripts/install_wordpress.sh

echo "Downloading WordPress..."
curl -Os https://wordpress.org/latest.tar.gz

echo "Extracting WordPress files..."
tar xzf latest.tar.gz
mv ./wordpress/* ./

echo "Cleaning up..."
rmdir ./wordpress
rm latest.tar.gz

echo "All done. Now visit your website to start the WordPress installation."
