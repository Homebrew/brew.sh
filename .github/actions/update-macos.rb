# frozen_string_literal: true

require "yaml"

versions = File.read("brew/Library/Homebrew/brew.sh", encoding: "UTF-8")
               .scan(/^HOMEBREW_MACOS_OLDEST_SUPPORTED="(\d+(?:\.\d+)*)"$/).flatten
abort "Expected one oldest supported macOS version" unless versions.one?

version = versions.first
names = File.read("brew/Library/Homebrew/macos_version.rb", encoding: "UTF-8")
            .scan(/^\s*([a-z_]+):\s*"#{Regexp.escape(version)}",?\s*(?:#.*)?$/).flatten
abort "Expected one release name for macOS #{version}" unless names.one?

name = names.first.split("_").map(&:capitalize).join(" ")
File.write("_data/macos.yml", { "oldest_supported" => "#{name} #{version}" }.to_yaml)
