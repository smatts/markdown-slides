#!/bin/bash

# Remove old PDF files
for file in pdf/*
do
    echo "Removing $file"
    rm -f $file
done

# Create new HTML and PDF files
cd config
npx @marp-team/marp-cli@latest
npx @marp-team/marp-cli@latest --pdf
cd ..
mkdir -p pdf
mv public/*.pdf pdf/
