Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'weather/latlng' => 'weather#lat_lng'
  post 'weather/city' => 'weather#city_str'
end
