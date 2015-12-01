class WeatherController < ApplicationController
  def index
    zipcode = filter_zipcode(params[:zipcode])
    @response = Wunderground.new(ENV['WU_API_TOKEN']).forecast_and_conditions_for(zipcode)
  end

  private

  def filter_zipcode(param)
    flash.now[:notice] = "Invalid Zipcode" if param.present? && param[/\A\d{5}\Z/].nil?
    return param if param.present? && param[/\A\d{5}\Z/].present?
    return '97212' if param.nil? || param[/\A\d{5}\Z/].nil?
  end
end
