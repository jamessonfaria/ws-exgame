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
        jogoPerfils = JogoPerfil.where(:jogo_id => params[:id].to_i)
        arrUsuarios = []

        jogoPerfils.each do |jogoPerfil|
            usuario = Perfil.where(:id => jogoPerfil.perfil_id).last
            arrUsuarios << {:jogo_perfil_id => jogoPerfil.id, :usuario_id => jogoPerfil.perfil_id, :nome => usuario.nome, :cidade => usuario.cidade, :estado => usuario.estado}
        end

        render :json => arrUsuarios.as_json
    end

    def busca_jogos_por_usuario
        jogoPerfils = JogoPerfil.where(:perfil_id => params[:id].to_i)
        arrJogos = []

        jogoPerfils.each do |jogoPerfil|
            jogo = Jogo.where(:id => jogoPerfil.jogo_id).last
            arrJogos << {:jogo_perfil_id => jogoPerfil.id, :jogo_id => jogoPerfil.jogo_id, :descricao => jogo.descricao, :console => jogo.console, :foto => jogo.foto}
        end

        render :json => arrJogos.as_json
    end

    private

    def set_jogoperfil
        @jogoPerfil = JogoPerfil.find(params[:id])
    end


end