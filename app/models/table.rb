class Table < ActiveRecord::Base

	before_create :generate_unique_uid

	private
	def generate_unique_uid
		begin 
			self.uid = SecureRandom.urlsafe_base64(6)
		end while Table.exists?(uid: self.uid)
	end

end
