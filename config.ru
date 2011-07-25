content = File.read(File.dirname(__FILE__) + "/500.html")

run proc { |request|
  [500, {"Content-Type" => "text/html"}, [content]]
}