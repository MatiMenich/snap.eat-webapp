class Check < ActiveRecord::Base
  belongs_to :table

  after_save :set_defaults

  private

  def set_defaults
  	self.delivered ||= false
  	self.card_payment ||= false
  end

end
