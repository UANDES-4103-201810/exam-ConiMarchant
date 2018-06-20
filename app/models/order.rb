class Order < ApplicationRecord
  validates :pizza, presence: true
  validates :address, presence: true
  validates :payment_method, presence: true
  validates :phone, numericality:{only_integer: true}
  has_many :pizza
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status

  private
  def set_order_status
    self.order_status_id = 1
  end
end
