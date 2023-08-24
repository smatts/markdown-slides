#!/bin/bash

pdf_dir=../../pdf
config_dir=../../config

# Remove old PDF files
for file in "$pdf_dir"/*.pdf
do
    echo "Removing $file"
    rm -f $file
done

# Create new HTML and PDF files
cd $config_dir
npx @marp-team/marp-cli@latest
npx @marp-team/marp-cli@latest --pdf
mkdir -p ../pdf
mv ../public/*.pdf ../pdf/
