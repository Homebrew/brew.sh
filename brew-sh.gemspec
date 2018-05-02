# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "brew-sh"
  spec.version       = "1.0.0"
  spec.authors       = ["Mike McQuaid"]
  spec.email         = ["mike@mikemcquaid.com"]

  spec.summary       = "https://brew.sh's Jekyll theme."
  spec.homepage      = "https://github.com/Homebrew/brew.sh"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "github-pages"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-seo-tag"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
