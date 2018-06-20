class AddUnitPriceToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :unitprice, :integer
  end
end
