class HomeController < ApplicationController
	def index
		@products = Product.all
		@product_picker = Product.where.not(id: nil).sample(3)
		@animals = Product.uniq.pluck(:animal)
		@categories = Product.uniq.pluck(:category)
		@users = User.all		
	end

end
