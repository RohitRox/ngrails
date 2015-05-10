@app.controller 'homeCtrl', ['$scope', '$resource', 'postFac', ($scope, $resource, post) ->
  $scope.test = "Bonjour";

  User = $resource('api/posts');
  user = User.query();
]