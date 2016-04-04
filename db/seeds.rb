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
taco = Restaurant.create(name: "Taco Bell", info: "Taco Bell serves a variety of Tex-Mex foods including tacos, burritos, quesadillas, nachos, other specialty items", category: "Tex-Mex", gotchas: "Just remember to hold the cheese and sour cream and you are good to go. Taco bell doesn't have any other 'Gotchas.' The actually are the first-ever fast food joint to offer menu items certified by the American Vegetarian Association (AVA) so vegan options are within reach!", photo_url: "http://goodlogo.com/images/logos/taco_bell_logo_2934.gif")
bk = Restaurant.create(name: "Burger King", info: "Burger King, often abbreviated as BK, is an American global chain of hamburger fast food restaurants.", category: "American", gotchas: "Burger King's Morningstar Veggie Burger has both milk and eggs. Their oatmeal contains dairy as well.", photo_url: "http://3.bp.blogspot.com/-kwZJdPLmoSg/Tqr6q2upUXI/AAAAAAAACUc/j2jNOlxAXI0/s1600/Burger+King+Logo.jpg")
ihop = Restaurant.create(name: "IHOP", info: "International House of Pancakes, usually known as IHOP is a United States-based family restaurant chain that specializes in breakfast foods.", category: "American", gotchas: "All IHOP syrups are vegan except for their Butter Pecan Syrup. However, unless you put it on an english muffin (which is listed as vegan), there aren't many things to put syrup on.", photo_url: "http://www.wired.com/wp-content/uploads/2015/06/ihope-orig-inline.jpg")
panera = Restaurant.create(name: "Panera Bread", info: "Panera Bread is an American chain of bakery-café fast casual restaurants in the United States and Canada.", category: "American", photo_url: "http://tomorrowproducts.com/wp-content/uploads/2016/02/panera-bread-logo-panerabread-logo.jpg")
bennigans = Restaurant.create(name: "Bennigans", info: "Bennigan's is an Irish pub-themed casual dining restaurant with a focus on focus on the food, drinks and Irish Hospitality.", category: "Irish", gotchas: "Be weary of the pan the food is cooked in. There have been complaints of cross contamination.", photo_url: "https://upload.wikimedia.org/wikipedia/commons/2/26/Bennigan's_logo.png")
bj = Restaurant.create(name: "BJ’s Restaurant and Brewhouse", info: "BJ’s Restaurant and Brewhouse is a family friendly restaurant who puts an inovative spin on america's favorite foods, including deep dish pizzas, salads, sandwiches, pastas and steaks.", category: "American", photo_url: "https://c2.staticflickr.com/2/1174/3169072483_4411b54c4f_b.jpg")
blaze = Restaurant.create(name: "Blaze Pizza", info: "Blaze Pizza is a build your own pizza restaurant focused on artisanal ingredients, a blazing hot oven, and a fast-fire’d, perfectly cooked pizza.", category: "American", photo_url: "http://isaackalamazoo.org/wp-content/uploads/2016/03/logo-blaze-1.png")
bb = Restaurant.create(name: "Bruegger’s Bagels", info: "Bruegger’s Bagels is committed to serving genuine New York-style bagels and real Vermont cream cheese.", category: "American", photo_url: "https://www.brueggers.com/wp-content/uploads/2015/09/desktopLogo.png")
chilis = Restaurant.create(name: "Chili's", info: "Chili's Grill & Bar is an American casual dining restaurant chain that features Tex-Mex-style cuisine.", category: "Tex-Mex", photo_url: "http://vignette2.wikia.nocookie.net/logopedia/images/3/38/Chili's_2002.svg/revision/latest?cb=20150106212805")
chipotle = Restaurant.create(name: "Chipotle", info: "Chipotle Mexican Grill, Inc. is a chain of fast food restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in Mission burritos and tacos.", category: "Tex-Mex", gotchas: "Chipotle's honey vinaigrette is not vegan as it contains a honey base. In most locations you can either order Sofritas or all veggie. Ordering veggie gets you free guacamole.", photo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Chipotle_Mexican_Grill_logo.svg/1024px-Chipotle_Mexican_Grill_logo.svg.png")
olivegarden = Restaurant.create(name: "Olive Garden", info: "Olive Garden is an American casual dining restaurant chain specializing in Italian-American cuisine.", category: "Italian", photo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/OliveGardenNewLogo2014.png/225px-OliveGardenNewLogo2014.png")


# Johnny Rockets Foods
Food.create(name: "Steamliner Burger", ingredients: "Bun, Boca Burger, Grilled Onions, Lettuce, Tomato, Pickles, Mustard", tag: "American", photo_url: "https://s-media-cache-ak0.pinimg.com/736x/04/b8/c1/04b8c1801c5ac492e27fe7fe2f3a5c14.jpg", restaurant: johnny)
Food.create(name: "American Fries", ingredients: "Potatoes", tag: "American", photo_url: "http://lootlo.pk/wp-content/uploads/2015/06/American-Fries-998.png", restaurant: johnny)

#Taco Bell Foods
Food.create(name: "Chips & Guacamole", ingredients: "White Ground Corn, Canola Oil, Avocado, Water, Tomato, Jalepeno, Salt, Cilantro, Lemon, Lime Juice", tag: "Tex-Mex", photo_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=61475862", restaurant: taco)
Food.create(name: "Cinnamon Twists", ingredients: "Wheat Flour, Yellow Corn Meal, Rice Flour, Salt, Sugar, Cinnamon, Soybean Oil", tag: "Tex-Mex", photo_url: "http://cdn1.theodysseyonline.com/files/2015/09/23/635785791360452614-1241498290_Taco_Bell_Cinnamon_Twists_828761.jpg", restaurant: taco)
Food.create(name: "Fresco Bean Burrito", ingredients: "Pinto Beans, Soybean Oil, Salt, Sugar, Beet Powder, Natural Flavors, Sunflower Oil, Corn Flour, Enriched Wheat Flour, Water, Cottonseed Oil, Baking Soda, Molasses,Tomato Powder, Onion Powder, Spices, Garlic Powder", tag: "Tex-Mex", photo_url: "http://s3.amazonaws.com/etntmedia/media/images/ext/409519412/taco-bell-fresco-bean-burrito-md.jpg", restaurant: taco)
Food.create(name: "Premium Latin Rice", ingredients: "Enriched Long Grain Rice, Water, Canola Oil, Salt, Natural Flavor, Sugar, Parsley, Garlic, Onion Powder, Cilantro", tag: "Tex-Mex", photo_url: "http://s3.amazonaws.com/etntmedia/media/images/ext/692189025/22395_Sides_PremiumLatinRice_1400x788.jpg", restaurant: taco)
Food.create(name: "Black Beans", ingredients: "Black beans, Water, Onion, Canola Oil, Dextrose, Salt, Natural Flavor, Corn Starch, Corn Oil, Onion Powder, Garlic Powder, Turmeric, Salt, Chili Powder, Garlic, Onion", tag: "Tex-Mex", photo_url: "https://s.graphiq.com/sites/default/files/5806/media/images/t2/Taco_Bell_Black_Beans_7393687.jpg", restaurant: taco)

#Burger King Foods
Food.create(name: "French Fries", ingredients: "potatoes", tag: "American", photo_url: "http://www.bk.com/sites/default/files/HERO_0001_French_Fries.png", restaurant: bk)
Food.create(name: "Maple Flavored Oatmeal", ingredients: "Oats, Maple Syrup, Brown Sugar", tag: "American", photo_url: "http://www.bk.com/sites/default/files/HERO_0038_Original_Maple_Flavored_Quaker_Oatmeal.png", restaurant: bk)

#IHOP Foods
Food.create(name: "Hash Browns", ingredients: "potatoes", tag: "American", photo_url: "http://www.foxvalleyfoodie.com/wp-content/uploads/2012/06/homemade-shredded-hash-browns.jpg", restaurant: ihop)
Food.create(name: "House Salad", ingredients: "Mixed Greens, Red Onion, Tomato, Croutons", tag: "American", photo_url: "http://www.ihop.com/menus/main-menu/salads/-/media/ihop/MenuItems/Soups%20and%20Salads/House%20Salad/HouseSalad2.png?mh=367", restaurant: ihop)
Food.create(name: "Fruit Bowl", ingredients: "Watermelon, Grapes, Pineapple, Honeydew, Cantelope", tag: "American", photo_url: "http://feistycook.com/WP/wp-content/uploads/2013/02/ihop-fruitbowl-site.jpg", restaurant: ihop)

#Panera Foods
Food.create(name: "Various Bagels", ingredients: "Unbleached Enriched Wheat Flour, Water, Brown Sugar, Salt, Acerola Extract, Fungal Enzymes, Yeast.", tag: "American", photo_url: "https://www.panerabread.com/content/dam/panerabread/article/grid/a-brief-history-of-the-bagel-in-america-sm.jpg", restaurant: panera)
Food.create(name: "Various Breads", ingredients: "Unbleached Enriched Wheat Flour, Niacin, Reduced Iron, Folic Acid, Water, Salt, Dextrose, Rye Flour, Fungal Enzymes, Ascorbic Acid, Yeast.", tag: "American", photo_url: "http://gopalladio.com/assets/ee-images/made/assets/ee-images/uploads/storefronts/Panera2_700_400.jpg", restaurant: panera)
Food.create(name: "Low-Fat Vegetarian Black Bean Soup", ingredients: "Water, Black beans, Onions, Celery, Carrot, Celery, Onion, Tomato Paste, Corn Oil, Yeast Extract, Potato Flour, Salt, Onion Powder, Garlic Powder, White Pepper, Rosemary Extract, Red Peppers, Modified Corn Starch, Sea Salt, Cumin, Oregano, Red Pepper, Lemon Juice, Garlic Powder.", tag: "American", photo_url: "https://www.panerabread.com/panerabread/menu/details/low-fat-vegetarian-black-bean-soup-bowl.jpg/_jcr_content/renditions/low-fat-vegetarian-black-bean-soup-bowl.desktop.jpeg", restaurant: panera)
Food.create(name: "Low Fat Garden Vegetable Soup Without Pesto", ingredients: "Water, Tomatoes, Wax Beans, Zucchini, Onions, Barley, Cauliflower, Red Bell Pepper, Swiss Chard, Roasted Tomatoes, Tomato Paste, Salt, Rosemary Extract, Onion Powder, Garlic Powder, Cilantro, Corn Starch, Sugar, Natural Yeast Extract, Canola Oil, Sea Salt, Basil.", tag: "American", photo_url: "http://eclecticrecipes.com/wp-content/uploads/2011/01/vegetable-soup.jpg", restaurant: panera)
Food.create(name: "Classic Salad", ingredients: "Romaine Lettuce, Tomatoes, Baby Spinach, Field Greens, Cucumber, Red Onion. ", restaurant: panera)
Food.create(name: "Greek Salad Without cheese", ingredients: "Romaine Lettuce, Tomatoes, Soybean Oil, Water, Distilled Vinegar, Olive Pomace Oil, Cider Vinegar, Salt, Dehydrated Garlic, Black Pepper, Lemon Juice Concentrate, Dehydrated Tarragon, Dehydrated Oregano, Citric Acid, Dehydrated Parsley, Dehydrated Rosemary, Dehydrated Thyme, Dehydrated Bay Leaves, Red Onion, Pepperoncini, Kalmata Olives, Black Pepper.", tag: "American", photo_url: "http://www.thefussiesteater.com/wp-content/uploads/2012/04/IMG_5109.jpg", restaurant: panera)


#Bennigan's Foods
Food.create(name: "Boca Burger (no cheese)", ingredients: "none", tag: "American", photo_url: "http://www.thefussiesteater.com/wp-content/uploads/2012/04/IMG_5109.jpg", restaurant: bennigans)
Food.create(name: "Garden Salad", ingredients: "none", tag: "American", photo_url: "http://www.thefussiesteater.com/wp-content/uploads/2012/04/IMG_5109.jpg", restaurant: bennigans)
Food.create(name: "Roasted Vegetable Primavera (w/o Lemon Butter Sauce)", ingredients: "none", tag: "American", photo_url: "http://www.thefussiesteater.com/wp-content/uploads/2012/04/IMG_5109.jpg", restaurant: bennigans)
