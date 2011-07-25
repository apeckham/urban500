require "rubygems"
require "bundler/setup"

require "test/unit"
require "rack/test"

class MyTest < Test::Unit::TestCase
  include Rack::Test::Methods

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
  
  def app
    Rack::Builder.parse_file(File.dirname(__FILE__) + "/config.ru").first
  end
end