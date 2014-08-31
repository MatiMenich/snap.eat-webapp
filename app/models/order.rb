class Order < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :token, use: :slugged
	belongs_to :table
	has_many :line_items, dependent: :destroy

	validates :table_id, presence: true

	before_create :generate_unique_token

	def add_line_items_from_cart(cart)
	    cart.line_items.each do |item|
	      item.cart_id = nil
	      line_items << item
	    end
  	end

  	def total_price
		line_items.to_a.sum { |item| item.total_price }
	end

	private

	def generate_unique_token
		begin 
			self.token = SecureRandom.urlsafe_base64(3)
			self.slug = self.token
		end while Order.exists?(token: self.token)
	end



end
