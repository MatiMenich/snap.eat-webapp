class ShoppingCartItem < ActiveRecord::Base
  acts_as_shopping_cart_item_for :order
end
