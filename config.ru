content = File.read(File.dirname(__FILE__) + "/500.html")

run proc { |request|
  puts "referer=#{request["HTTP_REFERER"]}"
  [500, {"Content-Type" => "text/html"}, [content]]
}