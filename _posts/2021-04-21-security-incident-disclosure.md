---
title: Security Incident Disclosure
author: reitermarkus
---

On 18th April 2021 [a security researcher identified](https://blog.ryotak.me/post/homebrew-security-incident-en/) a vulnerability in our `review-cask-pr` GitHub Action used to automatically review and approve cask version bump pull requests which was automatically merged by our `automerge` GitHub Action. This was reported via HackerOne and [a pull request demonstrating the vulnerability](https://github.com/Homebrew/homebrew-cask/pull/104191) was submitted with our permission. The [pull request was subsequently reverted](https://github.com/Homebrew/homebrew-cask/pull/104197), the [`automerge` action disabled and removed](https://github.com/Homebrew/homebrew-cask/pull/104199) and the [`review-cask-pr` action disabled and removed](https://github.com/Homebrew/homebrew-cask/pull/104204) from all the `homebrew-cask*` repositories that were using it.

### What was impacted

The discovered vulnerability would allow an attacker to inject arbitrary code into a cask and have it be merged automatically. This is due to a flaw in the `git_diff` dependency of the `review-cask-pr` GitHub Action which is used to parse a pull request's diff for inspection. Due to this flaw, the parser can be spoofed into completely ignoring the offending lines, resulting in successfully approving a malicious pull request.

**A single cask was compromised with a harmless change for the duration of [the demonstration pull request](https://github.com/Homebrew/homebrew-cask/pull/104191) until [its reversal](https://github.com/Homebrew/homebrew-cask/pull/104197). No action is required by users due to this incident.**

### What we're doing about it

- The vulnerable `review-cask-pr` GitHub Action has been disabled and removed from all repositories.
- The `automerge` GitHub Action has been disabled and removed from all repositories (in favour of the GitHub built-in functionality that did not exist when this action was created).
- We have removed the ability for our bots to commit to `homebrew/cask*` repositories.
- All `homebrew/cask*` pull requests will require a manual review and approval by a maintainer.
- We are improving documentation to help onboard new `homebrew/cask` maintainers and training
  existing `homebrew/core` maintainers to help with `homebrew/core`.

We did, do and will continue to take the security of the project and our users very seriously. We try our best to behave as a for-profit company would do in terms of timely response to security issues.

In order to ensure and improve Homebrew's security, please consider contributing your code and code reviews to our GitHub projects.

Thanks for using Homebrew!
