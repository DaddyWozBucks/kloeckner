FactoryGirl.define do
  factory :weather do
    datetime { '2017-09-17T21:00:00' }
    data {
  {"cod"=>"200", "message"=>0.0028, "cnt"=>40, "list"=>[{"dt"=>1505390400, "main"=>{"temp"=>313.21, "temp_min"=>310.22, "temp_max"=>313.21, "pressure"=>1015.94, "sea_level"=>1017.54, "grnd_level"=>1015.94, "humidity"=>63, "temp_kf"=>2.99}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.46, "deg"=>340.001}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-14 12:00:00"}, {"dt"=>1505401200, "main"=>{"temp"=>309.41, "temp_min"=>307.414, "temp_max"=>309.41, "pressure"=>1016.32, "sea_level"=>1017.97, "grnd_level"=>1016.32, "humidity"=>72, "temp_kf"=>1.99}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"02n"}], "clouds"=>{"all"=>8}, "wind"=>{"speed"=>2.67, "deg"=>359.5}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-14 15:00:00"}, {"dt"=>1505412000, "main"=>{"temp"=>305.65, "temp_min"=>304.656, "temp_max"=>305.65, "pressure"=>1016.79, "sea_level"=>1018.51, "grnd_level"=>1016.79, "humidity"=>88, "temp_kf"=>1}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"02n"}], "clouds"=>{"all"=>8}, "wind"=>{"speed"=>2.31, "deg"=>33.5033}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-14 18:00:00"}, {"dt"=>1505422800, "main"=>{"temp"=>303.41, "temp_min"=>303.41, "temp_max"=>303.41, "pressure"=>1015.94, "sea_level"=>1017.75, "grnd_level"=>1015.94, "humidity"=>89, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.2, "deg"=>69.0008}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-14 21:00:00"}, {"dt"=>1505433600, "main"=>{"temp"=>302.218, "temp_min"=>302.218, "temp_max"=>302.218, "pressure"=>1015.81, "sea_level"=>1017.51, "grnd_level"=>1015.81, "humidity"=>93, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.12, "deg"=>196.505}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-15 00:00:00"}, {"dt"=>1505444400, "main"=>{"temp"=>302.302, "temp_min"=>302.302, "temp_max"=>302.302, "pressure"=>1017.4, "sea_level"=>1019.22, "grnd_level"=>1017.4, "humidity"=>94, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>0.76, "deg"=>124.507}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-15 03:00:00"}, {"dt"=>1505455200, "main"=>{"temp"=>308.409, "temp_min"=>308.409, "temp_max"=>308.409, "pressure"=>1018.94, "sea_level"=>1020.66, "grnd_level"=>1018.94, "humidity"=>71, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.11, "deg"=>114.503}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-15 06:00:00"}, {"dt"=>1505466000, "main"=>{"temp"=>310.671, "temp_min"=>310.671, "temp_max"=>310.671, "pressure"=>1017.59, "sea_level"=>1019.24, "grnd_level"=>1017.59, "humidity"=>63, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.02, "deg"=>281.006}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-15 09:00:00"}, {"dt"=>1505476800, "main"=>{"temp"=>309.838, "temp_min"=>309.838, "temp_max"=>309.838, "pressure"=>1016.26, "sea_level"=>1017.92, "grnd_level"=>1016.26, "humidity"=>63, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>4.32, "deg"=>314.001}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-15 12:00:00"}, {"dt"=>1505487600, "main"=>{"temp"=>306.754, "temp_min"=>306.754, "temp_max"=>306.754, "pressure"=>1016.68, "sea_level"=>1018.33, "grnd_level"=>1016.68, "humidity"=>74, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.11, "deg"=>333.5}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-15 15:00:00"}, {"dt"=>1505498400, "main"=>{"temp"=>303.55, "temp_min"=>303.55, "temp_max"=>303.55, "pressure"=>1017.25, "sea_level"=>1019.02, "grnd_level"=>1017.25, "humidity"=>93, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>0.72, "deg"=>10.0081}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-15 18:00:00"}, {"dt"=>1505509200, "main"=>{"temp"=>302.424, "temp_min"=>302.424, "temp_max"=>302.424, "pressure"=>1016.28, "sea_level"=>1018.06, "grnd_level"=>1016.28, "humidity"=>100, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>0.66, "deg"=>328}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-15 21:00:00"}, {"dt"=>1505520000, "main"=>{"temp"=>301.622, "temp_min"=>301.622, "temp_max"=>301.622, "pressure"=>1015.99, "sea_level"=>1017.89, "grnd_level"=>1015.99, "humidity"=>100, "temp_kf"=>0}, "weather"=>[{"id"=>801, "main"=>"Clouds", "description"=>"few clouds", "icon"=>"02n"}], "clouds"=>{"all"=>12}, "wind"=>{"speed"=>1.22, "deg"=>155}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-16 00:00:00"}, {"dt"=>1505530800, "main"=>{"temp"=>301.599, "temp_min"=>301.599, "temp_max"=>301.599, "pressure"=>1017.71, "sea_level"=>1019.52, "grnd_level"=>1017.71, "humidity"=>99, "temp_kf"=>0}, "weather"=>[{"id"=>802, "main"=>"Clouds", "description"=>"scattered clouds", "icon"=>"03d"}], "clouds"=>{"all"=>36}, "wind"=>{"speed"=>1.41, "deg"=>101.013}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-16 03:00:00"}, {"dt"=>1505541600, "main"=>{"temp"=>306.942, "temp_min"=>306.942, "temp_max"=>306.942, "pressure"=>1019.13, "sea_level"=>1020.89, "grnd_level"=>1019.13, "humidity"=>75, "temp_kf"=>0}, "weather"=>[{"id"=>802, "main"=>"Clouds", "description"=>"scattered clouds", "icon"=>"03d"}], "clouds"=>{"all"=>48}, "wind"=>{"speed"=>1.17, "deg"=>152.5}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-16 06:00:00"}, {"dt"=>1505552400, "main"=>{"temp"=>308.965, "temp_min"=>308.965, "temp_max"=>308.965, "pressure"=>1017.99, "sea_level"=>1019.67, "grnd_level"=>1017.99, "humidity"=>69, "temp_kf"=>0}, "weather"=>[{"id"=>802, "main"=>"Clouds", "description"=>"scattered clouds", "icon"=>"03d"}], "clouds"=>{"all"=>44}, "wind"=>{"speed"=>2.86, "deg"=>318}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-16 09:00:00"}, {"dt"=>1505563200, "main"=>{"temp"=>309.873, "temp_min"=>309.873, "temp_max"=>309.873, "pressure"=>1016.76, "sea_level"=>1018.36, "grnd_level"=>1016.76, "humidity"=>63, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.66, "deg"=>347.502}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-16 12:00:00"}, {"dt"=>1505574000, "main"=>{"temp"=>306.83, "temp_min"=>306.83, "temp_max"=>306.83, "pressure"=>1017.23, "sea_level"=>1018.9, "grnd_level"=>1017.23, "humidity"=>73, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.47, "deg"=>339.002}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-16 15:00:00"}, {"dt"=>1505584800, "main"=>{"temp"=>303.326, "temp_min"=>303.326, "temp_max"=>303.326, "pressure"=>1017.79, "sea_level"=>1019.59, "grnd_level"=>1017.79, "humidity"=>95, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.81, "deg"=>313.501}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-16 18:00:00"}, {"dt"=>1505595600, "main"=>{"temp"=>302.036, "temp_min"=>302.036, "temp_max"=>302.036, "pressure"=>1017.22, "sea_level"=>1018.94, "grnd_level"=>1017.22, "humidity"=>100, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.16, "deg"=>350.004}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-16 21:00:00"}, {"dt"=>1505606400, "main"=>{"temp"=>300.836, "temp_min"=>300.836, "temp_max"=>300.836, "pressure"=>1017, "sea_level"=>1018.79, "grnd_level"=>1017, "humidity"=>100, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.55, "deg"=>92.5011}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-17 00:00:00"}, {"dt"=>1505617200, "main"=>{"temp"=>300.854, "temp_min"=>300.854, "temp_max"=>300.854, "pressure"=>1018.32, "sea_level"=>1020.11, "grnd_level"=>1018.32, "humidity"=>100, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.06, "deg"=>45.5007}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-17 03:00:00"}, {"dt"=>1505628000, "main"=>{"temp"=>307.964, "temp_min"=>307.964, "temp_max"=>307.964, "pressure"=>1019.57, "sea_level"=>1021.22, "grnd_level"=>1019.57, "humidity"=>73, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"02d"}], "clouds"=>{"all"=>8}, "wind"=>{"speed"=>3.71, "deg"=>45.0026}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-17 06:00:00"}, {"dt"=>1505638800, "main"=>{"temp"=>310.918, "temp_min"=>310.918, "temp_max"=>310.918, "pressure"=>1017.89, "sea_level"=>1019.62, "grnd_level"=>1017.89, "humidity"=>60, "temp_kf"=>0}, "weather"=>[{"id"=>801, "main"=>"Clouds", "description"=>"few clouds", "icon"=>"02d"}], "clouds"=>{"all"=>20}, "wind"=>{"speed"=>5.45, "deg"=>35.5087}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-17 09:00:00"}, {"dt"=>1505649600, "main"=>{"temp"=>310.975, "temp_min"=>310.975, "temp_max"=>310.975, "pressure"=>1016.35, "sea_level"=>1018.12, "grnd_level"=>1016.35, "humidity"=>58, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>5.21, "deg"=>21.0074}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-17 12:00:00"}, {"dt"=>1505660400, "main"=>{"temp"=>307.996, "temp_min"=>307.996, "temp_max"=>307.996, "pressure"=>1017.1, "sea_level"=>1018.75, "grnd_level"=>1017.1, "humidity"=>66, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>5.41, "deg"=>19.007}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-17 15:00:00"}, {"dt"=>1505671200, "main"=>{"temp"=>305.045, "temp_min"=>305.045, "temp_max"=>305.045, "pressure"=>1018.4, "sea_level"=>1020.08, "grnd_level"=>1018.4, "humidity"=>76, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>5.01, "deg"=>59.0037}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-17 18:00:00"}, {"dt"=>1505682000, "main"=>{"temp"=>303.234, "temp_min"=>303.234, "temp_max"=>303.234, "pressure"=>1017.4, "sea_level"=>1019.26, "grnd_level"=>1017.4, "humidity"=>83, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.06, "deg"=>83.0026}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-17 21:00:00"}, {"dt"=>1505692800, "main"=>{"temp"=>302.13, "temp_min"=>302.13, "temp_max"=>302.13, "pressure"=>1017.28, "sea_level"=>1019.1, "grnd_level"=>1017.28, "humidity"=>88, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>1.36, "deg"=>71.0012}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-18 00:00:00"}, {"dt"=>1505703600, "main"=>{"temp"=>301.923, "temp_min"=>301.923, "temp_max"=>301.923, "pressure"=>1018.71, "sea_level"=>1020.53, "grnd_level"=>1018.71, "humidity"=>90, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.2, "deg"=>48.0016}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-18 03:00:00"}, {"dt"=>1505714400, "main"=>{"temp"=>308.492, "temp_min"=>308.492, "temp_max"=>308.492, "pressure"=>1019.97, "sea_level"=>1021.71, "grnd_level"=>1019.97, "humidity"=>67, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.21, "deg"=>61.5023}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-18 06:00:00"}, {"dt"=>1505725200, "main"=>{"temp"=>311.145, "temp_min"=>311.145, "temp_max"=>311.145, "pressure"=>1018.68, "sea_level"=>1020.43, "grnd_level"=>1018.68, "humidity"=>58, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>4.87, "deg"=>44.5032}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-18 09:00:00"}, {"dt"=>1505736000, "main"=>{"temp"=>310.715, "temp_min"=>310.715, "temp_max"=>310.715, "pressure"=>1017.28, "sea_level"=>1019, "grnd_level"=>1017.28, "humidity"=>58, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>6.21, "deg"=>24.5012}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-18 12:00:00"}, {"dt"=>1505746800, "main"=>{"temp"=>307.719, "temp_min"=>307.719, "temp_max"=>307.719, "pressure"=>1017.68, "sea_level"=>1019.36, "grnd_level"=>1017.68, "humidity"=>67, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>5.38, "deg"=>19.0011}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-18 15:00:00"}, {"dt"=>1505757600, "main"=>{"temp"=>304.709, "temp_min"=>304.709, "temp_max"=>304.709, "pressure"=>1018.55, "sea_level"=>1020.35, "grnd_level"=>1018.55, "humidity"=>82, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>4.66, "deg"=>43.0029}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-18 18:00:00"}, {"dt"=>1505768400, "main"=>{"temp"=>302.527, "temp_min"=>302.527, "temp_max"=>302.527, "pressure"=>1017.48, "sea_level"=>1019.31, "grnd_level"=>1017.48, "humidity"=>88, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.36, "deg"=>75.002}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-18 21:00:00"}, {"dt"=>1505779200, "main"=>{"temp"=>301.435, "temp_min"=>301.435, "temp_max"=>301.435, "pressure"=>1017.34, "sea_level"=>1019.16, "grnd_level"=>1017.34, "humidity"=>94, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.01, "deg"=>23.5012}, "sys"=>{"pod"=>"n"}, "dt_txt"=>"2017-09-19 00:00:00"}, {"dt"=>1505790000, "main"=>{"temp"=>301.402, "temp_min"=>301.402, "temp_max"=>301.402, "pressure"=>1018.83, "sea_level"=>1020.64, "grnd_level"=>1018.83, "humidity"=>96, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>2.36, "deg"=>59.5}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-19 03:00:00"}, {"dt"=>1505800800, "main"=>{"temp"=>308.756, "temp_min"=>308.756, "temp_max"=>308.756, "pressure"=>1019.9, "sea_level"=>1021.64, "grnd_level"=>1019.9, "humidity"=>66, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.02, "deg"=>77.5005}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-19 06:00:00"}, {"dt"=>1505811600, "main"=>{"temp"=>311.391, "temp_min"=>311.391, "temp_max"=>311.391, "pressure"=>1018.38, "sea_level"=>1020.14, "grnd_level"=>1018.38, "humidity"=>56, "temp_kf"=>0}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}], "clouds"=>{"all"=>0}, "wind"=>{"speed"=>3.91, "deg"=>52.0052}, "sys"=>{"pod"=>"d"}, "dt_txt"=>"2017-09-19 09:00:00"}], "city"=>{"id"=>292968, "name"=>"Abu Dhabi", "coord"=>{"lat"=>24.4667, "lon"=>54.3667}, "country"=>"AE"}} }
  end
end
