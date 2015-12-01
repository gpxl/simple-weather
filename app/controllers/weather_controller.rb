class WeatherController < ApplicationController
  def index
    zipcode = filter_zipcode(params[:zipcode])
    @response = Wunderground.new('13fcb02d16148708').forecast_and_conditions_for(zipcode)
  end

  def filter_zipcode(param)
    return param unless param.nil? || param[/\A\d{5}\Z/].nil?
    flash.now[:notice] = "Invalid Zipcode"
    '97212'
  end
end
