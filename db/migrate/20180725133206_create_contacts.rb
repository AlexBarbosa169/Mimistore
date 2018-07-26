class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :tipo
      t.string :valor
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
