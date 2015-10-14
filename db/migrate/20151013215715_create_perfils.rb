class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :nome
      t.string :email
      t.date :dt_nasc
      t.string :endereco
      t.string :senha

      t.timestamps null: false
    end
  end
end
