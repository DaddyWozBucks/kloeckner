
class WeatherController < ApplicationController
  include HTTParty
  def lat_lng
      resp = HTTParty.get("https://api.openweathermap.org/data/2.5/forecast?lat=#{params[:lat]}&lon=#{params[:lng]}&appid=861450ee29bf241bb092f08fb4675e45")
    Weather.parseData(resp)
     render json: resp
  end
  
   def city
     url = "https://api.openweathermap.org/data/2.5/forecast?q=#{params[:city]["name"]},#{params[:city]["isoCode"]}&appid=861450ee29bf241bb092f08fb4675e45"
     p url
      resp = HTTParty.get(url)
     Weather.parseData(resp)
     render json: resp
  end
end
