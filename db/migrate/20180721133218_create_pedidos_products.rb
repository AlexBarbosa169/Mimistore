class CreatePedidosProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos_products do |t|
      t.references :pedido, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
