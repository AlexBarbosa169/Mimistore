class HomeController < ApplicationController  
  	def teste
		"Isso é um teste"
	end

	def index
		@products = Product.page(params[:page]).per(3)
	end
end
