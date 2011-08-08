content = File.read(File.dirname(__FILE__) + "/500.html")

run proc { |request|
  puts "uri=#{request["REQUEST_URI"]} referer=#{request["HTTP_REFERER"]}"

  if request["PATH_INFO"] == "/urban500/healthz"
    [200, {"Content-Type" => "text/plain"}, "ok"]
  else
    [500, {"Content-Type" => "text/html"}, [content]]
  end  
}