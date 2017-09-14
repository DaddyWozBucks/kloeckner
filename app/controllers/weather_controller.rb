
class WeatherController < ApplicationController
  include HTTParty
  def lat_lng
      resp = HTTParty.get("https://api.openweathermap.org/data/2.5/forecast?lat=#{params[:lat]}&lon=#{params[:lng]}&appid=861450ee29bf241bb092f08fb4675e45")
    if  resp["cod"] === "200" && resp["list"]
     json_response(Weather.parseData(resp), 200)
    else
      json_response(false, 400)
    end 
  end
  
   def city_obj
     url = "https://api.openweathermap.org/data/2.5/forecast?q=#{params[:city]["name"]},#{params[:city]["isoCode"]}&appid=861450ee29bf241bb092f08fb4675e45"
    resp = HTTParty.get(url)
   p resp["city"]["name"]
    if  resp["cod"] === "200" && resp.response.code === "200"
     json_response(Weather.parseData(resp), 200)
    else
      json_response(false, 400)
    end 

  end
  def city_str
    
       url = "https://api.openweathermap.org/data/2.5/forecast?q=#{params[:city]}&appid=861450ee29bf241bb092f08fb4675e45"
     
      resp = HTTParty.get(url)
    if resp["cod"] === "200" && resp.response.code === "200"
       
     json_response(Weather.parseData(resp), 200)
    else
      
      json_response(false, 400)
    end 

  end
  private 
  def search_params
      params.require(:weather).permit(:data, :datetime)
  end
end
