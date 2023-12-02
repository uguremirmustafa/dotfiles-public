#!/bin/sh

# Written by: uguremirmustafa

DOWNLOAD_DIR="/tmp/nerd-fonts"
BASE_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/"
TARGET_DIR="$HOME/.local/share/fonts/"


fonts=( "FiraCode.zip" "FiraMono.zip" "Hack.zip" "Mononoki.zip" "SourceCodePro.zip" )

rm -rf $DOWNLOAD_DIR
mkdir $DOWNLOAD_DIR
cd $DOWNLOAD_DIR
echo "Getting font files"

for i in "${fonts[@]}"
do
    echo "Downloading $i"
	wget "$BASE_URL""$i"
    unzip -o $i
done

mkdir -p $TARGET_DIR

echo "copying fonts..."

cp *.ttf $TARGET_DIR

echo "Updating font-cache..."
sudo fc-cache -f > /dev/null

echo "Done!"
