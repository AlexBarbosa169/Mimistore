class Product < ApplicationRecord
	has_many :pedidos_product
  	has_many :pedidos, through: :pedidos_products

  	#accepts_nested_attributes_for :produtos
end
