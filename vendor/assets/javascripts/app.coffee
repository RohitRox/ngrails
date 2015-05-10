@app = angular.module('ngRails', [
  'appsServices',
  'ngAnimate',
  'ui.router',
  'templates',
  'ngResource'
])
.config([ '$stateProvider','$urlRouterProvider','$locationProvider', ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'assets/templates/home.html'
    })

  $urlRouterProvider.otherwise('home')

])

@app.run(->
  console.log 'angular app running'
)
