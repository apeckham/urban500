require "rubygems"
require "bundler/setup"

require "test/unit"
require "rack/test"

class MyTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def setup
    @out = StringIO.new
    $stdout = @out
  end
  
  def teardown
    $stdout = STDOUT
  end

  def test_root
    get "/"
    assert_equal 500, last_response.status
    assert_match /Something went wrong/, last_response.body
  end

  def test_anything
    get "/anything"
    assert_equal 500, last_response.status
    assert_match /Something went wrong/, last_response.body
  end
  
  def test_log
    get "/anything", {}, {"HTTP_REFERER" => "http://www.youtube.com/", "REQUEST_URI" => "/blah"}
    @out.rewind
    actual = @out.read
    
    assert_match %r{referer=http://www.youtube.com/}, actual
    assert_match %r{uri=/blah}, actual
  end
  
  def app
    Rack::Builder.parse_file(File.dirname(__FILE__) + "/config.ru").first
  end
end