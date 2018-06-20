class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :ingredient, foreign_key: true
      t.integer :value

      t.timestamps
    end
    create_table :ingredients_recipes, id: false do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :recipe, index: true
    end
  end
end
