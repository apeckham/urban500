content = File.read(File.dirname(__FILE__) + "/500.html")

run proc { |request|
  puts "uri=#{request["REQUEST_URI"]} referer=#{request["HTTP_REFERER"]}"
  [500, {"Content-Type" => "text/html"}, [content]]
}