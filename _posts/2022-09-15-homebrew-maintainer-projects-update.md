---
title: Maintainer Projects
author: SMillerDev
---

Homebrew’s Project Leadership Committee has green-lit two paid projects by our maintainers this year and since both have hit some milestones recently we’d love to give you, our sponsors and users, an update on the progress.

## API Project
Since version [3.6.0](./2022-09-07-homebrew-3.6.0.md) of Homebrew, we are now choosing to advertise the `HOMEBREW_INSTALL_FROM_API` variable to the general public. A lot of work was done by @Rylan12 to make the experience more stable and the API install method is bound to bring a big performance improvement to those who dare enable it.

The goal of the HOMEBREW_INSTALL_FROM_API environment variable is to allow Homebrew users to install formulae and casks without needing to have Homebrew/homebrew-core and/or Homebrew/homebrew-cask tapped. This is intended to save space on the user’s machine and also to make commands like brew update much faster.

Now that the variable is public, we’re going into a period of bug hunting. When the users stop finding problems and edge-cases for the API to handle, we will be making this the default for all users so everyone can enjoy a fast Homebrew experience.

## Ephemeral CI Runners
Since July 18th the Intel based CI runners are now ephemeral and the basis has been laid for the same features for Apple Silicon based runners. While Homebrew users might not notice more than sleeping a little easier, I can tell you that the maintainers are very happy with this improvement and the accompanying dashboard.

Currently our runners persist indefinitely, which has some distinct downsides:
- Security is worse since a compromised runner will keep working indefinitely
- Keeping them maintained and up to date is harder
- We cannot dynamically scale up/down usage per-OS

The goal was to replace all our persistent runners with ephemeral variants, starting with the Apple Silicon runners. Unfortunately we ran into some bugs in the Orka platform MacStadium provides for us, so that initial goal had to be shifted to Intel runners first.

In the future we hope to enable the Apple Silicon based runners as ephemeral runners to close this project from the macOS side. Once that is done the stretch goal for this project is to make our self-hosted Linux runners ephemeral too.

Finally:

- [Homebrew accepts donations through GitHub Sponsors](https://github.com/sponsors/Homebrew) and [still accepts donations through Patreon](https://www.patreon.com/homebrew) to make projects like these possible. If you can afford it, please consider donating. If you'd rather not use GitHub Sponsors or Patreon (our preferred donation methods), [check out the other ways to donate in our README](https://github.com/homebrew/brew/#donations).

Thanks to all our hard-working maintainers, contributors, sponsors and supporters for getting us this far.
