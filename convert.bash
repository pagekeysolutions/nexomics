#!/bin/bash

files=`find . | grep .html`
echo $files
git branch -f gh-pages
git checkout gh-pages
for f in $files; do
	sed -e 's/"\//"\.\//g' $f -i
done

git add --all
git status
echo Okay?
read
git commit -m "Auto-generate gh-pages"
git push github gh-pages 
git checkout master
