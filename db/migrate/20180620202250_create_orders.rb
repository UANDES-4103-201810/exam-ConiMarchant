class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :pizza, foreign_key: true
      t.string :address
      t.string :payment_method
      t.integer :phone

      t.timestamps
    end
  end
end
