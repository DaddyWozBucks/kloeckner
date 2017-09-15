
class LandingController {
  /** @ngInject */
  constructor(weatherService, $q, cityService, $log) {
    this.logger = $log;
    this.weatherService = weatherService;
    this.cityService = cityService;
    this.getCityWeather('berlin, DE');
    this.search = {
      lat: 0.00,
      lng: 0.00
    };
    this.searchText = '';
    this.matchBool = true;
    this.matchPrompt = '';
  }
  handleError(err) {
    this.logger.log(err + ' ERROR');
  }
  getCityWeather(city) {
    this.searchText = city;
    this.logger.log(this.searchText + '  : searchtext');
    this.weatherService.getCity(city).then(data => this.setWeather(data, 'text', city), err => this.handleError(err));
  }
  checkResults(result, text) {
    this.logger.log(text + '  :text');
    this.logger.log(angular.lowercase(text).includes(angular.lowercase(result.city.name)));
    if (result) {
      if (angular.lowercase(text).includes(angular.lowercase(result.city.name)) > 0) {
        this.matchBool = true;
      } else {
        this.matchBool = false;
        this.matchPrompt = result.city.name + ', ' + result.city.country;
      }
    } else {
      this.matchBool = false;
      this.matchPrompt = false;
    }
  }
  clearSearch() {
    this.matchBool = true;
    this.weatherData = false;
    this.searchText = '';
  }
  setWeather(weather, mode, text) {
    this.matchBool = true;
    this.weatherData = false;
    if (mode === 'text') {
      this.checkResults(weather, text);
    }
    this.weatherData = weather;
  }
  handleSearch(text) {
    this.searchText = text;
    this.logger.log(this.searchText + '  : searchtext');
    return this.cityService.searchName(text).then(data => this.setWeather(data, 'text', text), err => this.handleError(err));
  }
  searchLatLng() {
    return this.weatherService.getLatLng(this.search.lat, this.search.lng).then(data => this.setWeather(data, 'll'), err => this.handleError(err));
  }
  randomLatlngs() {
    this.searchText = '';
    this.search.lat = this.getRandomInRange(-90, 90, 3);
    this.search.lng = this.getRandomInRange(-180, 180, 3);
    this.searchLatLng();
  }
  getRandomInRange(from, to, fixed) {
    return Number(((Math.random() * (to - from)) + from).toFixed(fixed));
  }

}

export const Landing = {
  template: require('./Landing.html'),
  controller: LandingController,
  bindings: {
  }
};
