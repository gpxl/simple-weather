[ ![Codeship Status for gpxl/simple-weather](https://codeship.com/projects/b372c4a0-7a7c-0133-33b8-22676f811343/status?branch=master)](https://codeship.com/projects/119146)

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

#[Simple Weather: Rails](https://simple-weather-rails.herokuapp.com)
###A simple weather app using Rails and the WUnderground API

Given a zipcode, this will return the current conditions and 3 day forcast from WUnderground. Very simple and probably should have been an Ember or Sinatra app.

##Variants
* Simple Weather: Ember [repo](https://github.com/gpxl/simple-weather-ember) | [demo](http://simple-weather-rails.herokuapp.com)

##Author
- Email: gerlando@gmail.com
- Twitter: http://twitter.com/gpxl
- GitHub: https://github.com/gpxl

## Running this locally

From the root of the repository, install the tools used to develop.

    $ bundle install

In the root of the repository, add a .env file with your WUnderground API token

    $ WU_API_TOKEN=YOUR_API_KEY

Then serve it on a local server on http://localhost:3000/

    $ rails server

## Running tests

    $ rake spec
