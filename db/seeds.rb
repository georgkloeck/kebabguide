# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding Ingredients"

  Ingredient.create(kind:"filling", name:"Chicken Kebab", description:"Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")

  Ingredient.create(kind:"filling", name:"Beef Kebab", description:"Döner kebap, literally 'rotating kebab' in Turkish, is sliced lamb, beef, or chicken, slowly roasted on a vertical rotating spit. The Middle Eastern shawarma, Mexican tacos al pastor, and Greek gyros are all derived from the Turkish döner kebab, which was invented in Bursa in the 19th century.The German-style döner kebab sandwich, sometimes called simply 'a kebab' in English, was introduced by Turkish immigrants in Berlin in the 1970s, and has become one of the most popular take-away foods in Germany and much of Europe. It is commonly sold by Turks, and considered a Turkish-German specialty, in Germany.")

  Ingredient.create(kind:"filling", name:"Falafel", description:"Falafel (/fəˈlɑːfəl/; Arabic: فلافل‎, [fæˈlæːfɪl] (About this soundlisten), dialectal: [fæˈlæːfel]) is a deep-fried ball or patty made from ground chickpeas, fava beans, or both. Falafel is a traditional Middle Eastern food, commonly served in a pita, which acts as a pocket, or wrapped in a flatbread known as taboon; falafel also frequently refers to a wrapped sandwich that is prepared in this way. The falafel balls are topped with salads, pickled vegetables, hot sauce, and drizzled with tahini-based sauces. Falafel balls may also be eaten alone as a snack or served as part of a meze tray (assortment of appetizers).")

  Ingredient.create(kind: "filling", name: "Schnitzel", description: "A schnitzel is a thin slice of meat fried in fat. The meat is usually thinned by pounding with a meat tenderizer. Most commonly, the meats are breaded before frying. The breaded schnitzel is popular in many countries and made using veal, pork, chicken, mutton, beef, turkey, or textured vegetable protein as a vegan alternative. It is very similar to the dish escalope in France, tonkatsu in Japan, and the milanesa of Italy, Mexico, Uruguay, Paraguay, Argentina, Brazil and chicken fried steak of the American South.")

  puts "4 Fillings are seeded"

  Ingredient.create(kind: "bread", name: "Pita", description: "Pita is a family of yeast-leavened round flatbreads baked from wheat flour, common in the Mediterranean, Middle East, and neighboring areas. It includes the widely known version with an interior pocket, also known as Arabic bread (Arabic: khubz ʿarabī), Syrian bread, and other names, as well as pocketless versions such as the Greek pita, used to wrap souvlaki. The Western name pita may sometimes be used to refer to various other types of flatbreads that have different names in their local languages, such as numerous styles of Arab khubz (bread).")

  Ingredient.create(kind: "bread", name: "Whole wheat roll", description: "Whole wheat bread or wholemeal bread is a type of bread made using flour that is partly or entirely milled from whole or almost-whole wheat grains, see whole-wheat flour and whole grain. It is one kind of brown bread. Synonyms or near-synonyms for whole-wheat bread outside the United States (e.g., the UK) are whole grain bread or wholemeal bread. Some regions of the US simply called the bread wheat bread, a comparison to white bread. Some varieties of whole-wheat bread are traditionally coated with whole or cracked grains of wheat, though this is mostly decorative compared to the nutritional value of a good quality loaf itself.")

  Ingredient.create(kind: "bread", name: "Syrian flatbread", description: "In Arab countries and also in Turkey, khubz is produced as a round flatbread, 18 cm (7 in) to 30 cm (12 in) in diameter. It is thin and puffs up as it bakes. Since it does not contain any added fat, it dries out rapidly and is best consumed while still warm; later, it may become chewy.")

  puts "4 breads are seeded"

  Ingredient.create(kind: "sauce", name: "Garlic sauce", description: "Garlic sauce is a sauce prepared using garlic as a primary ingredient. It is typically a pungent sauce, with the depth of garlic flavor determined by the amount of garlic used. The garlic is typically crushed or finely diced. Simple garlic sauce is composed of garlic and another ingredient to suspend the tuber via emulsion, such as oil, butter or mayonnaise. Various additional ingredients can be used to prepare the sauce.")

  Ingredient.create(kind: "sauce", name: "Peanut sauce", description: "The main ingredient is ground roasted peanuts, for which peanut butter can act as a substitute.[4] Several different recipes for making peanut sauces exist, resulting in a variety of flavours, textures and consistency. A typical recipe usually contains ground roasted peanuts or peanut butter (smooth or crunchy), coconut milk, soy sauce, tamarind, galangal, garlic, and spices (such as coriander seed or cumin).[2] Other possible ingredients are chili peppers, sugar, fried onion, and lemongrass. The texture and consistency (thin or thick) of a peanut sauce corresponds to the amount of water being mixed in it.")

  Ingredient.create(kind: "sauce", name: "Herbal sauce", description: "Serve this yogurt with basmati rice, quinoa, or couscous. Use to garnish lamb, chicken or fish kebabs. Spoon a dollop into pureed soups and shellbeans just before serving. Or thin with a little water to make a creamy dressing ideal for romaine or little gem lettuces.")

  Ingredient.create(kind: "sauce", name: "Hot sauce", description: "Many recipes for hot sauces exist, but the only common ingredient is some variety of chili pepper. Many hot sauces are made by using chili peppers as the base and can be as simple as adding salt and vinegar. Other sauces use some type of fruits or vegetables as the base and add the chili peppers to make them hot.[7] Manufacturers use many different processes from aging in containers to pureeing and cooking the ingredients to achieve a desired flavor. Because of their ratings on the Scoville scale, Ghost pepper and Habanero peppers are used to make the hotter sauces but additional ingredients are used to add extra heat, such as pure capsaicin extract and mustard oil. Other common ingredients include vinegar and spices. Vinegar is used primarily as a natural preservative, but flavored vinegars can be used to alter the flavour.")

  puts "4 sauces are seeded"

  Ingredient.create(kind: "salad", name: "Iceberg lettuce", description: "A basic sald,")
  Ingredient.create(kind: "salad", name: "Tomatoes", description: "Red, juicy, hopefully not from the Netherlands.")
  Ingredient.create(kind: "salad", name: "Red Onions", description: "Don't order when on a date.")
  Ingredient.create(kind: "salad", name: "White Onions", description: "Don't order when on a date either.")
  Ingredient.create(kind: "salad", name: "Pickled Red Cabbage", description: "Red cabbage.")
  Ingredient.create(kind: "salad", name: "Cucumber", description: "It's green and long.")
  Ingredient.create(kind: "salad", name: "Coriander", description: "A herb. Order it, when you like it.")
  puts "7 salads are seeded"


  Ingredient.create(kind: "extra", name: "Goat cheese", description: "A much loved and common addition")
  Ingredient.create(kind: "extra", name: "Squeeze of lime", description: "Some like more acidity")
  Ingredient.create(kind: "extra", name: "Pinch of zumak", description: "Tradtional turkish condiment")
  Ingredient.create(kind: "extra", name: "Hot powder", description: "Will put hair on your chest")

  puts "4 extras are seeded"

  puts "Ingredienst are seeded"

