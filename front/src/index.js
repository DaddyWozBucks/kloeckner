import angular from 'angular';
import 'moment';
import 'angular-material';
import 'chart.js';
import 'angular-chart.js';
import 'angular-material/angular-material.css';
import {WeatherService} from './app/weather/Weather';
import {App} from './app/containers/App';
import {Header} from './app/components/header/Header';
import {TextInput} from './app/components/textinput/TextInput';
import {WeatherView} from './app/components/weatherview/WeatherView';
import {Landing} from './app/components/landing/Landing';
import {CityService} from './app/services/Cities';
import {KelvinFormat, Kelvin, Kph, TimeFormat, DistChar, Unix} from './app/constants/Filters';
import 'angular-ui-router';

import routesConfig from './routes';

import './index.scss';

angular
  .module('app', ['ui.router', 'ngMaterial', 'chart.js'])
  .config(routesConfig)
  .service('weatherService', WeatherService)
  .service('cityService', CityService)
  .component('app', App)
  .component('headerComponent', Header)
  .component('weatherView', WeatherView)
  .component('landing', Landing)
  .component('textInput', TextInput)
  .filter('kph', Kph)
  .filter('kelvinFormat', KelvinFormat)
  .filter('timeFormat', TimeFormat)
  .filter('distChar', DistChar)
  .filter('unix', Unix)
  .filter('kelvin', Kelvin)
  .config(ChartJsProvider => ChartJsProvider.setOptions({colors: ['#F44336', '#EF9A9A', '#90CAF9', '#1565C0', '#00BCD4', '#006064', '#4D5360']}));
