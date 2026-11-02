#!/bin/sh
# Local preview (including _drafts) at http://localhost:4000, matching GitHub Pages.
docker run --rm -it -p 4000:4000 -p 35729:35729 \
  -v "$PWD":/site -v prince-site-gems:/usr/local/bundle -w /site \
  ruby:3.3 sh -c "bundle install --quiet && bundle exec jekyll serve --host 0.0.0.0 --drafts --unpublished --livereload --force_polling"
