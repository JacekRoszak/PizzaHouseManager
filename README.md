# README

PizzahouseManager is an application for managing a network of pizzahouses and it's menus. It's writen in Ruby on Rails. 
I've used Devise gem for Users and Cancancan gem for loading and authorization of resource. I use Slim for making the code easier to read.

There is an example data prepare in db/seeds.rb which you can use. 
It will also create an admin user with login 'don@sicilia.it' and password 'sleepwiththefishes'. 

Without using seeds, you will have to add admin user to manage pizzahouses via console. 
User.create(email: 'LOGIN', password: 'PASSWORD', admin: true)

You can add pizzahouses and edit them. Name of a Pizzahouse has to be unique. 
You can add menus and assign them to one or more pizzahaouses. Menus are created and manageg separetly from pizzahouses. 
You can albo create a recipies for pizzas.

App writen on 29.10.2020 by Jacek Roszak.