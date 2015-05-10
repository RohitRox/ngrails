this.app.controller('postCtrl', [
  '$scope', 'Posts', '$log', '$stateParams', function($scope, Posts, $log, $stateParams) {
    console.log($stateParams)
    return Posts.getPost({ id: $stateParams.id}).$promise.then(function(data) {
      $scope.post = data;
    });

  }
]);