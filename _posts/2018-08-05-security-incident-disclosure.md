---
title: Security Incident Disclosure
author: MikeMcQuaid
---

On 31st July 2018 [a security researcher identified](https://medium.com/@vesirin/how-i-gained-commit-access-to-homebrew-in-30-minutes-2ae314df03ab) a GitHub personal access token with recently elevated scopes was leaked from Homebrew's Jenkins that gave them access to `git push` on Homebrew/brew and Homebrew/homebrew-core. They reported this to our Hacker One. Within a few hours the credentials had been revoked, replaced and sanitised within Jenkins so they would not be revealed in future. Homebrew/brew and Homebrew/homebrew-core were updated so non-administrators on those repositories cannot push directly to `master`. Most repositories in the Homebrew organisation (notably not Homebrew/homebrew-core due to their current workflow and maintainer requests) were also updated to require CI checks from a pull request to pass before changes can be pushed to `master`.

### What was impacted

GitHub Support was contacted and they verified the relevant token had not been used to perform any pushes to Homebrew/brew or Homebrew/homebrew-core during the period of elevated scopes. **To be explicit: no packages were compromised and no action is required by users due to this incident.**

### What we're doing about it

- We have for several years enabled 2FA and third party application restrictions for the entire Homebrew GitHub organisation. This was also recommended by the security researcher.
- We enabled branch protection and required reviews on additional repositories as mentioned above.
- We requested all Homebrew maintainers review and prune their personal access tokens and disable SMS fallback for 2FA.
- The security researcher also recommended we consider using GPG signing for Homebrew/homebrew-core. The Homebrew project leadership committee took a vote on this and it was rejected non-unanimously due to workflow concerns.

We did, do and will continue to take the security of the project and our users very seriously. We try our best to behave as a for-profit company would do in terms of timely response to security issues but this is heavily limited by our lack of resources. For example, in this the Homebrew maintainer who resolved the above issues was on paternity leave from work and the primary carer for their child and had to reach a quick resolution while their child had a nap.

We need more help to improve Homebrew's security. Please consider contributing your code and code reviews to our GitHub projects, get in touch to volunteer to be on-call for security and/or system administration emergencies or [donate through Patreon](https://www.patreon.com/homebrew).

Thanks for using Homebrew!
