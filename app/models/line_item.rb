class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  validates :product_id, presence: true
  validates :cart_id, presence: true, on: :create


  def total_price
    product.price * quantity
  end
end