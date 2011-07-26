task :push do
  exec "git push origin master && git push heroku master"
end

task :default do
  exec "ruby #{File.dirname(__FILE__)}/test.rb"
end