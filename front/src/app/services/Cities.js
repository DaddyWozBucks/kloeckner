import {CityNames} from '../constants/Cities';
export class CityService {

  constructor($http, $q, $log) {
    this.http = $http;
    this.q = $q;
    this.logger = $log;
  }

  searchName(text) {
    const deferred = this.q.defer();
    const results = [];
    angular.forEach(CityNames, city => {
      if (city.name.indexOf(text) > -1) {
        results.push(city);
      }
    });
    deferred.resolve(results);
    return deferred.promise;
  }
}
