module ProductsHelper

	def generate_options
		
		set_categories

		Product.all.each do |p|
			@categories[p.category].push([ p.name+" - $"+p.price.to_i.to_s, p.id ])
		end

		return @categories

	end

	private

	def set_categories
		@categories = Hash.new 
		Product.uniq.pluck(:category).each do |c|
			@categories[c] = []
		end
	end

end