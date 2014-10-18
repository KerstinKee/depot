class CombineItemsInCart < ActiveRecord::Migration
  def change
  end
end


def up
  #replace multiple items for a single product in a cart with a single items
  Cart.all.each do |cart|
    #count the number of each product in the cart
    sums = cart.line_items.group(:product_id).sum(:quantity)

    sums.each do |product_id, quantity|
      if quantity > 1
        #remove individul items
        cart.line_items.where(product_id: product_id).delete_all

        #replace with a single items
        item = cart.line_items.build(product_id: product_id)
        items.quantity = quantity
        item.save!
      end
    end
  end
end
