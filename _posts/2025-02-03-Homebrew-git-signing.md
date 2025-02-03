---
title: "Homebrew's new git signing key"
author: woodruffw
---

Over the next few days, Homebrew's repositories will begin to transition
from PGP-based signing to SSH-based signing for [@BrewTestBot] commits.

As part of this change, we will be rotating our [@BrewTestBot]'s key.
This rotation should not affect most users, but you may notice
it if you currently manually verify `git` commits from
[Homebrew/brew], [Homebrew/homebrew-core], or similar.

Once all repositories have been transitioned, we will revoke
the old PGP key to prevent unintended future use:

* Main key: `3C76C3F1E573FA9E`
* Signing subkey: `82D7D104050B0F0F`

The new SSH signing key has the following public half:

```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE0QzQJ6gl6Yxru0QrSaDRNatiHajcKxDu9lxQrFl8Nw
```

Users can also discover this signing key programmatically through GitHub's
REST API:

```
$ gh api /users/BrewTestBot/ssh_signing_keys
[
  {
    "id": 475371,
    "key": "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE0QzQJ6gl6Yxru0QrSaDRNatiHajcKxDu9lxQrFl8Nw",
    "title": "BREWTESTBOT_SSH_SIGNING_KEY",
    "created_at": "2025-02-03T17:50:27.377+01:00"
  }
]
```

[@BrewTestBot]: https://github.com/BrewTestBot
[Homebrew/brew]: https://github.com/Homebrew/brew
[Homebrew/homebrew-core]: https://github.com/Homebrew/homebrew-core
