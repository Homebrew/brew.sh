# Release Notes

Homebrew release posts in these files are the style references before editing a new one:
- `_posts/2025-11-12-homebrew-5.0.0.md`
- `_posts/2025-08-05-homebrew-4.6.0.md`
- `_posts/2025-04-29-homebrew-4.5.0.md`

Homebrew `_posts/*-homebrew-*.0.md` release posts follow this process:
- Homebrew release posts should be reread before editing so the latest local wording and structure changes are preserved.
- GitHub queries should fetch the linked PR or discussion contents instead of rewriting PR titles blindly.
- GitHub GraphQL should be preferred for one bulk query across all `Homebrew/brew` PRs in the post.
- Homebrew org discussion links such as `https://github.com/orgs/Homebrew/discussions/6706` are backed by the `Homebrew/discussions` repository, so query `repository(owner: "Homebrew", name: "discussions") { discussion(number: N) { ... } }`.
- Homebrew release posts should treat recent release posts as formatting references, not content templates.
- Homebrew release posts should independently source release-specific bullets before reusing them from prior releases.
- Homebrew branch-migration notes should check prior release posts first so later notes describe the next stage rather than restating the initial rename.
- Homebrew release-note prose should avoid second-person wording and filler time-adverbs.
- Homebrew release-note prose should avoid Oxford commas.
- Homebrew release-note prose should prefer bullets that begin with `brew` commands or `Homebrew`.
- Homebrew `Other changes` sections should list bullets starting with `brew` commands before bullets starting with `Homebrew`.
- Homebrew release-note bullets should use one user-focused sentence per bullet when a single PR is summarized.
- Homebrew release-note bullets may combine closely related PRs into one user-focused line when the related links all remain present.
- Homebrew release-note bullets should use `- [Sentence.](URL)` when a single link covers the bullet.
- Homebrew release-note bullets that summarize multiple PRs should keep one sentence and link the relevant clauses inline rather than adding raw URLs, `[discussion]` or trailing `([#123](...))` references.
- Homebrew org discussions included in release notes should be rewritten as normal linked sentence bullets sourced from the discussion text.
- Homebrew release-note prose should use `repository`, not `repo`.
- Homebrew release-note prose should stay ASCII-only to avoid CI encoding issues.
- Homebrew release-note prose should keep commands, flags, environment variables and DSL names in backticks.
- Homebrew release-note prose should remove contributor checklist text, AI disclosure boilerplate and internal drafting notes from the wording.
- Homebrew governance or community-administration items should move to `Finally:` when the surrounding release-note style or the user request calls for that grouping.
- Homebrew release posts should keep the required `redirect_from: /blog/<version>/` entry.
- Homebrew release posts are often future-dated. The test build uses `_config.test.yml` with `future: true` and a blank `url` so HTML-Proofer checks local relative URLs instead of not-yet-deployed `brew.sh` pages.

Homebrew release-note verification before finishing:
- `bundle exec rake test` should run when the local Ruby toolchain is available.
- `vale --config=\"$(brew --repository)\"/.vale.ini _posts/` should run after editing release notes.
- Homebrew release posts should be scanned for stale bullets copied from prior releases, especially in `Finally:` and any branch-migration notes.
- Homebrew release posts should keep the expected PR and discussion links present.
- Homebrew release posts should be compared against the recent release posts above before finishing.
