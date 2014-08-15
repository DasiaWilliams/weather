require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/weather.rb'



get '/' do
@weather_stuff =  Weather.new()
@print = @weather_stuff.print_weather
@picture = @weather_stuff.image_weather
erb :index # This tells your program to use the html associated with the index.erb file in your browser.

end