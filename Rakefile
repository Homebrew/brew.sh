require "rake"

task default: :build

desc "Build the site."
task :build do
  sh "bundle exec jekyll build"
end

desc "Run html proofer to validate the HTML output."
task test: :build do
  require "html-proofer"
  HTMLProofer.check_directory(
    "./_site",
    parallel: { in_threads: 4 },
    ignore_status_codes: [0, 302, 303, 429, 521],
    check_external_hash: true,
    checks: ['Links', 'Images', 'Scripts', 'Favicon', 'OpenGraph'],
    allow_missing_href: true,
    ignore_urls: [
      "https://formulae.brew.sh/",
      "https://github.com/search",
      "https://hackerone.com/homebrew",
      "https://www.patreon.com/homebrew",
      %r{^https://twitter\.com/},
      %r{^https://github\.com/Homebrew/brew.+},
    ]
  ).run
end
