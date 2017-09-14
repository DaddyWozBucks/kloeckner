const moment = require('moment');
export const KelvinFormat = function () {
  return function (input, key) {
    if (key === 'C') {
      const temp = Math.floor(input - 273.15);
      return temp + ' ' + key;
    } else if (key === 'F') {
      const temp = Math.floor((input * 9 / 5) - 459.67);
      return temp + ' ' + key;
    }
  };
};

export const Kelvin = function () {
  return function (input, key) {
    if (key === 'C') {
      const temp = Math.floor(input - 273.15);
      return temp;
    } else if (key === 'F') {
      const temp = Math.floor((input * 9 / 5) - 459.67);
      return temp;
    }
  };
};

export const Kph = function () {
  return function (input) {
    const speed = Math.floor((input * 3600) / 1000);
    return speed + ' kph';
  };
};

export const DistChar = function () {
  return function (input) {
    const arr = input.split('');
    return arr || '';
  };
};

export const Unix = function () {
  return function (input, format) {
    return moment.unix(input).clone().format(format) || '';
  };
};

export const TimeFormat = function () {
  return function (input, format) {
    return moment(input).clone().format(format) || '';
  };
};
