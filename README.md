# brew.sh
[![Build Status](https://travis-ci.org/Homebrew/homebrew.github.io.svg?branch=master)](https://travis-ci.org/Homebrew/homebrew.github.io)

The webpage uses [jekyll](https://github.com/jekyll/jekyll). The template for
the index is at `_layouts/index.html`.

## Translations
If you want to add a new translation, follow these steps:

1. Copy `index.html` to `index_{langcode}.html`
2. Copy `_data/locales/en.yml` to `_data/locales/{langcode}.yml`
3. Change the values of the English strings to the translated, new language strings.

You can see the translated webpage by running `jekyll serve` and opening
<http://localhost:4000/>
