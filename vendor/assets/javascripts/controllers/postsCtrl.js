this.app.controller('postsCtrl', [
  '$scope', 'Posts', '$log', function($scope, Posts, $log) {
    return Posts.query().$promise.then(function(data) {
      $scope.post = data;
    });
  }
]);
