class Order < ActiveRecord::Base
	belongs_to :table
	belongs_to :product

	before_create :generate_unique_token

	private
	def generate_unique_token
		begin 
			self.token = SecureRandom.urlsafe_base64(3)
		end while Order.exists?(token: self.token)
	end

end
