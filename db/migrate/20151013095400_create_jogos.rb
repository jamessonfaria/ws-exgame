class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.string :descricao
      t.string :foto
      t.string :console

      t.timestamps null: false
    end
  end
end
