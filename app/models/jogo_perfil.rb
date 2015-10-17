class JogoPerfil < ActiveRecord::Base
    has_many :jogos
    has_many :perfils
    belongs_to :trocajogo
    belongs_to :propostajogo
end
