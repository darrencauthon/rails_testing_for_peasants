class WeatherController < ApplicationController
  def index
    location = Location.current
    @weather = Weather.get_for location
  end
end
