angular.module('tagging')
.factory('worksSvc', function($http) {
  var sarvamulaWorks = [], selected, setSelected, getSelected;

  fetchAllSarvamula = function(successCallbackFunc) {
    $http.get('api/works')
    .then(
      function success(response) {
    	  sarvamulaWorks = response.data;
    	  successCallbackFunc(sarvamulaWorks);
      }, 
      function error(response) {
        console.log("error occured when fetching sarvamula")
      }
    );
  }
  
  return {
	  fetchAllSarvamula: fetchAllSarvamula
  }

});
