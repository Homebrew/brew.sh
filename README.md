# brew.sh

The webpage uses [Jekyll](https://github.com/jekyll/jekyll). The template for
the index is at `_layouts/index.html`.

## Translations

### GitHub Pull Request

If you want to add a new translation, follow these steps:

1. Copy `index_fr.html` to `index_{langcode}.html` and update its `lang` and `permalink` values.
2. Copy `_data/locales/en.yml` to `_data/locales/{langcode}.yml` and update its initial language code.
3. Change the values of the English strings to the new, translated language strings.

You can see the translated webpage by running `bundle install` and `bundler exec jekyll serve`, after executing it open
<http://localhost:4000/> and switch to your language.
