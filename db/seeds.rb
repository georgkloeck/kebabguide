# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding Ingredients"

  Ingredient.create(kind: "filling", name: "Chicken Kebab", description: "Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")
  Ingredient.create(kind: "filling", name: "Greek Gyros", description: "Whatever the type of meat, it's thinly sliced and pounded flat, and then stacked on a vertical spit to cook rotisserie style.")
  Ingredient.create(kind: "filling", name: "Lamb Kebab", description: "Whatever the type of meat, it's thinly sliced and pounded flat, and then stacked on a vertical spit to cook rotisserie style.")
  Ingredient.create(kind: "filling", name: "Beef Kebab", description: "Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")
  Ingredient.create(kind: "filling", name: "Veal Kebab", description: "Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")
  Ingredient.create(kind: "filling", name: "Falafel", description: "Falafel (/fəˈlɑːfəl/; Arabic: فلافل‎, [fæˈlæːfɪl] (About this soundlisten), dialectal: [fæˈlæːfel]) is a deep-fried ball or patty made from ground chickpeas, fava beans, or both. Falafel is a traditional Middle Eastern food, commonly served in a pita, which acts as a pocket, or wrapped in a flatbread known as taboon; falafel also frequently refers to a wrapped sandwich that is prepared in this way. The falafel balls are topped with salads, pickled vegetables, hot sauce, and drizzled with tahini-based sauces. Falafel balls may also be eaten alone as a snack or served as part of a meze tray (assortment of appetizers).")
  Ingredient.create(kind: "filling", name: "Lahmacun", description: "Lahmacun is a round, thin piece of dough topped with minced meat, minced vegetables and herbs including onions, tomatoes and parsley, and spices such as cayenne pepper, paprika, cumin and cinnamon, then baked.")
  Ingredient.create(kind: "filling", name: "Halloumi", description: "Halloumi or haloumi is a semi-hard, unripened, brined cheese made from a mixture of goat's and sheep's milk, and sometimes also cow's milk. It has a high melting point and so can easily be fried or grilled. This property makes it a popular meat substitute.")
  Ingredient.create(kind: "filling", name: "Hara Masala Kebab", description: "This Kebab is very special for all vegetarians. Hara Masala Kebab,itself is made with green paste of green peas, spinach, and potatoes along with all the spices.")
  Ingredient.create(kind: "filling", name: "Dürüm", description: "A durum or durme is a Turkish wrap that is usually filled with typical döner kebab ingredients.")
  Ingredient.create(kind: "filling", name: "Shawarma", description: "Shawarma is a dish in Middle Eastern cuisine consisting of meat cut into thin slices, stacked in a cone-like shape, and roasted on a slowly-turning vertical rotisserie or spit. Originally made of lamb or mutton, today's shawarma may also be chicken, turkey, beef, or veal.")
  Ingredient.create(kind: "filling", name: "Schnitzel", description: "A schnitzel is a thin slice of meat fried in fat. The meat is usually thinned by pounding with a meat tenderizer. Most commonly, the meats are breaded before frying. The breaded schnitzel is popular in many countries and made using veal, pork, chicken, mutton, beef, turkey, or textured vegetable protein as a vegan alternative. It is very similar to the dish escalope in France, tonkatsu in Japan, and the milanesa of Italy, Mexico, Uruguay, Paraguay, Argentina, Brazil and chicken fried steak of the American South.")
  Ingredient.create(kind: "filling", name: "Fish Kebab", description: "The best marinated Fish Kebabs.")
  Ingredient.create(kind: "filling", name: "Bánh mỳ Döner Kebab", description: "This vietnamese version has some fundamental differences with the original döner kebab. First of all, pork is used instead of beef and lamb. Second, the meat is served in a Vietnamese baguette. Thirdly, the meat is topped with sour vegetables and chili sauce.")
  Ingredient.create(kind: "filling", name: "Mutton Kebab", description: "Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")

  puts "15 Fillings are seeded"

  Ingredient.create(kind: "bread", name: "Pita", description: "Pita is a family of yeast-leavened round flatbreads baked from wheat flour, common in the Mediterranean, Middle East, and neighboring areas. It includes the widely known version with an interior pocket, also known as Arabic bread (Arabic: khubz ʿarabī), Syrian bread, and other names, as well as pocketless versions such as the Greek pita, used to wrap souvlaki. The Western name pita may sometimes be used to refer to various other types of flatbreads that have different names in their local languages, such as numerous styles of Arab khubz (bread).")
  Ingredient.create(kind: "bread", name: "Whole wheat roll", description: "Whole wheat bread or wholemeal bread is a type of bread made using flour that is partly or entirely milled from whole or almost-whole wheat grains, see whole-wheat flour and whole grain. It is one kind of brown bread. Synonyms or near-synonyms for whole-wheat bread outside the United States (e.g., the UK) are whole grain bread or wholemeal bread. Some regions of the US simply called the bread wheat bread, a comparison to white bread. Some varieties of whole-wheat bread are traditionally coated with whole or cracked grains of wheat, though this is mostly decorative compared to the nutritional value of a good quality loaf itself.")
  Ingredient.create(kind: "bread", name: "Syrian flatbread", description: "In Arab countries and also in Turkey, khubz is produced as a round flatbread, 18 cm (7 in) to 30 cm (12 in) in diameter. It is thin and puffs up as it bakes. Since it does not contain any added fat, it dries out rapidly and is best consumed while still warm; later, it may become chewy.")
  Ingredient.create(kind: "bread", name: "Naan", description: "Naan is a leavened, oven-baked flatbread found in the cuisines mainly of Western Asia, South Asia, Indonesia, Myanmar and the Caribbean.")
  Ingredient.create(kind: "bread", name: "lavash or yufka flatbreads", description: "Wrap for durum")
  Ingredient.create(kind: "bread", name: "Tandoor bread", description: "Baked in a tandoor oven")
  Ingredient.create(kind: "bread", name: "Vietnamese baguette", description: "Vietnamese baguette")

  puts "7 breads are seeded"

  Ingredient.create(kind: "sauce", name: "Garlic sauce", description: "Garlic sauce is a sauce prepared using garlic as a primary ingredient. It is typically a pungent sauce, with the depth of garlic flavor determined by the amount of garlic used. The garlic is typically crushed or finely diced. Simple garlic sauce is composed of garlic and another ingredient to suspend the tuber via emulsion, such as oil, butter or mayonnaise. Various additional ingredients can be used to prepare the sauce.")
  Ingredient.create(kind: "sauce", name: "Tamarind sauce", description: "Tamarind is a leguminous tree bearing edible fruit that is indigenous to tropical Africa.")
  Ingredient.create(kind: "sauce", name: "Peanut sauce", description: "The main ingredient is ground roasted peanuts, for which peanut butter can act as a substitute.[4] Several different recipes for making peanut sauces exist, resulting in a variety of flavours, textures and consistency. A typical recipe usually contains ground roasted peanuts or peanut butter (smooth or crunchy), coconut milk, soy sauce, tamarind, galangal, garlic, and spices (such as coriander seed or cumin).[2] Other possible ingredients are chili peppers, sugar, fried onion, and lemongrass. The texture and consistency (thin or thick) of a peanut sauce corresponds to the amount of water being mixed in it.")
  Ingredient.create(kind: "sauce", name: "Fresh lime juice", description: "Freshens up your choice of Kebab.")
  Ingredient.create(kind: "sauce", name: "Herbal sauce", description: "Serve this yogurt with basmati rice, quinoa, or couscous. Use to garnish lamb, chicken or fish kebabs. Spoon a dollop into pureed soups and shellbeans just before serving. Or thin with a little water to make a creamy dressing ideal for romaine or little gem lettuces.")
  Ingredient.create(kind: "sauce", name: "Mango sauce", description: "Adds a sweet and delicious flavor.")
  Ingredient.create(kind: "sauce", name: "Hot sauce", description: "Many recipes for hot sauces exist, but the only common ingredient is some variety of chili pepper. Many hot sauces are made by using chili peppers as the base and can be as simple as adding salt and vinegar. Other sauces use some type of fruits or vegetables as the base and add the chili peppers to make them hot.[7] Manufacturers use many different processes from aging in containers to pureeing and cooking the ingredients to achieve a desired flavor. Because of their ratings on the Scoville scale, Ghost pepper and Habanero peppers are used to make the hotter sauces but additional ingredients are used to add extra heat, such as pure capsaicin extract and mustard oil. Other common ingredients include vinegar and spices. Vinegar is used primarily as a natural preservative, but flavored vinegars can be used to alter the flavour.")
  Ingredient.create(kind: "sauce", name: "Yogurt-based tzatziki", description: "Yogurt-based tzatziki")
  Ingredient.create(kind: "sauce", name: "Chili sauce", description: "You'd better be ready for that!")
  Ingredient.create(kind: "sauce", name: "Mayo-Yogurt sauce", description: "Yummy.")
  Ingredient.create(kind: "sauce", name: "Olive oil", description: "Extra Virgin")
  Ingredient.create(kind: "sauce", name: "Barbecue sauce", description: "Barbecue sauce")
  Ingredient.create(kind: "sauce", name: "Sesame sauce", description: "Sesame sauce")
  Ingredient.create(kind: "sauce", name: "Donair sauce", description: "Distinctive sweet sauce made with condensed milk, vinegar, sugar, and garlic.")
  Ingredient.create(kind: "sauce", name: "Hummus", description: "Hummus is a dip, spread, or savory dish made from cooked, mashed chickpeas blended with tahini, lemon juice, and garlic. It is popular in the Middle East and in Middle Eastern cuisine around the globe. It can also be found in most grocery stores in North America and Europe.")
  Ingredient.create(kind: "sauce", name: "Baba ghanoush", description: "Baba ghanoush, also spelled baba ganoush or baba ghanouj, is a Levantine appetizer of mashed cooked eggplant mixed with tahini, olive oil, possibly lemon juice, and various seasonings. Here served as a sauce/dip.")
  Ingredient.create(kind: "sauce", name: "Tzatziki", description: "Tzatziki, cacık or tarator is a sauce found in the cuisines of Southeast Europe and the Middle East. It is made of salted strained yogurt or diluted yogurt mixed with cucumbers, garlic, salt, olive oil, sometimes with vinegar or lemon juice, and herbs such as dill, mint, parsley and thyme.")
  Ingredient.create(kind: "sauce", name: "Tahini", description: "Tahini or tahina is a condiment made from toasted ground hulled sesame. It is served by itself or as a major ingredient in hummus, baba ghanoush, and halva. Tahini is used in the cuisines of the Levant and Eastern Mediterranean, the South Caucasus, as well as parts of North Africa.")


  puts "18 sauces are seeded"

  Ingredient.create(kind: "salad", name: "Iceberg lettuce", description: "A basic shredded lettuce.")
  Ingredient.create(kind: "salad", name: "Tomatoes", description: "Red, juicy, hopefully not from the Netherlands.")
  Ingredient.create(kind: "salad", name: "Red onions", description: "Don't order when on a date.")
  Ingredient.create(kind: "salad", name: "White onions", description: "Don't order when on a date.")
  Ingredient.create(kind: "salad", name: "Yellow onions", description: "Don't order when on a date.")
  Ingredient.create(kind: "salad", name: "Pickled red cabbage", description: "Red cabbage.")
  Ingredient.create(kind: "salad", name: "Cucumber", description: "It's green and long.")
  Ingredient.create(kind: "salad", name: "Pickled cucumber", description: "Pickled")
  Ingredient.create(kind: "salad", name: "Seedless english cucumber", description: "Sliced")
  Ingredient.create(kind: "salad", name: "Fresh coriander", description: "A herb. Order it, when you like it.")
  Ingredient.create(kind: "salad", name: "Garlic", description: "Please be kind to your collegues and don't eat it at lunch.")
  Ingredient.create(kind: "salad", name: "Potatos", description: "Grilled")
  Ingredient.create(kind: "salad", name: "Mushrooms", description: "Grilled")
  Ingredient.create(kind: "salad", name: "Spinach", description: "Spinach")
  Ingredient.create(kind: "salad", name: "Mint", description: "Mint")
  Ingredient.create(kind: "salad", name: "Ginger", description: "Thinly sliced")
  Ingredient.create(kind: "salad", name: "Fresh parsley", description: "Fresh")
  Ingredient.create(kind: "salad", name: "Eggplant", description: "Roasted and yummy.")
  Ingredient.create(kind: "salad", name: "Zucchini", description: "Zucchini")
  Ingredient.create(kind: "salad", name: "Grilled peppers", description: "Different colours")


  puts "20 salads are seeded"

  Ingredient.create(kind: "extra", name: "Goat cheese", description: "A much loved and common addition")
  Ingredient.create(kind: "extra", name: "Gouda cheese", description: "Make it Cheesy.")
  Ingredient.create(kind: "extra", name: "Squeeze of lime", description: "Some like more acidity")
  Ingredient.create(kind: "extra", name: "Pinch of zumak", description: "Tradtional turkish condiment")
  Ingredient.create(kind: "extra", name: "Hot powder", description: "Will put hair on your chest")
  Ingredient.create(kind: "extra", name: "Smoked paprika", description: "Smokey extra")
  Ingredient.create(kind: "extra", name: "Paneer", description: "it's a fresh cheese common in the Indian subcontinent.")
  Ingredient.create(kind: "extra", name: "Cumin", description: "Cumin is a spice used in the cuisines of many cultures in both whole and ground form.")
  Ingredient.create(kind: "extra", name: "Coconut coating", description: "For exotic flavor.")
  Ingredient.create(kind: "extra", name: "Raisins", description: "Raisins")
  Ingredient.create(kind: "extra", name: "Rice Pilaf", description: "Pilaf or pilau is a rice dish that involves cooking in stock or broth, adding spices, and other ingredients such as vegetables or meat.")

  puts "11 extras are seeded"

  puts "Ingredienst are seeded"

