class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :descricao
      t.string :finalizado
      t.string :aprovado
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
