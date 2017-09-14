class Weather < ApplicationRecord
  validates_presence_of :data, :datetime
  def self.parseData(data)
    tmp = {}
    results = {}
    data['list'].each { |v|
      day = Time.at(v['dt']).strftime('%Y-%m-%d')
      if  !tmp[day]
        tmp[day] = {
          "dataPoints" =>[v],
          "averages" => {},
          "extremes" => {},
          "charts" => {}
          }
      else
        tmp[day]["dataPoints"].push(v)
      end
      }
    tmp.each { |k, v|
     results[k] = Weather.condenseData(v)
      }
    results['city'] = data['city']
    return results
    
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
    data["dataPoints"].each { |d| 
      dTime = Time.at(d["dt"]).strftime('%H:%m')
        if  d["main"]["temp_min"] < min_temp
          min_temp =  d["main"]["temp_min"]
        elsif d["main"]["temp_max"] > max_temp
          max_temp =  d["main"]["temp_max"]
        end
       a_temp += d["main"]["temp"]
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
       d["weather"].each {|w| weatherIds.push(w["id"])}
       a_wind_speed += d["wind"]["speed"]
      a_wind_dir += d["wind"]["deg"]
       if !data["charts"]["temp"]
          data["charts"]["temp"] = {"val" => [d["main"]["temp"]], "labels" => [dTime]}
        else
          data["charts"]["temp"]["val"].push(d["main"]["temp"])
         data["charts"]["temp"]["labels"].push(dTime)
        end

        if !data["charts"]["pressure"]
          data["charts"]["pressure"] = {"val" => [d["main"]["pressure"]], "labels" => [dTime]}
        else
          data["charts"]["pressure"]["val"].push(d["main"]["pressure"])
         data["charts"]["pressure"]["labels"].push(dTime)
        end

        if !data["charts"]["humidity"]
          data["charts"]["humidity"] = {"val" => [d["main"]["humidity"]], "labels" => [dTime]}
        else
          data["charts"]["humidity"]["val"].push(d["main"]["humidity"])
         data["charts"]["humidity"]["labels"].push(dTime)
        end
      if !data["charts"]["wind"]
          data["charts"]["wind"] = {"val" => [d["wind"]["speed"]], "labels" => [dTime]}
        else
          data["charts"]["wind"]["val"].push(d["wind"]["speed"])
         data["charts"]["wind"]["labels"].push(dTime)
        end
      }
    data["averages"]["temp"] = a_temp / count
    data["averages"]["pressure"] = a_pres / count
    data["averages"]["humidity"] = a_hum / count
    data["averages"]["wind_speed"] = a_wind_speed / count
    data["averages"]["wind_dir"] = a_wind_dir / count
    data["averages"]["weatherId"] = findMode(weatherIds)
    
    
    
    return data
  end
end
private
def findMode(arr)
  return arr.max_by { |i| arr.count(i) }
end
