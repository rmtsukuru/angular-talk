angular.module('Projects', [])
  .controller('ProjectsController', ['$scope', function($scope) {
    $scope.projects = [
      {title: 'An approved project', description: 'An approved project', approved: true},
      {title: 'An unapproved project', description: 'An unapproved project', approved: false}
    ];

    $scope.addProject = function() {
      $scope.projects.push({title: $scope.projectTitle, description: $scope.projectDescription, approved: false})
      $scope.projectTitle = "";
      $scope.projectDescription = "";
    };

    $scope.activeProjects = function() {
      var active = [];
      angular.forEach($scope.projects, function(project){
        if(project.approved){
          active.push(project);
        }
      })
      return active;
    };

    $scope.inactiveProjects = function() {
      var inactive = [];
      angular.forEach($scope.projects, function(project){
        if(!project.approved){
          inactive.push(project);
        }
      })
      return inactive;
    };

    $scope.numActiveProjects = function() {
      return $scope.activeProjects().length;
    };

    $scope.numInactiveProjects = function() {
      return $scope.inactiveProjects().length;
    }

  }]);
