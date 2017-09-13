class WeatherViewController {
  /** @ngInject */
  constructor(weatherService) {
    this.weatherService = weatherService;
  }

}

export const WeatherView = {
  template: require('./WeatherView.html'),
  controller: WeatherViewController,
  bindings: {
    weatherData: '<'
  }
};
