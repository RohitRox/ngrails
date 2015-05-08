@app = angular.module('ngRails', [
  'ngAnimate',
  'ui.router',
  'templates'
])
.config([ '$stateProvider','$urlRouterProvider','$locationProvider', ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'assets/templates/home.html',
      controller: 'HomeCtrl'
    })

  $urlRouterProvider.otherwise('home')

])

@app.run(->
  console.log 'angular app running'
)