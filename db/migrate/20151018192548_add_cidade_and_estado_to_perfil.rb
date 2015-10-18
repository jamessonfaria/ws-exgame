class AddCidadeAndEstadoToPerfil < ActiveRecord::Migration
  def change
    add_column :perfils, :cidade, :string
    add_column :perfils, :estado, :string
  end
end
