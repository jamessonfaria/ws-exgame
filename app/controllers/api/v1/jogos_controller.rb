class Api::V1::JogosController < Api::V1::BaseController

    def index
        jogos = Jogo.all
        respond_with jogos
    end

end

