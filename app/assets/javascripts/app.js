//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min


"use strict";

(function(){
  angular
  .module("veganapp", [
    "ui.router",
    "ngResource",
    "angular.filter"
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
      })
    }
  ])

  .directive("restaurantForm", [
    "RestaurantFactory",
    restaurantFormFunction
  ])

  .factory("RestaurantFactory", [
    "$resource",
    function($resource){
      var Restaurant = $resource("http://localhost:3000/restaurants/:id", {}, {
        update: {method: "PUT"}
      });
      Restaurant.all = Restaurant.query();
      return Restaurant;
    }
  ])

  .factory("FoodFactory", [
    "$resource",
    function($resource){
      var Food = $resource("http://localhost:3000/restaurants/:restaurant_id/foods/", {}, {
        update: {method: "PUT"}
      });
      Food.all = Food.query();
      return Food;
    }
  ])

  .controller("indexCtrl", [
    "RestaurantFactory",
    function(Restaurant){
      var vm = this;
      vm.restaurants = Restaurant.all;
      vm.newRestaurant = new Restaurant();
    }
  ])
  .controller("showCtrl", [
    "RestaurantFactory",
    "FoodFactory",
    "$stateParams",
    function (Restaurant, Food, $stateParams){
      var vm = this;
      Restaurant.all.forEach(function(restaurant){
        if(restaurant.id == $stateParams.id){
          vm.restaurant = restaurant;
        }
        vm.foods = Food.query({restaurant_id: $stateParams.id}, function whenFoodIsLoaded(){
          vm.foods.forEach(function(food){
            food.ingredients = food.ingredients.split(",");
            vm.ingredientlist = vm.foods[0].ingredients;
          });
          vm.foodname = vm.foods[0].name;
        });
      }
    )
  }])

  function restaurantFormFunction(Restaurant){
    return{
      templateUrl: "ng-views/restaurant.form.html",
      scope: {
        restaurant: "="
      },
      link: function(scope){
        scope.create = function(){
          Restaurant.save(scope.restaurant, function(response){
            Restaurant.all.push(response);
          });
        }
      }
    }
  }

})();
