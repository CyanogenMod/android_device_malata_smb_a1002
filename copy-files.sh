#!/bin/bash

# This script is designed to dynamically read from the extract-files.sh
# script and pull needed proprietary blobs from an extracted device
# system location instead of the device itself.
# The Source location passed should contain the /system/ folder
# for the specific device

if [ $# -lt 1 ]
then
        echo "Usage:" $0 "<Source>"
        exit
fi

SOURCE=${1//'/'/'\/'}

echo "Creating copy script from extract-files.sh..."
sed s/"adb pull "/"cp -a $SOURCE"/g <extract-files.sh >copy-files_TEMP.sh

echo "Making script executable..."
chmod 755 copy-files_TEMP.sh

echo "Executing script..."
./copy-files_TEMP.sh

echo "Removing script..."
rm -f copy-files_TEMP.sh

echo "Done."
echo ""
