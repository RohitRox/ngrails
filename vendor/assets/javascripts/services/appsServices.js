var appsServices = angular.module('appsServices', ['ngResource']);

appsServices.factory('Posts', ['$resource',
  function ($resource) {
    return $resource('/api/posts', {},
      {
        getPost: { method: "GET", url: "/api/posts/:id", isArray: false }
      });
}]);
