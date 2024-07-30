---
title: 2023 Security Audit 
author: p-linnane
---

Homebrew had a security audit performed in 2023. This audit was funded by the [Open Technology Fund](https://www.opentech.fund) and conducted by [Trail of Bits](https://www.trailofbits.com). Trail of Bits' report contained 25 items, of which 16 were fixed, 3 are in progress, and 6 are acknowledged by Homebrew's maintainers. Below is the scope of testing, findings by severity, and mitigation and acknowledgements.

You can read Trail of Bits' blog post on the audit [here](https://blog.trailofbits.com/2024/07/30/our-audit-of-homebrew/) and find the full public report [here](https://github.com/trailofbits/publications#technology-product-reviews).

Homebrew's maintainers and Project Leadership Commitee would like to thank Open Technology Fund and Trail of Bits for sponsoring and running this engagement. Our partnership directly improves the security of Homebrew and open source software in general.

Scope: [Homebrew/brew](https://github.com/Homebrew/brew), [Homebrew/actions](https://github.com/Homebrew/actions), [Homebrew/formulae.brew.sh](https://github.com/Homebrew/formulae.brew.sh), [Homebrew/homebrew-test-bot](https://github.com/Homebrew/homebrew-test-bot).

Findings by severity:

- High: 0
- Medium: 14
- Low: 2
- Informational: 7
- Undetermined: 2

Mitigation & acknowledgement:

1. Path traversal during file caching
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/5aebde3ffdb38a7087ac992af144c957dd802788)

2. Sandbox escape via string injection
    - Status: [Fixed](https://github.com/Homebrew/brew/pull/17700/commits/f4e5e0c716585b072b5a401602f7847272ae5d4a)

3. Allow default rule in sandbox configuration is overly permissive
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/fea65f760332a26c116de4b675e07f679bf95b1c)

4. Special characters are allowed in package names and versions
    - Status: Acknowledged

5. Use of weak cryptographic digest in Formulary namespaces
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/310b5ecbe7c578c850f35d88b3ba9adbb291fc83)

6. Extraction is not sandboxed
    - Status: Acknowledged

7. Use of ldd on untrusted inputs
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/0fc9c9f81e2a740d733062e1b47df2b49a8363c6)

8. Formulas allow for external resources to be downloaded during the install step
    - Status: [In Progress](https://github.com/Homebrew/brew/pull/17703)

9. Use of Marshal
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/e466417cdf90c7dc8aab717cc5a591c1f31f9415)

10. Lack of sandboxing on Linux
    - Status: Acknowledged

11. Sandbox escape through domain socket pivot on macOS
    - Status: [In Progress](https://github.com/Homebrew/brew/pull/17734)

12. Formula privilege escalation through sudo
    - Status: [Fixed](https://github.com/Homebrew/brew/pull/17694/commits/2adf25dcaf8d8c66124c5b76b8a41ae228a7bb02)

13. Formula loading through SFTP, SCP, and other protocols
    - Status: [Fixed](https://github.com/Homebrew/brew/pull/17697/commits/8b0a4a98bf10b3441008906632648977b4a4f23e)

14. Sandbox allows changing permissions for important directories
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/92ef6ef7639b08b182fc0d9154cf51561365f749)

15. Homebrew supports only end-of-life versions of Ruby
    - Status: [Fixed](https://github.com/Homebrew/brew/pull/16294/commits/987ebe3d6d0aaa27ab9ca2e95fe807e0718d4378)

16. Path traversal during bottling
    - Status: [Fixed](https://github.com/Homebrew/brew/commit/5aebde3ffdb38a7087ac992af144c957dd802788)

17. FileUtils.rm_rf does not check if files are deleted
    - Status: [In Progress](https://github.com/Homebrew/brew/pull/17705)

18. Use of pull_request_target in GitHub Actions workflows
    - Status: Fixed: [1](https://github.com/Homebrew/brew/commit/b9da669ef25c7da0757f5ae1d418985b19efb321), [2](https://github.com/Homebrew/actions/commit/323fc6399f7ddf2cb6ee7eb9d900dcd4deee76ec).

19. Use of unpinned third-party workflow
    - Status: Fixed across the codebase via multiple PR's.

20. Unpinned dependencies in formulae.brew.sh
    - Status: [Fixed](https://github.com/Homebrew/formulae.brew.sh/commit/83ae27233abbf7b59db9aeb5bae311ecabf1add8)

21. Use of RSA for JSON API signing
    - Status: Acknowledged. Ed25519 was not an option when this was introduced. The next key reroll will use Ed25519.

22. Bottles beginning "-" can lead to unintended options getting passed to rm
    - Status: [Fixed](https://github.com/Homebrew/homebrew-test-bot/pull/1062/commits/5565ba609cb6456d22741751465f088b44209813)

23. Code injection through inputs in multiple actions
    - Status: Fixed across the codebase via multiple PR's.

24. Use of PGP for commit signing
    - Status: Acknowledged. Plans to remove the bot account using PGP have been established.

25. Unnecessary domain separation between signing key and key ID
    - Status: Acknowledged. Will be resolved with the next key reroll.
