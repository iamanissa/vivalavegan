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
  - Angular router
  - Angular material


## Approach Taken:
-


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
