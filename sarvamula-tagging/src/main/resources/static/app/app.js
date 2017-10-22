angular.module('tagging', [
	'ngRoute','ngResource', 'ngAnimate',
	'mgcrea.ngStrap', 'ui.bootstrap'
])
.config(function($dropdownProvider) {
  angular.extend($dropdownProvider.defaults, {
    animation: 'am-flip-x',
    trigger: 'hover'
  });
})
.config(function($routeProvider){
    $routeProvider
	    .when('/',{
	        templateUrl: 'app/views/home.html'
	    })
	    .when('/sarvamula',{
	        templateUrl: 'app/views/browseworks.html'
	    })
	    .when('/tags',{
	        templateUrl: 'app/views/browsetags.html'
	    })
        .when('/search',{
            templateUrl: 'app/views/search.html'
        })
        .when('/help',{
            templateUrl: 'app/views/help.html'
        })
//        .when('/roles',{
//            templateUrl: '/views/roles.html',
//            controller: 'rolesController'
//        })
        .otherwise(
            { redirectTo: '/'}
        );
});