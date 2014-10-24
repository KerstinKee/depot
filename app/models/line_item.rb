class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  validates :product_id, presence: true
  validates :cart_id

   def total_price
    line_items.to_a.each(&:total_price).sum
end
end
