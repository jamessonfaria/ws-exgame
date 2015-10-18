class Api::V1::JogoPerfilsController < Api::V1::BaseController

    def index
        jogoPerfil = JogoPerfil.all
        respond_with jogoPerfil
    end

    def create
        jogoPerfil = JogoPerfil.create(params[:jogo_perfil])

        if jogoPerfil.valid?
            respond_with(jogoPerfil, :location => api_v1_jogo_perfils_path(jogoPerfil))
        else
            respond_with(jogoPerfil)
        end
    end

    def show
        set_jogoperfil
        respond_with @jogoPerfil
    end

    def destroy
        set_jogoperfil
        @jogoPerfil.destroy
        respond_with "Item excluido com sucesso !!!"
    end

    def busca_usuarios_por_jogo
        jogos = JogoPerfil.where(:jogo_id => params[:id].to_i)
        arrUsuarios = []

        jogos.each do |jogo|
            usuario = Perfil.where(:id => jogo.perfil_id)
            arrUsuarios << {:jogo_perfil_id => jogo.id, :usuario => usuario}
        end

        render :json => arrUsuarios.as_json
    end

    private

    def set_jogoperfil
        @jogoPerfil = JogoPerfil.find(params[:id])
    end


end