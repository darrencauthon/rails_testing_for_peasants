require File.expand_path(File.dirname(__FILE__) + '/../../../config/environment')
require 'minitest/autorun'
require 'minitest/spec'
require 'mocha/setup'

describe WeatherController do
  it "should be an application controller" do
    WeatherController.new.is_a?(ApplicationController).must_equal true
  end

  describe "showing the current weather" do

    let(:controller) { WeatherController.new }
    let(:weather)    { Object.new }
    let(:location)   { Object.new }

    it "should show the current weather" do
      Location.stubs(:current).returns location
      Weather.stubs(:get_for).with(location).returns weather
      controller.index
      controller.instance_eval { @weather }.must_be_same_as weather
    end
  end

end
