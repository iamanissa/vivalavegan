# Viva La Vegan

An app where you can search restaurant chains for vegan option foods.
Add, update, delete restaurants.
View all foods associated with the restaurants.
Find where and what you want to eat.
Enjoy!

## Technologies used:
- HTML
- CSS/SASS
  - Flexbox
  - Font Awesome
- Bootstrap
  - Bootstrap cards, buttons
- Ruby on Rails
  - Postgresql
- AngularJS
  - Angular ui-router
  - Angular ngResource
  - Angular material


## Approach Taken:


- The database was seeded with data for two models: restaurants and foods.  The rails backend renders the data as json at url endpoints using nested routing to access the desired restaurants and their foods.  The angular app uses ngResource to pull in data from the api.  The entire application exists at a main url with different states for restaurant index, restaurant show, and food index.  

- The restaurant index page displays cards for each restaurant using ng-repeat and can be filtered by name or type of cuisine using the index view controller and attaching a variable named filter_on.  There is a button on each card to delete the restaurant.  To add a new restaurant, clicking the “add restaurant” button will display a form using ng-click and ng-show.  

- Clicking on a restaurant card from the index state takes you to a restaurant show state.  A list of the restaurant’s foods are displayed. When a food is clicked on, using ng-class, ng-show, and ng-click,  an info box shows information about the food including ingredients, ratings, and comments .

- Used Bootstrap pills and nav to separate views so that A box next to the restaurant's logo can be updated to show information about the restaurant, common “gotchas” associated with the restaurant, or a form to edit the restaurant.  

- Created a new route for foods, a new view for listing all foods. Added a button on Restaurant show page so that food index page where all of the foods are shown can be accessed from the home page.  Created a food controller and injected Food Factory and Restaurant Factory so that they could be compared to create link that once clicked will take you to that food’s restaurant to see their other offerings.  

- Our CRUD functionality is rooted within a custom directive that we applied to a restaurant form element for creating and updating. When submitting a new restaurant, the user is redirected to that restaurant’s show page; this is made possible using $state.go. The delete functionality is tied to a button that displays on the restaurant index page, on click the restaurant is removed.

- For visual effect a restaurant was defined using Angular Material and a food was defined using bootstrap card classes and css. For responsive design flexbox was used to change how many restaurants or cards were displayed per row.



## Unsolved Problems:
- Cannot add foods to a restaurant.
- Ratings and Comments is not working.
- On refresh things stop showing up.


## To install on local computer:
- Install Rails and Ruby Gems
```
http://guides.rubyonrails.org/getting_started.html
```
- Install and set up Git:
```
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
```
- Install Postgresql
```
http://www.postgresql.org/download/
```
- Create Github account (and it is recommended that you set up SSH).
- On this page, at the top of the screen, click the fork button, to fork this repository.
- From the terminal on your computer, in folder you want repository to be in, do a git clone.

- From the terminal, in your main folder you should now be able to
```
$ bundle install
$ rake db:drop
$ rake db:create
$ rake db:migrate
$ rake db:seed

```
- Finally you should be able to run the rails server
```
$ rails s
```
and see the current application in your browser

```
localhost:3000
```
