class Api::V1::JogosController < Api::V1::BaseController

    def index
        jogos = Jogo.all
        respond_with jogos
    end

    def show
        jogo = Jogo.find(params[:id])
        respond_with jogo
    end

end

