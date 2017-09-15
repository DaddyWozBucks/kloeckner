class WeatherViewController {
  /** @ngInject */
  constructor(weatherService) {
    this.weatherService = weatherService;
    this.tempView = 'C';
  }
  getIcon(datum) {
    if (datum) {
      return 'wi wi-owm-' + datum.weather[0].id;
    }
  }
  toggleScale(unit) {
    this.tempView = unit;
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
