class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :nome
      t.string :descricao
      t.float :valor
      t.integer :quantidade

      t.timestamps
    end
  end
end
