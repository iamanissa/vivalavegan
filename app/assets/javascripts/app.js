//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min

"use strict";

(function(){
  angular
  .module("veganapp", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "stateProvider",
    RouterFunction
  ])
  

  function RouterFunction($stateProvider){
    $stateProvider
    .state("index", {
      url: "/",
      template: "<p> Yay we can see this </p>",
      controller: "indexCtrl",
      controllerAs: "indexVM"
    })
  }
})();
