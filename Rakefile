require "rake"

task default: :build

JEKYLL_BUILD = "bundle exec jekyll build"
JEKYLL_TEST_BUILD = "bundle exec jekyll build --config _config.yml,_config.test.yml"

desc "Build the site."
task :build do
  sh JEKYLL_BUILD
end

desc "Build the site with test-only settings."
task :build_test do
  sh JEKYLL_TEST_BUILD
end

desc "Run html proofer to validate the HTML output."
task test: :build_test do
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
