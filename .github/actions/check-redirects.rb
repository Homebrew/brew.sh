require 'pathname'

post_folder = '_posts'
release_post_regex = /^\d{4}-\d{2}-\d{2}-homebrew-(\d+\.\d+\.\d+)\.md$/

files_with_bad_redirects = []

Pathname.glob("#{post_folder}/*").each do |post_file|
  file_name = post_file.basename
  match = file_name.to_s.match release_post_regex
  next if match.nil?

  if post_file.readlines.grep(%r{^redirect_from: /blog/#{match[1]}/$}).none?
    files_with_bad_redirects << file_name
  end
end

exit if files_with_bad_redirects.empty?

puts <<~MESSAGE
  Error: the following release posts do not contain a redirect from `/blog/<version>`:
    #{files_with_bad_redirects.join("\n  ")}
MESSAGE

exit 1