puts "_______________________________________________"

puts "Seeding Cuisines"

  Cuisine.create(name: "Turkish", description:"It is considered that kebabs come from an earlier time when Nomadic tribesmen grilled meat on their swords. In his 18th century travel books, Ottoman traveler Evliya Çelebi mentions kebab as a horizontal stack of meat. In the 1860s Iskender Efendi from Bursa contributes to the kebab with a new angle – vertical grilling and serving it in thin slices. The döner kebap, which simply means rotating kebab, stands out as an innovation in the history of Turkish cuisine.")
  Cuisine.create(name: "Syrian", description:"Kebab Halabi (Aleppo Kebab in Arabic), which is more widely known as kebab Hindi, is a ground beef kebab baked with a tomato-onion reduction attributed to Syrian cuisine. ")
  Cuisine.create(name: "Sudanese", description:" Since discovering the joy of falafel and peanut sauces, I've checked out a couple of Berlin's other Sudanese restaurants, Khartoum and Marafina. Both are very good, but I still think Sahara is in a class of its own. They offer a wide range of ingredients, including excellent vegetarian and vegan options: falafel, tofu, halloumi, magali (fried vegetables), chicken or kofta. You can then get essentially whichever ones you like combined in either a platter or a sandwich, and smothered in their signature peanut sauce.")
  Cuisine.create(name: "Persian", description: "Kabab koobideh (Persian: کباب کوبیده‎) or kūbide (Persian: کوبیده‎) is an Iranian meat kabab made from ground lamb or beef, often mixed with ground pepper and chopped onions.")
  puts "4 Cuisines seeded"

puts "_______________________________________________"

puts "seeding Restaurants"

  restaurant = Restaurant.create(name:"Hamdi Baba", address: "Turmstraße 57, 10551 Berlin", description:"The third Store by the Hmdi family franchise", cuisine_id:"1")


   Restaurant.create(name:"Alleppo Grill", address: "Mehringdamm 32, 10961 Berlin", description:"Typical Aleppo style schawarma", cuisine_id:"2")

   Restaurant.create(name:"Little Sudan", address: "Schönhauser Allee 36, 10435 Berlin", description:"The best penut sause this side of the Nile.", cuisine_id:"3")

   Restaurant.create(name:"Al Reda", address: "Hauptstraße 159, 10827 Berlin", description:"The best Persian Style Restaurant in Turmstraße", cuisine_id:"4")

   puts "4 Restaurants are seeded"

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
    Review.create(restaurant_id: (1..4).to_a.sample, user_id: (1..10).to_a.sample)
  end
  puts "10 reviews seeded"

puts "_______________________________________________"

puts "seeding Ingredient_Reviews"

500.times do IngredientReview.create(review_id: (1..100).to_a.sample, ingredient_id: (1..22).to_a.sample, score: (1..5).to_a.sample)
end
puts "seeding 50 random Ingredient_Reviews"

puts "__________________Done Seeding_______________________"
