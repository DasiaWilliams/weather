require 'nokogiri'
require 'open-uri'
require 'pry'


class Weather

  def initialize
    #webpage
     @weather = "http://www.weather.com/weather/today/New+York+NY+10004:4:US"
    #opening webpage
    @doc = Nokogiri::HTML(open(@weather))
  end
  
  #scraping code
  def print_weather
    @doc.css('div.wx-temperature').collect do |a|
     a.children.text
    end
  end
#getting image
  def image_weather
    @doc.css('div.wx-data-part img').collect do |image|
    image.attr('src')
    end
  end

end
