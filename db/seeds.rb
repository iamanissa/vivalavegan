# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
Food.destroy_all

# Restaurant List
johnny = Restaurant.create(name: "Johnny Rockets", info: "Johnny Rockets is an American restaurant franchise whose themed decor is based upon 1950s diner-style restaurants.", category: "American", photo_url: "https://upload.wikimedia.org/wikipedia/en/0/0f/Johnny_Rockets_logo.png")
taco = Restaurant.create(name: "Taco Bell", info: "Taco Bell serves a variety of Tex-Mex foods including tacos, burritos, quesadillas, nachos, other specialty items", category: "Tex-Mex", photo_url: "http://goodlogo.com/images/logos/taco_bell_logo_2934.gif")
bk = Restaurant.create(name: "Burger King", info: "Burger King, often abbreviated as BK, is an American global chain of hamburger fast food restaurants.", category: "American", photo_url: "http://3.bp.blogspot.com/-kwZJdPLmoSg/Tqr6q2upUXI/AAAAAAAACUc/j2jNOlxAXI0/s1600/Burger+King+Logo.jpg")
ihop = Restaurant.create(name: "IHOP", info: "International House of Pancakes, usually known as IHOP is a United States-based family restaurant chain that specializes in breakfast foods.", category: "American", photo_url: "http://www.wired.com/wp-content/uploads/2015/06/ihope-orig-inline.jpg")
Restaurant.create(name: "Applebee's", info: "Applebee's is an American Family Restaurant that serves Steaks, Burgers, Hamburgers, and Salads. Most have a bar that serves alcolic beverages.", category: "American", photo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Applebee's.svg/1280px-Applebee's.svg.png")
Restaurant.create(name: "Bennigans", info: "Bennigan's is an Irish pub-themed casual dining restaurant with a focus on focus on the food, drinks and Irish Hospitality.", category: "American", photo_url: "https://upload.wikimedia.org/wikipedia/commons/2/26/Bennigan's_logo.png")
Restaurant.create(name: "BJ’s Restaurant and Brewhouse", info: "BJ’s Restaurant and Brewhouse is a family friendly restaurant who puts an inovative spin on america's favorite foods, including deep dish pizzas, salads, sandwiches, pastas and steaks.", category: "American", photo_url: "https://c2.staticflickr.com/2/1174/3169072483_4411b54c4f_b.jpg")
Restaurant.create(name: "Blaze Pizza", info: "Blaze Pizza is a build your own pizza restaurant focused on artisanal ingredients, a blazing hot oven, and a fast-fire’d, perfectly cooked pizza.", category: "American", photo_url: "https://upload.wikimedia.org/wikipedia/en/0/0f/Johnny_Rockets_logo.png")
Restaurant.create(name: "Bruegger’s Bagels", info: "Bruegger’s Bagels is committed to serving genuine New York-style bagels and real Vermont cream cheese.", category: "American", photo_url: "https://www.brueggers.com/wp-content/uploads/2015/09/desktopLogo.png")






# Johnny Rockets Foods
Food.create(name: "Steamliner Burger", ingredients: "bun, Boca Burger, grilled onions, lettuce, tomato, pickles, mustard", tag: "American", photo_url: "https://s-media-cache-ak0.pinimg.com/736x/04/b8/c1/04b8c1801c5ac492e27fe7fe2f3a5c14.jpg", restaurant: johnny)
Food.create(name: "American Fries", ingredients: "potatoes", tag: "American", photo_url: "http://lootlo.pk/wp-content/uploads/2015/06/American-Fries-998.png", restaurant: johnny)

#Taco Bell Foods
Food.create(name: "Chips & Guacamole", ingredients: "white ground corn, canola oil, avocado, water, tomato, jalepeno, salt, cilantro, lemon, lime juice", tag: "Tex-Mex", photo_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=61475862", restaurant: taco)
Food.create(name: "cinnamon twists", ingredients: "wheat flour, yellow corn meal, rice flour, salt, sugar, cinnamon, soybean oil", tag: "Tex-Mex", photo_url: "http://cdn1.theodysseyonline.com/files/2015/09/23/635785791360452614-1241498290_Taco_Bell_Cinnamon_Twists_828761.jpg", restaurant: taco)
Food.create(name: "Fresco Bean Burrito", ingredients: "pinto beans, soybean oil, salt, sugar, beet powder, natural flavors, sunflower oil, corn flour, enriched wheat flour, water, cottonseed oil, baking soda, molasses,tomato powder, onion powder, spices, garlic powder", tag: "Tex-Mex", photo_url: "http://s3.amazonaws.com/etntmedia/media/images/ext/409519412/taco-bell-fresco-bean-burrito-md.jpg", restaurant: taco)
Food.create(name: "Premium Latin Rice", ingredients: "enriched long grain rice, water, canola oil, salt, natural flavor, sugar, parsley, garlic, onion powder, cilantro", tag: "Tex-Mex", photo_url: "http://s3.amazonaws.com/etntmedia/media/images/ext/692189025/22395_Sides_PremiumLatinRice_1400x788.jpg", restaurant: taco)
Food.create(name: "Black Beans", ingredients: "black beans, water, onion, canola oil, dextrose, salt, natural flavor, corn starch, corn oil, onion powder, garlic powder, turmeric, salt, chili powder, garlic, onion", tag: "Tex-Mex", photo_url: "http://s3.amazonaws.com/etntmedia/media/images/ext/692189025/22395_Sides_PremiumLatinRice_1400x788.jpg", restaurant: taco)

#Burger King Foods
Food.create(name: "French Fries", ingredients: "potatoes", tag: "American", photo_url: "http://www.bk.com/sites/default/files/HERO_0001_French_Fries.png", restaurant: bk)
Food.create(name: "Maple Flavored Oatmeal", ingredients: "oats, maple syrup, brown sugar", tag: "American", photo_url: "http://www.bk.com/sites/default/files/HERO_0038_Original_Maple_Flavored_Quaker_Oatmeal.png", restaurant: bk)

#IHOP Foods
Food.create(name: "Hash Browns", ingredients: "potatoes", tag: "American", photo_url: "http://www.foxvalleyfoodie.com/wp-content/uploads/2012/06/homemade-shredded-hash-browns.jpg", restaurant: ihop)
Food.create(name: "House Salad", ingredients: "mixed greens, red onion, tomato, croutons", tag: "American", photo_url: "http://www.ihop.com/menus/main-menu/salads/-/media/ihop/MenuItems/Soups%20and%20Salads/House%20Salad/HouseSalad2.png?mh=367", restaurant: ihop)
Food.create(name: "Fruit Bowl", ingredients: "watermelon, grapes, pineapple, honeydew, cantelope", tag: "American", photo_url: "http://feistycook.com/WP/wp-content/uploads/2013/02/ihop-fruitbowl-site.jpg", restaurant: ihop)
