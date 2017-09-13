export default routesConfig;

/** @ngInject */
function routesConfig($stateProvider, $urlRouterProvider, $locationProvider) {
  $locationProvider.html5Mode(true).hashPrefix('!');
  $urlRouterProvider.otherwise('/app/landing');

  $stateProvider
    .state('app', {
      url: '/app',
      abstract: true,
      component: 'app'

    })
    .state('app.landing', {
      url: '/landing',
      views: {
        'main@app': {
          component: 'landing'
        }
      }
    })
    .state('app.welcome', {
      url: '/welcome',
      views: {
        'main@app': {
          component: 'welcome'
        }
      }
    })
    .state('app.projects', {
      url: '/projects',
      views: {
        'main@app': {
          component: 'projects'
        }
      }
    })
    .state('app.resume', {
      url: '/resume',
      views: {
        'main@app': {
          component: 'resume'
        }
      }
    })
    .state('app.stack', {
      url: '/stack',
      views: {
        'main@app': {
          component: 'stack'
        }
      }
    });
}
