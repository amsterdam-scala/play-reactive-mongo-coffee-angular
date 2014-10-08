app = angular.module('myApp', [
  'ngRoute',
  'ui.bootstrap'
])

angular.module('myApp', ['ngRoute'])
    .config ($routeProvider) -> $routeProvider
        .when('/', {templateUrl: '/assets/partials/view.html'})
        .when('/users/create', {templateUrl: '/assets/partials/create.html'})
        .otherwise({redirectTo: '/'})