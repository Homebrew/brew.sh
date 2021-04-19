---
title: Security Incident Disclosure
author: Markus Reiter
---

On 18th April 2021 [a security researcher identified](https://blog.ryotak.me/post/homebrew-security-incident-en/) a vulnerability in our `review-cask-pr` GitHub action used to automatically review and approve version bump pull requests. This was reported via HackerOne and [a pull request demonstrating the vulnerability](https://github.com/Homebrew/homebrew-cask/pull/104191) was submitted with our permission. The [pull request was subsequently reverted](https://github.com/Homebrew/homebrew-cask/pull/104197) and the [`review-cask-pr` action disabled and removed](https://github.com/Homebrew/homebrew-cask/pull/104204) from all repositories that were using it.

### What was impacted

The discovered vulnerability would allow an attacker to inject arbitrary payloads into a cask and have it be merged automatically. This is due to a flaw in the `git_diff` dependency of the `review-cask-pr` GitHub action which is used to parse a pull request's diff for inspection. Due to this flaw, the parser can be spoofed into completely ignoring the offending lines, resulting in successfully approving a malicious pull request.

**A single cask was compromised with a dummy payload for the duration of [the demonstration pull request](https://github.com/Homebrew/homebrew-cask/pull/104191) until [its reversal](https://github.com/Homebrew/homebrew-cask/pull/104197). No action is required by users due to this incident.**

### What we're doing about it

- The vulnerable `review-cask-pr` GitHub action has been disabled and removed from all repositories.
- We have removed the ability for our bot(s) to commit to `homebrew/cask*` repositories.
- All pull requests will require a manual review and approval by a maintainer.
- We are improving documentation to help onboard new `homebrew/cask` maintainers and upskilling
  existing `homebrew/core` maintainers in the process.

We did, do and will continue to take the security of the project and our users very seriously. We try our best to behave as a for-profit company would do in terms of timely response to security issues but this is heavily limited by our lack of resources.

In order to ensure and improve Homebrew's security, please consider contributing your code and code reviews to our GitHub projects.

Thanks for using Homebrew!
