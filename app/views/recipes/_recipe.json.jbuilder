json.extract! recipe, :id, :ingredient_id, :value, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
