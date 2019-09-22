
#!/bin/bash

PACK="httpd wget unzip"
WEBURL="https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip"
ARTIFACT="2113_earth"
ROOTDIR="/var/www/html/"

echo "Setting up a webserver"

echo "Installing packages"
echo
yum install -y $PACK

echo
echo "starting and enabling the httpd service"
systemctl start httpd
systemctl enable httpd
echo
echo

echo "Downloading the webpage"
wget = "$WEBURL"
echo
echo

echo "Unziping the artifact"
unzip -o $ARTIFACT.zip
echo
echo

echo "copying the files to webserver location"
cp -r $ARTIFACT/* /$ROOTDIR
echo
echo

echo "Restartnig the webservice"
systemctl restart httpd
echo
echo

echo "please use the ip in webbrowser to validate the webpage"

