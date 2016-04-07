//= require angular.min
//= require angular-resource.min
//= require angular-ui-router.min


"use strict";

(function(){
  angular
  .module("veganapp", [
    "ui.router",
    "ngResource",
    "angular.filter",
    "ngMaterial"
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
      .state("foodIndex", {
        url: "/foodlist",
        templateUrl:"ng-views/foods.index.html",
        controller:"foodsIndexCtrl",
        controllerAs: "foodIndexVM"
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
    restaurantFormFunction,
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

  .factory("RestaurantFoodFactory", [
    "$resource",
    function($resource){
      var Food = $resource("http://localhost:3000/restaurants/:restaurant_id/foods/", {}, {
        update: {method: "PUT"}
      });
      Food.all = Food.query();
      return Food;
    }
  ])

  .factory("FoodFactory", [
    "$resource",
    function($resource){
      var AllFoods = $resource("http://localhost:3000/foods/all", {}, {
        update: {method: "PUT"}
      });
      AllFoods.all = AllFoods.query();
      return AllFoods;
    }
  ])

  .controller("indexCtrl", [
    "RestaurantFactory",
    function(Restaurant){
      var vm = this;
      vm.restaurants = Restaurant.all;
      vm.newRestaurant = new Restaurant();
      vm.destroy = function(restaurant, $index){
        Restaurant.remove({id: restaurant.id}, function(response){
          if(response.success){
            Restaurant.all.splice($index, 1);
          }
        });
      }
    }
  ])

  .controller("showCtrl", [
    "RestaurantFactory",
    "RestaurantFoodFactory",
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
      });
      // add destroy method for restaurant
      vm.destroy = function(index){
        vm.restaurants.splice(index, 1);
      }
    }
  ])
  .controller("foodsIndexCtrl", [
    "RestaurantFactory",
    "FoodFactory",
    function(Restaurant, AllFoods){
      var vm = this;
      vm.foods = AllFoods.all;
      vm.foods.forEach(function(food){
        console.log("hey there!");
        food.restaurant = Restaurant.get({id: food.restaurant_id});
        console.log(food.restaurant);
      });
    }
  ]);

  function restaurantFormFunction(Restaurant){
    return{
      restrict: 'E',
      templateUrl: "ng-views/restaurant.form.html",
      // controller:function($scope){
      //   $scope.processForm = function(){
      //     $scope.formHidden = true;
      //   };
      // },
      // controllerAs: 'formdir',
      scope: {
        restaurant: "=",
        formMethod: "@"
      },
      link: function(scope){
        scope.create = function(){
          Restaurant.save(scope.restaurant, function(response){
            Restaurant.all.push(response);
          });
        };
        scope.update = function (){
          // console.log(scope.restaurant);
          scope.restaurant.$update({id: scope.restaurant.id}, function(response){
            console.log(response);
          });
          //  Restaurant.update({id: scope.restaurant.id}, scope.restaurant, function(response){
          //   console.log("Update Successful!");
          // });
        }
      }
    };
  }


})();
