(function(){
	"use strict";

	angular.module("app").controller("taskCtrl", function($scope){

		$scope.firstTask = "Do Laundry";
		$scope.secondTask = "Clean Dishes";
		$scope.thirdTask = "Water Plants";


		// $scope.tasks = ["Do Laundry", "Clean Dishes", "Water Plants"];


		// $scope.addTask = function(task){
		// 	if(task === undefined){
		// 		$scope.newTask = undefined;
		// 	} else{
		// 		$scope.tasks.push(task);
		// 		$scope.newTask = undefined;
		// 	}
		// }

		$scope.tasks = [];

		$scope.addTask = function(task){
			if(task !== undefined){

				$scope.tasks.push({taskName: task, struck: false});
				$scope.newTask = undefined;
			}
		}



		$scope.strikeTasks = function(task){
			if(task.struck === false){
			task.struck = true;
			} else {
				task.struck = false;
			}

		}

		$scope.count = function(){
			var incompleteTasks = 0;
			for(var i = 0; i < $scope.tasks.length; i++){
				if(!$scope.tasks[i].struck){
				incompleteTasks ++;
				}
			};
			return incompleteTasks;
		}


		$scope.clearStruck = function(){
			
		}


		window.scope = $scope; 
	});
})();