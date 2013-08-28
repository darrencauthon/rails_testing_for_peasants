require File.expand_path(File.dirname(__FILE__) + '/../../../config/environment')
require 'minitest/autorun'
require 'minitest/spec'

describe WeatherController do
  it "should be an application controller" do
    WeatherController.new.is_a?(ApplicationController).must_equal true
  end
end
