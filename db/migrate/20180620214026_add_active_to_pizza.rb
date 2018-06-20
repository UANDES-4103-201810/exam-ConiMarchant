class AddActiveToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :active, :boolean
  end
end
