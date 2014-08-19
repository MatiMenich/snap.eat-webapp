class Table < ActiveRecord::Base

	before_create :generate_unique_uid

	has_many :orders
	has_many :checks
	
	private
	def generate_unique_uid
		begin 
			self.uid = SecureRandom.urlsafe_base64(6)
		end while Table.exists?(uid: self.uid)
	end

end
