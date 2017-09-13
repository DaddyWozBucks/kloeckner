
class LandingController {
  /** @ngInject */
  constructor(weatherService, $q, cityService, $log) {
    this.q = $q;
    this.logger = $log;
    this.weatherService = weatherService;
    this.cityService = cityService;
    this.weatherService.getCity({name: 'berlin', isoCode: 'DE'}).then(data => this.setWeather(data));
    this.search = {
      lat: 0.00,
      lng: 0.00
    };
  }
  getCityWeather(city) {
    this.weatherService.getCity(city).then(data => this.setWeather(data));
  }
  setWeather(weather) {
    this.logger.log(weather);
    this.weatherData = weather;
  }
  handleSearch(text) {
    return this.cityService.searchName(text).then(data => data);
  }
  searchLatLng() {
    return this.weatherService.searchLatLng(this.search.lat, this.search.lng).then(data => this.setWeather(data));
  }

}

export const Landing = {
  template: require('./Landing.html'),
  controller: LandingController,
  bindings: {
  }
};
