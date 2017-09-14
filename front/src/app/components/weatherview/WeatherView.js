class WeatherViewController {
  /** @ngInject */
  constructor(weatherService) {
    this.weatherService = weatherService;
    this.tempView = 'C';
  }
}

export const WeatherView = {
  template: require('./WeatherView.html'),
  controller: WeatherViewController,
  bindings: {
    weatherData: '<',
    lat: '<',
    lng: '<',
    matchBool: '<',
    matchPrompt: '<'
  }
};
