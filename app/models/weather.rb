class Weather < ApplicationRecord
  def self.parseData(data)
    results = {}
    data['list'].map { |v|
      day = DateTime.parse(v['dt']).strftime('%Y-%m-%d')
      p day
      if  !results[day]
        results[day] = {
          "dataPoints" =>[v],
          "averages" => {},
          "extremes" => {},
          "charts" => {}
          }
      else
        results[day]["dataPoints"].push(v)
      end
      }
    results.map { |k, v|
      a_temp = 0.0
      a_pres = 0.0
      a_hum = 0.0
      min_temp = 0.0
      min_pres = 0.0
      min_hum = 0.0
      max_temp = 0.0
      max_pres = 0.0
      max_hum = 0.0
      v["dataPoints"].map { |d| 
        
        }
      }
    
  end
  
  def self.condenseData(data)
    a_temp = 0.0
    a_pres = 0.0
    a_hum = 0.0
    min_temp = 0.0
    min_pres = 0.0
    min_hum = 0.0
    max_temp = 0.0
    max_pres = 0.0
    max_hum = 0.0
    count = 0
    a_wind_speed = 0.0
    a_wind_dir = 0.0
    weatherIds = []
     data["dataPoints"].map { |d| 
        if  d["main"]["temp_min"] < min_temp
          min_temp =  d["main"]["temp_min"]
        elsif d["main"]["temp_max"] > max_temp
          max_temp =  d["main"]["temp_max"]
        end
       a_temp += d["main"]["temp_max"]
       if  d["main"]["pressure"] < min_pres
          min_pres =  d["main"]["pressure"]
        elsif d["main"]["pressure"] > max_pres
          max_pres =  d["main"]["pressure"]
        end
       a_pres += d["main"]["pressure"]
       if  d["main"]["humidity"] < min_hum
          min_hum =  d["main"]["humidity"]
        elsif d["main"]["humidity"] > max_hum
          max_hum =  d["main"]["humidity"]
        end
       a_hum += d["main"]["humidity"]
       count += 1
       d["weather"].map {|w| weatherIds.push(w["id"])}
       a_wind_speed + d["wind"]["speed"]
        a_wind_dir + d["wind"]["deg"]
       
      }
    data["averages"]["temp"] = a_temp / count
    data["averages"]["pressure"] = a_pres / count
    data["averages"]["humidity"] = a_hum / count
      
  end
end
private
def findMode(arr)
    freq = inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    max = freq.values.max
    freq.select { |k, f| f == max }         # extract the keys that have the max frequency

end
#{
#"dt"=>1505682000, 
#"main"=>{
#  "temp"=>284.087,
#  "temp_min"=>284.087,
#  "temp_max"=>284.087,
#  "pressure"=>1025.13,
#  "sea_level"=>1031.05,
#  "grnd_level"=>1025.13,
#  "humidity"=>87,
#  "temp_kf"=>0},
#"weather"=>[{"id"=>803, "main"=>"Clouds", "description"=>"broken clouds", "icon"=>"04n"}], "clouds"=>{"all"=>80}, "wind"=>{"speed"=>1.26, "deg"=>67}, "rain"=>{}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-17 21:00:00"}