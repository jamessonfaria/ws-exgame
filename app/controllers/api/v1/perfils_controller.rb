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
            set_perfil
            @perfil.update(params[:perfil])
            if @perfil.valid?
                   # respond_with(@perfil, :location => api_v1_perfils_path(@perfil))
                    render :json => @perfil.as_json
            else
                    respond_with(@perfil)
            end
    end

    def show
            set_perfil
            respond_with @perfil
    end

    private

    def set_perfil
        @perfil = Perfil.find(params[:id])
    end

end

