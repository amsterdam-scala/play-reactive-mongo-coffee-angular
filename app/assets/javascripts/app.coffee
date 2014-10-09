app = angular.module('myApp', [
  'ngRoute',
  'ui.bootstrap'
])

angular.module('myApp', ['ngRoute'])
    .config ($routeProvider) -> $routeProvider
        .when('/', {templateUrl: '/assets/partials/view.html'})
        .when('/users/create', {templateUrl: '/assets/partials/create.html'})
        .when('/users/delete/:firstName', {templateUrl: '/assets/partials/delete.html'})
        .otherwise({redirectTo: '/'})