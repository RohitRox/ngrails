var appsServices = angular.module('appsServices', ['ngResource']);

appsServices.factory('Posts', ['$resource',
    function ($resource) {
        return $resource('/api/posts', {},
            {});
    }]);
