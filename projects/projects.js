angular.module('CWDG Projects', ['ngRoute', 'ngResource'])

.factory('Projects', ['$resource', function($resource) {
  $resource('http://cwdg-angular-demo.herokuapp.com/projects/:id', id: '@id')
}])

.config(function($routeProvider) {
  $routeProvider
    .when('/', {
      controller: 'ListCtrl',
      templateUrl: 'list.html'
    })
    .when('/edit/:project_id', {
      controller: 'EditCtrl',
      templateUrl: 'detail.html'
    })
    .when('/new', {
      controller: 'CreateCtrl',
      templateUrl: 'detail.html'
    })
    .otherwise({
      redirect_to: '/'
    });
})

.controller('ListCtrl', function($scope, Projects) {
  $scope.projects = Projects;
})

.controller('CreateCtrl', function($scope, Projects) {

})

.controller('EditCtrl', function($scope, Projects) {

})
