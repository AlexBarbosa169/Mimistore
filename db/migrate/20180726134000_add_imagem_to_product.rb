class AddImagemToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :imagem, :string
  end
end
