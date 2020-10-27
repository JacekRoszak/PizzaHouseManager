# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pizzahouse.create(name: "Corleone", adress: "Wrocław, Krasnala 1/4", menu_id: 1, workinghoures: "09:00 - 23:00")
Menu.create(pizzahouse_id: 1)
Pizzahouse.create(name: "Clemenza", adress: "Poznań, Koziołków 2/4", menu_id: 2, workinghoures: "10:00 - 22:00")
Menu.create(pizzahouse_id: 2)
Pizzahouse.create(name: "Barzini", adress: "Łódź, Fabryczna 3/4", menu_id: 3, workinghoures: "09:00 - 22:30")
Menu.create(pizzahouse_id: 3)
Pizzahouse.create(name: "Sollozzo", adress: "Gdańsk, Neptuna 4/4", menu_id: 4, workinghoures: "09:00 - 24:00")
Menu.create(pizzahouse_id: 4)

Pizza.create(name: "Capriciossa", price: 25, recipe: "Szynka i pieczarki" )
Pizza.create(name: "Margarita", price: 20, recipe: "Passata, parmegiano regiano, mozzarella, oliwa z oliwek" )
Pizza.create(name: "Hawai", price: 28, recipe: "Szynka i ananas" )
Pizza.create(name: "Luca Brasi", price: 30, recipe: "Boczek, papryka, śmietana, koperek" )

Assigment.create(menu_id: 1, pizza_id: 1)
Assigment.create(menu_id: 1, pizza_id: 2)
Assigment.create(menu_id: 1, pizza_id: 4)

Assigment.create(menu_id: 2, pizza_id: 1)
Assigment.create(menu_id: 2, pizza_id: 2)
Assigment.create(menu_id: 2, pizza_id: 3)

Assigment.create(menu_id: 3, pizza_id: 1)
Assigment.create(menu_id: 3, pizza_id: 3)
Assigment.create(menu_id: 3, pizza_id: 4)

Assigment.create(menu_id: 4, pizza_id: 2)
Assigment.create(menu_id: 4, pizza_id: 3)
Assigment.create(menu_id: 4, pizza_id: 4)

User.create(email: "don@sicilia.it", password: "sleepwiththefishes", admin: true)