class AddTotalpriceToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :totalprice, :integer
  end
end
