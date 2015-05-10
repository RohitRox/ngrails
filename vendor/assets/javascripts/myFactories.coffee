@app.factory('postFac', ['$resource', ($resource)->
  $resource('api/posts');
])