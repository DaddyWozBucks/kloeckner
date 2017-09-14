
class LandingController {
  /** @ngInject */
  constructor(weatherService, $q, cityService, $log) {
    this.logger = $log;
    this.weatherService = weatherService;
    this.cityService = cityService;
    this.handleSearch('berlin, DE');
    this.search = {
      lat: 0.00,
      lng: 0.00
    };
    this.searchText = '';
    this.matchBool = false;
    this.matchPrompt = '';
  }
  handleError(err) {
    this.logger.log(err + ' ERROR');
  }
  getCityWeather(city) {
    this.weatherService.getCity(city).then(data => this.setWeather(data));
  }
  checkResults(result) {
    this.logger.log(result.city.name);
    this.logger.log(this.searchText);
    this.logger.log(this.searchText.indexOf(result.city.name) < 0);
    if (result) {
      if (this.searchText === result.city.name) {
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
  setWeather(weather) {
    this.matchBool = false;
    this.weatherData = false;
    this.checkResults(weather);
    this.weatherData = weather;
  }
  handleSearch(text) {
    this.searchText = text;
    this.logger.log(this.searchText);
    return this.cityService.searchName(text).then(data => data, err => this.handleError(err));
  }
  searchLatLng() {
    return this.weatherService.getLatLng(this.search.lat, this.search.lng).then(data => this.setWeather(data), err => this.handleError(err));
  }
  randomLatlngs() {
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
