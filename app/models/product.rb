class Product < ActiveRecord::Base

	has_many :line_items
    has_many :orders, through: :line_items

    before_destroy :ensure_not_referenced_by_any_line_item

	validates :name, presence: true
	validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :category, presence: true
	
	private
	
	# ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
    
end
