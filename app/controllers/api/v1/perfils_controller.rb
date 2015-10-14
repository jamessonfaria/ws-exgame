class Api::V1::PerfilsController < Api::V1::BaseController

    def index
            perfs = Perfil.all
            respond_with  perfs
    end

    def create
            perfil = Perfil.create(params[:perfil])

            if perfil.valid?
                respond_with(perfil, :location => api_v1_perfils_path(perfil))
            else
                respond_with(perfil)
            end
    end

    def update
            perfil = Perfil.find(params[:id])
            puts {perfil}

            perfil = Perfil.update(params[:perfil])
            if perfil.valid?
                    respond_with(perfil, :location => api_v1_perfil_path(perfil))
            else
                    respond_with(perfil)
            end
    end

end

