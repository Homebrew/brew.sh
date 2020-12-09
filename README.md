# brew.sh

The webpage uses [jekyll](https://github.com/jekyll/jekyll). The template for
the index is at `_layouts/index.html`.

## Translations

### GitHub Pull Request

If you want to add a new translation, follow these steps:

1. Copy `index.html` to `index_{langcode}.html` and update its `lang` value.
2. Copy `_data/locales/en.yml` to `_data/locales/{langcode}.yml` and update its initial language code.
3. Change the values of the English strings to the new, translated language strings.

You can see the translated webpage by running `jekyll serve` and opening
<http://localhost:4000/>.

### Transifex

[Help Translate "Homebrew homepage"](https://www.transifex.com/homebrew/homebrew-homepage/dashboard/) on Transifex.
