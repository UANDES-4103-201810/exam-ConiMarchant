# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all
ingredient_1 = Ingredient.create(name:'Mozzarella')
ingredient_2 = Ingredient.create(name:'Tomato')
ingredient_3 = Ingredient.create(name:'Pepperoni')
ingredient_4 = Ingredient.create(name:'Olives')
ingredient_5 = Ingredient.create(name:'Onions')
ingredient_6 = Ingredient.create(name:'Artichokes')
ingredient_7 = Ingredient.create(name:'Mushrooms')
ingredient_8 = Ingredient.create(name:'Ham')
ingredient_9 = Ingredient.create(name:'Shrimp')

Crust.delete_all
crust_1 = Crust.create(typecrust:'Regular', value:100)
crust_2 = Crust.create(typecrust:'Thin', value:80)

Recipe.delete_all
queso = Recipe.create!(value:50)
peppe = Recipe.create!(value:75)
heaven = Recipe.create!(value:100)
hell = Recipe.create!(value:75)
hipster = Recipe.create!(value:75)

queso.ingredients<<ingredient_1
peppe.ingredients<<ingredient_1<<ingredient_3
heaven.ingredients<<ingredient_1<<ingredient_2<<ingredient_8<<ingredient_7
hell.ingredients<<ingredient_1<<ingredient_4<<ingredient_6
hipster.ingredients<<ingredient_1<<ingredient_5<<ingredient_9

Pizza.delete_all
pizza_1 = Pizza.create(crust:crust_1, recipe_id:queso.id, active: true)
pizza_2 = Pizza.create(crust:crust_2, recipe_id:queso.id, active: true)
pizza_3 = Pizza.create(crust:crust_1, recipe_id:peppe.id, active: true)
pizza_4 = Pizza.create(crust:crust_2, recipe_id:peppe.id, active: true)
pizza_5 = Pizza.create(crust:crust_1, recipe_id:heaven.id, active: true)
pizza_6 = Pizza.create(crust:crust_2, recipe_id:heaven.id, active: true)
pizza_7 = Pizza.create(crust:crust_1, recipe_id:hell.id, active: true)
pizza_8 = Pizza.create(crust:crust_2, recipe_id:hell.id, active: true)
pizza_9 = Pizza.create(crust:crust_1, recipe_id:hipster.id, active: true)
pizza_10 = Pizza.create(crust:crust_2, recipe_id:hipster.id, active: true)

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Delivered"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"