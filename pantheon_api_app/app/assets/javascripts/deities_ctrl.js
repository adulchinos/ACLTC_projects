(function() {
  "use strict";
 
  angular.module("app").controller("deitiesCtrl", function($scope, $http){


  	$scope.fetchData = function(){
  		$http.get("/api/v1/deities.json").then(function(response){
  			$scope.deities = response.data["deities"];
  		});

  		$scope.descending = true;
		
  	};



	$scope.changeOrder = function(attribute){
		$scope.orderByAttribute = attribute;
		$scope.descending = !$scope.descending;
	};


  	$scope.addNewDeity = function(newName, newPlaces, newAnimals, newAegis)
  	{
  		var deity = {
  			name: newName,
  			places: newPlaces,
  			animals: newAnimals,
  			aegis: newAegis
  		};

  		$http.post("/api/v1/deities.json", deity).then(function(response){
  			$scope.deities.push(deity);
			  		$scope.newName = "";
			  		$scope.newPlaces = "";
			  		$scope.newAnimals = "";
			  		$scope.newAegis = "";
			  		$scope.errors = null;
  		}, function(error){
  			$scope.errors = error.data.errors;
  		});


  	};
  	window.scope = $scope;



  });
}());