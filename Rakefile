require "rake"

task :default => :build

desc "Build the site."
task :build do
  sh "bundle exec jekyll build"
end

desc "Run html proofer to validate the HTML output."
task :test => :build do
  require "html/proofer"
  HTML::Proofer.new("./_site",
      :parallel => { :in_threads => 4 },
      :favicon => true
  ).run
end
