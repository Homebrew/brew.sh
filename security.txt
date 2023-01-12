---
layout: none
permalink: .well-known/security.txt
---
{% capture plus_1_month %}{{ site.time | date: '%s' | plus: 2678400 }}{% endcapture -%}
Contact: https://github.com/Homebrew/brew/security/advisories/new
Expires: {{ plus_1_month | date_to_rfc822 }}
Acknowledgments: https://hackerone.com/homebrew/thanks
Preferred-Languages: en
Policy: https://github.com/Homebrew/.github/blob/HEAD/SECURITY.md
