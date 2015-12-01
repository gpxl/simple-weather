require 'rails_helper'

RSpec.describe WeatherController, :type => :controller do
  describe 'GET #index' do
    render_views
    it 'defaults to 97212' do
      get :index
      expect(response.body).to include('97212')
      expect(response.body).to include('Portland, OR')
    end

    it 'responds to valid zipcode' do
      get :index, zipcode: '98074'
      expect(response.body).to include('98074')
      expect(response.body).to include('Redmond, WA')
    end

    it 'shows error for invalid zipcode' do
      get :index, zipcode: 'foobar'
      expect(response.body).to include('Invalid Zipcode')
    end
  end


end
