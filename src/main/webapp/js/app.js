var taskManagerModule = angular.module('taskManagerApp', ['ngAnimate']);

taskManagerModule.controller('taskManagerController', function ($scope,$http) {
	
	var urlBase="http://localhost:8080/publicador";
	$scope.toggle=true;
	$scope.selection = [];
	$scope.periodicidades=['Semanal','Diaria'];
	$scope.medioAlertaes=['Medio Alerta 1','Medio Alerta 3'];
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
	
	//get all tasks and display initially
	$http.get(urlBase+'/objetivoes').
    	success(function(data) {
	        $scope.tasks = data;
	        for(var i=0;i<$scope.tasks.length;i++){
	           	 $scope.selection.push($scope.tasks[i].taskId);
	        }
    });
	
	//add a new task
	$scope.addTask = function addTask() {
		if($scope.minimo=="" || $scope.maximo==""){
			alert("Insufficient Data! Please provide values for task name, description, priortiy and status");
		}
		else{
		 $http.post(urlBase + '/objetivoes',$scope).
		  success(function(data) {
			 alert("Task added");
		    });
		}
	};
		
	// toggle selection for a given task by task id
	  $scope.toggleSelection = function toggleSelection(taskId) {
	    var idx = $scope.selection.indexOf(taskId);

	    // is currently selected
	    if (idx > -1) {
	      $http.get(urlBase + '/objetivoes/' +taskId).
		  success(function(data) {
			 alert("Task unmarked");
			 $scope.tasks = data;		       
		    });
	    }

	    // is newly selected
	    else {
	      $http.post(urlBase + '/objetivoes/' +taskId).
		  success(function(data) {
			 alert("Task marked completed");
			 $scope.tasks = data;
		    });
	      $scope.selection.push(taskId);
	    }
	  };
	  
	
	// Archive Completed Tasks
	  $scope.archiveTasks = function archiveTasks() {
		  $http.post(urlBase + '/tasks/archive/' + $scope.selection).
		  success(function(data) {
			  $scope.tasks = data;
		       alert("Successfully Archived");
		    });
	  };
	
});

//Angularjs Directive for confirm dialog box
taskManagerModule.directive('ngConfirmClick', [
	function(){
         return {
             link: function (scope, element, attr) {
                 var msg = attr.ngConfirmClick || "Are you sure?";
                 var clickAction = attr.confirmedClick;
                 element.bind('click',function (event) {
                     if ( window.confirm(msg) ) {
                         scope.$eval(clickAction);
                     }
                 });
             }
         };
 }]);