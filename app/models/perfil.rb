class Perfil < ActiveRecord::Base
    has_and_belongs_to_many :jogo_perfils
end
