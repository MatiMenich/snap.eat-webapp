class Order < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :token, use: :slugged
	belongs_to :table
	belongs_to :product

	validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

	validates :product_id, presence: true

	before_create :generate_unique_token

	private
	def generate_unique_token
		begin 
			self.token = SecureRandom.urlsafe_base64(3)
			self.slug = self.token
		end while Order.exists?(token: self.token)
	end



end
