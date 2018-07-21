class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
