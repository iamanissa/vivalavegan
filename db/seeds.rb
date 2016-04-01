# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Food.destroy_all
Restaurant.destroy_all

Restaurant.create(name: "Johnny Rockets", info: "Johnny Rockets is an American restaurant franchise whose themed decor is based upon 1950s diner-style restaurants.", category: "American", photo_url: "https://upload.wikimedia.org/wikipedia/en/0/0f/Johnny_Rockets_logo.png")
Restaurant.create(name: "Taco Bell", info: "Taco Bell serves a variety of Tex-Mex foods including tacos, burritos, quesadillas, nachos, other specialty items", category: "Mexican", photo_url: "http://goodlogo.com/images/logos/taco_bell_logo_2934.gif")
Restaurant.create(name: "Burger King", info: "Burger King, often abbreviated as BK, is an American global chain of hamburger fast food restaurants.", category: "American", photo_url: "http://3.bp.blogspot.com/-kwZJdPLmoSg/Tqr6q2upUXI/AAAAAAAACUc/j2jNOlxAXI0/s1600/Burger+King+Logo.jpg")
ihop = Restaurant.create(name: "IHOP", info: "International House of Pancakes, usually known as IHOP is a United States-based family restaurant chain that specializes in breakfast foods.", category: "American", photo_url: "http://www.wired.com/wp-content/uploads/2015/06/ihope-orig-inline.jpg")

Food.create(name: "hash browns", ingredients: "potatoes", tag: "American", photo_url: "https://upload.wikimedia.org/wikipedia/commons/9/98/Kartoffelpuffer.jpg", restaurant: ihop)
