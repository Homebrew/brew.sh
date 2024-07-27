---
title: Homebrew's Summer 2024 Hackathon
author: mozzadrella
---

The Homebrew Summer 2024 Hackathon brought together maintainers from across the globe to focus on enhancing security and performance aspects of Homebrew. Held July 16 to July 20 and hosted at [IndyHall](https://indyhall.org/) in Philadelphia, the event aimed to address issues identified in last year's security audit from Trail of Bits, and to optimize the software's performance. This post will share outcomes from the event, evaluate the effectiveness of the gathering, and serve as a blueprint for other open source projects who are considering in-person events as a way to make focused progress.

### Background

Since 2019, Homebrew's maintainers meet annually for the “Annual General Meeting” in Brussels, Belgium. Originally, Brussels was deemed a convenient location for the predominantly European team to coincide with the free [FOSDEM](https://fosdem.org/) conference. Since then the global distribution of the core team has expanded.

At the same time, maintenance issues related to performance (the not-so-glamorous tasks of running a mature project that the whole world relies upon) and the remaining pieces of the Trail of Bits Security Audit needed to be completed.

The Project Leadership Team decided to undertake an experiment: our first North American in-person event, thematically focused and with an application process.

![Hackathon Application](/assets/img/blog/homebrew-summer-2024-hackathon/application.png)

Of the 16 applications, 12 participants were accepted.

### Event design + impact

On the first day of the three-day event, Project Leader Mike McQuaid gave a presentation about how to triage and measure the highest-impact performance-related issues:

![Mike McQuaid presentation](/assets/img/blog/homebrew-summer-2024-hackathon/mike.jpg)

From there, participants tackled high-priority issues, raising pull requests in the dedicated Slack channel to ensure speedy reviews.

Participants worked synchronously and co-located over three days, with standup around 9:30am and departing at 5:00pm. Dinners were optional but provided opportunities for additional discussion:

![Group dinner](/assets/img/blog/homebrew-summer-2024-hackathon/dinner.jpg)

### Impact

Participants made significant progress in the following areas:

* **Security Issues:** Several contributors focused on fixing security vulnerabilities highlighted in the Trail of Bits Homebrew audits, such as sandboxing improvements, GitHub Actions security, and privilege escalation prevention.
* **Performance Enhancements:** Efforts were made to speed up operations like concurrent downloads and repository handling, resulting in significant gains.

### Outcomes

In addition to the direct impact participants had by shipping code, there's some evidence that this in-person gathering may have increased the capacity of maintainers in areas of security and performance, which will ultimately benefit the project in the future:

1 = least likely, 5 = most likely

![Performance Survey Results](/assets/img/blog/homebrew-summer-2024-hackathon/performance.png)

![Security Survey Results](/assets/img/blog/homebrew-summer-2024-hackathon/security.png)

While the event seemed successful to us as organizers, we also wanted to hear from the participants themselves as part of our evaluation.

### Event evaluation

Overall, the hackathon received positive feedback:

* **Organizational Success**: Participants praised the event's organization, particularly highlighting Vanessa's efforts and the conducive environment at IndyHall.
* **Productive Collaboration:** The in-person collaboration facilitated rapid progress and effective problem-solving, which participants found highly beneficial. Direct interaction enabled efficient idea exchange and immediate problem resolution. Participants appreciated the social interactions and the chance to work closely with peers they usually communicate with asynchronously.

Participants themselves assessed the event as successful:

1 = least successful, 5 = most successful

![Event Success Results](/assets/img/blog/homebrew-summer-2024-hackathon/evaluation.png)

One of the unexpected effects of the rapid progress was a flurry of notifications for the maintainers who were not attending the event:

![Notification Spam](/assets/img/blog/homebrew-summer-2024-hackathon/notifications.png)

Apologies, Eric.

### First-person accounts

In their own words, participants identified key benefits:

What in particular made the Hackathon successful or not successful?

* _A fun experience overall, I got to work on aspects of Homebrew that I had never dealt with before and met some wonderful people!_
* _The efficient exchange of ideas made it very successful in my opinion. We have probably never had a time when we were able to fix this many issues and make this many improvements to Homebrew within such a short period._
* _There were a lot -- we fixed many problems, had various foods, and had a great time together. If I had to choose one, it would still be about the in-person nature of the event. It not only made it much easier to share ideas, but also strengthened the bond between our maintainers._
* _The list of issues from the audit helped to outline the work to be done._
* _The organization - Vanessa did an awesome job - thank you! The security stuff was awesome to get some issues burned down. Philly's a great city. IndyHall is a great venue. And it was really nice to just be!_
* _Two fixed themes for the hackathon kept people focused, IMO_
* _The availability of a list of issues to select from and work together with people_
* _I feel like a lot was done, but with such vague goals it's hard to tell if all were met._
* _Full focus, no distractions._
* _I feel that a lot was accomplished in a short amount of time. It was clear everyone came ready to work and the attitude of all maintainers was so upbeat._
* _All being in the same room together was great for productivity because we could easily bounce ideas and discuss with each other without dealing with timezone differences. When I was working on problems that I didn't understand super well, I could just ask other people for help and get it immediately._

### Areas for Improvement

As an experiment, we were keen to hear how we might improve the structure to be more effective. Attendees had feedback in the following areas:

* **Task Clarity**: More structured task lists, especially for performance-related issues, would provide clearer direction.
* **Schedule Optimization**: Participants suggested better time management, including more structured breaks and optional cultural activities.
* **Constructive Feedback**: Some participants desired a mid-day stand-up for better synchronization and clarity.

Overall, the event not only addressed critical technical challenges but also strengthened the bonds within the Homebrew community, setting a positive precedent for future collaborative efforts.
