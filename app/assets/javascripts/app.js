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
    "$stateProvider",
    RouterFunction
  ])
  // .factory("RestaurantFactory", [
  //   "$resource",
  //   function($resource){
  //     var Restaurant = $resource("http://localhost:3000/restaurants.json", {}, {
  //       update: {method: "PUT"}
  //     });
  //     Restaurant.all = Restaurant.query();
  //     return Restaurant;
  //   }
  // ])
  .controller("indexCtrl", [
    // "RestaurantFactory",
    function(Restaurant){
      var vm = this;
      vm.restaurants = Restaurant.all;
    }
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("index", {
      url: "/",
      // templateUrl: "ng-views/restaurant.index.html",
      template: "<p> Hello there, are you sleeping?</p>",
      controller: "indexCtrl",
      controllerAs: "indexVM"
    });
  }
})();
