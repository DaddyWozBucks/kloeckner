import {API} from '../constants/Api';

export class WeatherService {

  constructor($http, $cacheFactory, $q, $log) {
    this.http = $http;
    this.weatherCache = $cacheFactory('weather');
    this.q = $q;
    this.logger = $log;
  }

  getLatLng(lat, lng) {
    const req = {
      method: 'POST',
      url: API.devUrl + '/weather/latlng',
      data: {
        lat,
        lng
      },
      headers: {
        'Content-Type': 'application/json'
      },
      cache: this.weatherCache
    };
    const deferred = this.q.defer();
    this.http(req).then(response => deferred.resolve(response.data), err => {
      this.logger.log(err);
      deferred.reject(err);
    });
    return deferred.promise;
  }
  getCity(city) {
    const req = {
      method: 'POST',
      url: API.devUrl + '/weather/city',
      data: {
        city
      },
      headers: {
        'Content-Type': 'application/json'
      },
      cache: this.weatherCache
    };
    this.logger.log(req);
    const deferred = this.q.defer();
    this.http(req).then(response => deferred.resolve(response.data), err => {
      this.logger.log(err);
      deferred.reject(err);
    });
    return deferred.promise;
  }
}

