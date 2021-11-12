require "fileutils"

p Dir.glob("vendor/bundle/ruby/2.7.0/bundler/gems/*")

["_config.yml", "index.md", "404.md"].each{|filename|
  path = "vendor/bundle/ruby/2.7.0/bundler/gems/redshot-*/" + filename
  FileUtils.cp(Dir.glob(path)[0], filename)
}

posts = "_posts"
FileUtils.mkdir_p("#{posts}") unless File.exists?("#{posts}")

