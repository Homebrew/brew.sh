require "rake"

task default: :build

def jekyll_config_overrides
  if Jekyll.env == "development"
    {}
  else
    {
      "sass" => {
        "style" => "compressed",
      },
    }
  end
end

desc "Build the site."
task :build do
  require "jekyll"
  Jekyll::PluginManager.require_from_bundler
  Jekyll::Commands::Build.process(jekyll_config_overrides)
end

desc "Serve the site."
task :serve do
  require "jekyll"
  Jekyll::PluginManager.require_from_bundler
  config = Jekyll.configuration(jekyll_config_overrides.merge({
    "incremental" => true,
    "serving"     => true,
    "watch"       => true,
  }))
  Jekyll::Commands::Build.process(config)
  Jekyll::Commands::Serve.process(config)
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
      %r{^https?://twitter\.com/},
      %r{https://github.com/Homebrew/homebrew-science(?:/.+)?},
      %r{https://github.com/Homebrew/brew/.+},
      "https://github.com/mrtnpwn",
      "https://github.com/homebrew/homebrew-php",
    ]
  ).run
end
