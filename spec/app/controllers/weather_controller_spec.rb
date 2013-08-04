require File.expand_path(File.dirname(__FILE__) + '/../../../config/environment')
require 'minitest/autorun'
require 'minitest/spec'

describe WeatherController do
  it "should say hello" do
    WeatherController.new.say_hello.must_equal "Hello"
  end
end