puts "_______________________________________________"

puts "Seeding Cuisines"

  Cuisine.create(name: "Turkish", description:"It is considered that kebabs come from an earlier time when Nomadic tribesmen grilled meat on their swords. In his 18th century travel books, Ottoman traveler Evliya Çelebi mentions kebab as a horizontal stack of meat. In the 1860s Iskender Efendi from Bursa contributes to the kebab with a new angle – vertical grilling and serving it in thin slices. The döner kebap, which simply means rotating kebab, stands out as an innovation in the history of Turkish cuisine.")
  Cuisine.create(name: "Syrian", description:"Kebab Halabi (Aleppo Kebab in Arabic), which is more widely known as kebab Hindi, is a ground beef kebab baked with a tomato-onion reduction attributed to Syrian cuisine. ")
  Cuisine.create(name: "Sudanese", description:" Since discovering the joy of falafel and peanut sauces, I've checked out a couple of Berlin's other Sudanese restaurants, Khartoum and Marafina. Both are very good, but I still think Sahara is in a class of its own. They offer a wide range of ingredients, including excellent vegetarian and vegan options: falafel, tofu, halloumi, magali (fried vegetables), chicken or kofta. You can then get essentially whichever ones you like combined in either a platter or a sandwich, and smothered in their signature peanut sauce.")
  Cuisine.create(name: "Persian", description: "Kabab koobideh (Persian: کباب کوبیده‎) or kūbide (Persian: کوبیده‎) is an Iranian meat kabab made from ground lamb or beef, often mixed with ground pepper and chopped onions.")
  Cuisine.create(name: "Mughlai cuisine", description: "Mughlai cuisine consists of dishes developed in the medieval Indo-Persian cultural centres of the Mughal Empire. It represents a combination of cuisine of the Indian subcontinent with the cooking styles and recipes of Central Asian and Iranian cuisine.")
  Cuisine.create(name: "Vietnamese cuisine", description: "Vietnamese cuisine")

