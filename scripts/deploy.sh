#!/bin/zsh
git add .
git commit -m "auto build and deploy"
git push
bundle exec jekyll build
surge ./_site
