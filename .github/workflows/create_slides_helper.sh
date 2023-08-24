#!/bin/bash

# Remove old PDF files
for file in pdf/*
do
    echo "Removing $file"
    rm -f $file
done

# If a file is called index, rename the file
md_files=$(find slides/*.md -exec basename \{} .md \;)
for file in $md_files
do
    if [ $file == "index" ]; then
        echo "$file is a forbidden name for a slide."
        echo "Renaming $file.md to index-slide.md"
        mv slides/$file.md slides/index-slide.md
        ls
    fi
done

# Create new HTML and PDF files
cd config
npx @marp-team/marp-cli@latest
npx @marp-team/marp-cli@latest --pdf
cd ..
mkdir -p pdf
cp public/*.pdf pdf/
mkdir -p webslides
cp public/*.html webslides/

# Create index.html
touch index.md
echo "# Slides\n" > index.md
pdf_files=$(find pdf/*.pdf -exec basename \{} .pdf \;)
for file in $pdf_files
do
    echo $file
    echo "* ${file%.pdf}: [HTML](webslides/$file.html) / [PDF](pdf/$file.pdf)" >> index.md
done