puts "6 Cuisines seeded"

puts "_______________________________________________"

# puts "seeding Restaurants"

#   restaurant = Restaurant.create(name:"Hamdi Baba", address: "Turmstraße 57, 10551 Berlin", description:"The third Store by the Hmdi family franchise", cuisine_id:"1")


#    Restaurant.create(name:"Alleppo Grill", address: "Mehringdamm 32, 10961 Berlin", description:"Typical Aleppo style schawarma", cuisine_id:"2")

#    Restaurant.create(name:"Little Sudan", address: "Schönhauser Allee 36, 10435 Berlin", description:"The best penut sause this side of the Nile.", cuisine_id:"3")

#    Restaurant.create(name:"Al Reda", address: "Hauptstraße 159, 10827 Berlin", description:"The best Persian Style Restaurant in Turmstraße", cuisine_id:"4")

#    puts "4 Restaurants are seeded"

puts "_______________________________________________"

puts "Seeding default regular user"

User.create(email: "regular@mail.com", password: "password")

puts "_______________________________________________"

puts "Seeding admin user"

User.create(email: "admin@mail.com", password: "password")

puts "_______________________________________________"

puts "Seeding 10 random users"

  10.times do
    user = User.new
    user.email = Faker::Internet.email
    user.password = "1234567"
    user.save!
    p user
  end

puts "_______________________________________________"

puts "Seeding Reviews"
  100.times do
    Review.create(restaurant_id: (1..15).to_a.sample, user_id: (1..10).to_a.sample)
  end
  puts "10 reviews seeded"

puts "_______________________________________________"

puts "seeding Ingredient_Reviews"

56.times do
    Review.create(restaurant_id: 1, user_id: (1..10).to_a.sample)
  end

427.times do IngredientReview.create(review_id: (1..56).to_a.sample, ingredient_id: [5,6,7,16,18,17,27,29,32,40,41,44,48,52,70,68].sample, score: (3..5).to_a.sample)
end

134.times do
  Review.create(restaurant_id: 2, user_id: (1..10).to_a.sample)
end

232.times do IngredientReview.create(review_id: (56..190).to_a.sample, ingredient_id: [1,6,7,8,17,16,23,25,27,28,29,31,34,35,37,41,42,43,46,47,50,55,63,65,66].sample, score: (1..5).to_a.sample)
end
100.times do
    Review.create(restaurant_id: (1..15).to_a.sample, user_id: (1..10).to_a.sample)
  end


puts "__________________Done Seeding_______________________"
