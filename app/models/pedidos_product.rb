class PedidosProduct < ApplicationRecord
  belongs_to :pedido
  belongs_to :product
end
