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
    favicon: true,
    http_status_ignore: [0],
    assume_extension: true,
    check_external_hash: true,
    check_favicon: true,
    check_opengraph: true,
    check_html: true,
    check_img_http: true,
    url_ignore: ["http://formulae.brew.sh"]
  ).run
end

desc "Dump analytics data"
task :analytics do
  ["build-error", "install", "install-on-request", "os-version"].each do |type|
    sh "brew formula-analytics --days-ago=365 --json --#{type} > _data/#{type}.json"
  end
end
