angular.module('tagging')
.controller('WorksCtrl', [
  '$scope', '$http', '$alert', '$modal', '$aside', 'worksSvc', 
  function ($scope, $http, $alert, $modal, $aside, worksSvc) {

	  $scope.sarvamulaFetchSuccessCallback = function(data) {
		  $scope.works = data;
	  };
	  
	  $scope.onClickWork = function() {
			var myOtherAside = $aside(
				{
					scope: $scope, 
					template: 'app/views/worktoc.tpl.html',
					placement: 'left',
					animation: 'am-slide-left',
					//bs-aside: 'aside',
					container: 'body'
				}
			);
  		// Show when some event occurs (use $promise property to ensure the template has been loaded)
  		myOtherAside.$promise.then(function() {
    		myOtherAside.show();
  		});
	  };

	  $scope.todo = function() {
		  alert("Under construction");
//	  	var myAlert = $alert(
//	  		{
//	  			title: 'Holy guacamole!', 
//	  			content: 'Best check yo self, you\'re not looking too good.', 
//	  			placement: 'top',  //top, body
//	  			type: 'alert', //info 
//	  			show: true
//	  		}
//	  	);
	  }

	  $scope.works = [];
	  
	  worksSvc.fetchAllSarvamula($scope.sarvamulaFetchSuccessCallback);
	  
  }
  
]);