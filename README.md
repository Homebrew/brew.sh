# brew.sh

The webpage uses [Jekyll](https://github.com/jekyll/jekyll). The template for
the index is at `_layouts/index.html`.

## Translations

### GitHub Pull Request

If you want to add a new translation, follow these steps:

1. Copy `index.html` to `index_{langcode}.html` and update its `lang` value.
2. Copy `_data/locales/en.yml` to `_data/locales/{langcode}.yml` and update its initial language code.
3. Change the values of the English strings to the new, translated language strings.

You can see the translated webpage by running `jekyll serve`, opening
<http://localhost:4000/> and switching to your language. 

You can check the
translated webpage on mobile and other devices by running `jekyll serve --host <ip-address>`,
opening <https://ip-address:4000> and switching to your language. (Replace 
the `ip-address` placeholder with a valid IP address)
