(function() {
  "use strict";
 
  angular.module("app").controller("peopleCtrl", function($scope){

  	$scope.people = [ 
  		{
  			name: "Camille",
  			details: "hgkhjgkjhg"
  		},
  		{
  			name: "Anne",
  			details: "uykuguyguy"
  		}
  	];


  	$scope.hideAndSeek = true


  	$scope.revealDetails = function(person){
  		

  		if($scope.hideAndSeek){
  			$scope.hideAndSeek = false
  		} else{
  			$scope.hideAndSeek = true
  		}
  	}



  	window.scope = $scope;
  });
 
}());