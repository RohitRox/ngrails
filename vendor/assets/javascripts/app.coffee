@app = angular.module('ngRails', [
  'appsServices',
  'ngAnimate',
  'ui.router',
  'templates',
  'ngResource'
])
.config([ '$stateProvider','$urlRouterProvider','$locationProvider', ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $stateProvider
    .state('root',{
      url: '',
      abstract: true,
      views: {
        'header': {
          templateUrl: 'assets/templates/header.html'
        },
        'footer':{
          templateUrl: 'assets/templates/footer.html'
        }
      }
    })
    .state('root.home', {
      url: '/',
      views: {
        'container@': {
          templateUrl: 'assets/templates/home.html'
        }
      }
    })
    .state('root.demo', {
      url: '/demo',
      views: {
        'container@': {
          templateUrl: 'assets/templates/demo.html'
        }
      }
    })
    .state('root.posts', {
      url: '/posts',
      views: {
        'container@': {
          templateUrl: 'assets/templates/posts.html'
        }
      }
    })
    .state('root.post', {
      url: '/posts/:id',
      views: {
        'container@': {
          templateUrl: 'assets/templates/post.html'
        }
      }
    });

  $urlRouterProvider.otherwise('/')

])

@app.run(->
  console.log 'angular app running'
)
