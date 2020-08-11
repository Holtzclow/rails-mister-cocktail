require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialize = open(url).read
ingredients = JSON.parse(ingredients_serialize)

ingredients["drinks"].each do |ingredient| 
  Ingredient.create(name: ingredient["strIngredient1"])
end
