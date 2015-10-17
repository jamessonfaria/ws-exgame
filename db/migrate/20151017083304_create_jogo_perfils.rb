class CreateJogoPerfils < ActiveRecord::Migration
  def change
    create_table :jogo_perfils do |t|
      t.integer :jogo_id
      t.integer :perfil_id

      t.timestamps null: false
    end
  end
end
