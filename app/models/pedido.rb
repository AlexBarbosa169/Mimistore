class Pedido < ApplicationRecord
  belongs_to :client
  has_many :pedidos_product
  has_many :products, through: :pedidos_product
end
