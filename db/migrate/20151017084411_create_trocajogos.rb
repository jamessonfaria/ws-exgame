class CreateTrocajogos < ActiveRecord::Migration
  def change
    create_table :trocajogos do |t|
      t.integer :jogo_perfil_id
      t.integer :propostajogo_id
      t.integer :avaliacao
      t.date :dt_troca
      t.boolean :finalizado

      t.timestamps null: false
    end
  end
end
