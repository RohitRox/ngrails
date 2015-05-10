this.app.controller('homeCtrl', [
  '$scope', 'Posts', '$log', function($scope, Posts, $log) {
    $scope.test = "Bonjour";
    return Posts.query().$promise.then(function(data) {
      $scope.post = data;
    });
  }
]);

this.app.directive('viewPost', function(){
	return{
		restrict: 'E',
		templateUrl: 'assets/templates/viewPost.html'
	}
}
)
