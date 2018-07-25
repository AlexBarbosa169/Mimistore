class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :rua
      t.string :cidade
      t.string :bairro
      t.string :estado
      t.string :cep
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
