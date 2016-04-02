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
    function ($stateProvider){
      $stateProvider
      .state("index", {
        url: "/",
        templateUrl: "ng-views/restaurant.index.html",
        controller: "indexCtrl",
        controllerAs: "indexVM"
      })
      .state("show", {
        url: "/:id",
        templateUrl: "ng-views/restaurant.show.html",
        controller: "showCtrl",
        controllerAs: "showVM"
      });
    }
  ])
  .factory("RestaurantFactory", [
    "$resource",
    function($resource){
      var Restaurant = $resource("http://localhost:3000/restaurants/api", {}, {
        update: {method: "PUT"}
      });
      Restaurant.all = Restaurant.query();
      return Restaurant;
    }
  ])
  .controller("indexCtrl", [
    "RestaurantFactory",
    function(Restaurant){
      var vm = this;
      vm.restaurants = Restaurant.all;
    }
  ])
  .controller("showCtrl", [
    "RestaurantFactory",
    "$stateParams",
    function (Restaurant, $stateParams){
      var vm = this;
      Restaurant.all.forEach(function(restaurant){
        if(restaurant.id == $stateParams.id){
          vm.restaurant = restaurant;
        }
      });
    }
  ]);
})();
