class WeatherViewController {
  /** @ngInject */
  constructor(weatherService) {
    this.weatherService = weatherService;
    this.tempView = 'C';
  }
  getIcon(datum) {
		if (datum && this.todayDetail) {
			var now = moment(datum.dt);
			if (now.isAfter($scope.todayDetail.sys.sunrise) && now.isBefore($scope.todayDetail.sys.sunset)) {
					var classStr =  "wi wi-owm-day-" + datum.weather[0].id

				return classStr
			} else {
				var classStr =  "wi wi-owm-night-" + datum.weather[0].id
				return classStr
			}
		} else if (datum && !this.todayDetail) {
        var classStr =  "wi wi-owm-" + datum.weather[0].id
				return classStr     
    } else {
			return "";
		}
		
	};
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
