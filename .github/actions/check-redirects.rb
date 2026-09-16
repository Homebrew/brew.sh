require 'pathname'
require 'yaml'

post_folder = '_posts'
release_post_regex = /^\d{4}-\d{2}-\d{2}-homebrew-(\d+\.\d+\.\d+)\.md$/
front_matter_regex = /\A---\s*\n(.*?)\n---\s*\n/m

files_with_bad_redirects = []

Pathname.glob("#{post_folder}/*").each do |post_file|
  file_name = post_file.basename
  match = file_name.to_s.match release_post_regex
  next if match.nil?

  front_matter = post_file.read[front_matter_regex, 1]
  redirects = front_matter.nil? ? nil : YAML.safe_load(front_matter)['redirect_from']

  # `redirect_from` takes either a single path or a list of them, so compare
  # against the parsed value rather than matching the raw line.
  files_with_bad_redirects << file_name unless Array(redirects).include?("/blog/#{match[1]}/")
end

exit if files_with_bad_redirects.empty?

puts <<~MESSAGE
  Error: the following release posts do not contain a redirect from `/blog/<version>`:
    #{files_with_bad_redirects.join("\n  ")}
MESSAGE

exit 1
