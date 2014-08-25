class Order < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :token, use: :slugged
	belongs_to :table

	acts_as_shopping_cart_using :shopping_cart_item

	def tax_pct
		0
	end

	before_create :generate_unique_token

	private
	def generate_unique_token
		begin 
			self.token = SecureRandom.urlsafe_base64(3)
			self.slug = self.token
		end while Order.exists?(token: self.token)
	end



end
