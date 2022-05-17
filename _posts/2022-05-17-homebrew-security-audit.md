---
title: Security Audit
author: MikeMcQuaid
---

Homebrew has had a paid security audit and addressed all flagged issues. This blog post has been a long time coming; apologies for the delay.

Here's an overview of the timescale:

- 11th June 2020: The [Mozilla Open Source program (MOSS)](https://www.mozilla.org/en-US/moss/) reaches out to Homebrew as we were nominated for a paid, sponsored security audit by [Radically Open Security (ROS)](https://radicallyopensecurity.com/)
- 11th June 2020: Homebrew meets with ROS and provides the main areas of focus:
  - macOS sandbox escapes
  - CI/development workflow issues (e.g. ways to exploit our CI infrastructure or deploy changes that haven’t been reviewed)
  - Bad uses/setting/checking of Unix permissions
  - Formulae being able to modify the [Homebrew/brew](https://github.com/Homebrew/brew) source process
- 18th June 2020: ROS meets with Homebrew to further discuss the audit, scope and process and provide access to ROS systems (e.g. GitLab, RocketChat)
- 23rd September 2020: MOSS and ROS confirm contract
- 14th October 2020: ROS begins security audit
- October 2020 - March 2021: ROS communicates issues to Homebrew which are resolved, e.g. with <https://github.com/Homebrew/brew/pull/10970> and <https://github.com/Homebrew/brew/pull/10972>
- 31st March 2021: ROS provides final security audit report to Homebrew
- 4th April 2021: Homebrew provides a related [security incident disclosure](https://brew.sh/2021/04/21/security-incident-disclosure/) based on follow-up work
