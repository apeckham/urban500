task :default do
  system("ruby #{File.dirname(__FILE__)}/test.rb") or raise
  system("git push origin master && git push heroku master") or raise
end

task :iframe do
  require 'erb'
  require 'ostruct'
  template = ERB.new(File.read(File.dirname(__FILE__) + "/iframe.erb"))
  
  %w[401 403 404 416 500 503 504].each do |path|
    @path = path
    puts template.result(binding).inspect
  end
end

task :watch do
  exec "watch --interval 10 'curl -D - -s http://www.urbandictionary.com/server-status'"
end