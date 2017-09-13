import angular from 'angular';
import 'moment'
import 'angular-material';
import {WeatherService} from './app/weather/Weather';
import {App} from './app/containers/App';
import {Header} from './app/components/header/Header';
import {WeatherView} from './app/components/weatherview/WeatherView';
import {Landing} from './app/components/landing/Landing';
import {CityService} from './app/services/Cities';
import {KelvinFormat, Kelvin, Kph, TimeFormat, DistChar, Unix} from './app/constants/Filters';
import 'angular-ui-router';

import routesConfig from './routes';

import './index.scss';

angular
  .module('app', ['ui.router', 'ngMaterial'])
  .config(routesConfig)
  .service('weatherService', WeatherService)
  .service('cityService', CityService)
  .component('app', App)
  .component('headerComponent', Header)
  .component('weatherView', WeatherView)
  .component('landing', Landing)
  .filter('kph', Kph)
  .filter('kelvinFormat', KelvinFormat)
  .filter('timeFormat', TimeFormat)
  .filter('distChar', DistChar)
  .filter('unix', Unix);
