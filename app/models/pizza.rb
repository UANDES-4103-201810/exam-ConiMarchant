class Pizza < ApplicationRecord
  has_one :crust
  has_one :recipe
  has_many :order_items

  default_scope { where(active: true) }
end
